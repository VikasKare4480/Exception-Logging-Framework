/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-20-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class ReverseString {
    
    private static String reverseStringFromString(String stringToReverse) {

        String  reversedString = '';
        for(Integer i = stringToReverse.length() - 1; i >= 0; i--) {   
            reversedString += stringToReverse.subString(i, i + 1);
        }
        return reversedString;
    }
}