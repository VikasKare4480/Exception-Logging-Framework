/**
 * @description       : 
 * @author            : Vikas Kare
 * @group             : 
 * @last modified on  : 06-17-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class ExceptionLogHelper {
    
    public static void logException(Exception ex) {
    try {
        ExceptionLogEvent__e event = new ExceptionLogEvent__e();
        String stackTrace = ex.getStackTraceString().substringBefore('\n');
        String className = 'Unknown';
        String methodName = 'Unknown';
        if (stackTrace.contains('.')) {
            String classAndMethod = stackTrace.substringBefore(':');
            className = classAndMethod
                .substringAfter('Class.')
                .substringBefore('.');
            methodName = classAndMethod
                .substringAfter(className + '.');
        }
        event.ClassName__c = className;
        event.MethodName__c = methodName;
        event.ExceptionMessage__c = ex.getMessage();
        event.StackTrace__c = ex.getStackTraceString();
        event.UserId__c = UserInfo.getUserId();
        String transactionId = Request.getCurrent().getRequestId();
        system.debug('transactionId-> ' + transactionId);
        event.TransactionId__c = transactionId;
        // Governor Limits
        event.CPUTime__c = Limits.getCpuTime(); // CPU Time
        event.QueryLimit__c = Limits.getQueries(); // SOQL
        event.DMLStatements__c = Limits.getDMLStatements(); // DML
        publishEvent(event);
        } catch (Exception e) {
            System.debug(
                LoggingLevel.ERROR,
                'Failed to log exception: ' + e.getMessage()
            );
        }
    }

    private static void publishEvent(ExceptionLogEvent__e event) {
        try {
            Database.SaveResult result = EventBus.publish(event);
            if (!result.isSuccess()) {
                System.debug(
                    LoggingLevel.ERROR,
                    'Failed to publish event: ' + result.getErrors()[0].getMessage()
                );
            }
        } catch (Exception e) {
            System.debug(
                LoggingLevel.ERROR,
                'Failed to publish event: ' + e.getMessage()
            );
        }
    }
}