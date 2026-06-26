/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-17-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

public with sharing class CustomExceptionClass {
    public CustomExceptionClass() {

    }

    class MyException extends Exception {
        
    }

    private static void throwException() {

        throw new MyException('This is a custom exception');                               
    }
}