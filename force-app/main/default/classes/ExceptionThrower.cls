/**
 * @description       : 
 * @author            : Vikas Kare
 * @group             : 
 * @last modified on  : 06-17-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class ExceptionThrower {

    public static void throwNullPointerException() {
        try {
            Account acc;
            System.debug(acc.Name); // Throws NullPointerException
        } catch (Exception ex) {
            ExceptionLogHelper.logException(ex);
        }
    }
}