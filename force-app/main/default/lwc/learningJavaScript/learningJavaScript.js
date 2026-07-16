import { LightningElement } from 'lwc';

import setAndMap from './SetAndMap';

export default class LearningJavaScript extends LightningElement {

    constructor() {
        console.log('Learning JavaScript');
        super();

        let setOfUsersNames = new Set(); // let is blocked scoped variable, can be reassigned

        // ADDING VALUES TO THE SET USING ADD() METHOD
        setOfUsersNames.add('John Doe');
        setOfUsersNames.add('Jane Smith');
        setOfUsersNames.add('Alice Johnson');
        setOfUsersNames.add('Bob Brown');
        setOfUsersNames.add('Charlie Davis');
    }
    connectedCallback() {

        let userInfoMap = new Map(); // let is blocked scoped variable, can be reassigned
        // user set() methods to push the data in to the map
        userInfoMap.set('name', 'John Doe');
        userInfoMap.set('age', 30);
        userInfoMap.set('email', 'vikaskare7777@gmail.com');
        userInfoMap.set('address', '123 Main St, Anytown, USA');
        userInfoMap.set('phone', '555-1234');
        const userInfoObject = Object.fromEntries(userInfoMap); // const is blocked scoped variable, cannot be reassigned
        const UserCountry = 'USA'; // const is blocked scoped variable, cannot be reassigned
        userInfoMap.set('country', UserCountry);
        userInfoMap.set('isActive', true);
        userInfoMap.set('lastLogin', new Date());
        userInfoMap.set('roles', ['admin', 'user']);
        userInfoMap.set('preferences', { theme: 'dark', language: 'en' });
        userInfoMap.delete('age');

        // TO CHECK IF A KEY EXISTS IN THE MAP-- HAS METHOD
        const hasEmail = userInfoMap.has('email');

         // TO CLEAR ALL THE VALUES OF THE A MAP
        // userInfoMap.clear();

        // to get the keys of the map which return the iterable object of the keys in the map
        const keys = userInfoMap.keys();

        for(const key of keys) {
            console.log(key);
        }

        // to get the values of the map whic return the iterable object of the values in the map
        const values = userInfoMap.values();

        for(const value of values) {
            console.log(value);
        }

        // TO GET HE ALL KEYS AND VALUES FROM THE MAP USER ENTRIES() METHOD
        const entries = userInfoMap.entries();

        for(const [key, value] of entries) {
            console.log(`${key}: ${value}`);
        }

        let setOfUsersNames = new Set(); // let is blocked scoped variable, can be reassigned

        // ADDING VALUES TO THE SET USING ADD() METHOD
        setOfUsersNames.add('John Doe');
        setOfUsersNames.add('Jane Smith');
        setOfUsersNames.add('Alice Johnson');
        setOfUsersNames.add('Bob Brown');
        setOfUsersNames.add('Charlie Davis');

        // TO CHECK IF A VALUE EXISTS IN THE SET-- HAS METHOD
        const hasUser = setOfUsersNames.has('Alice Johnson');

        // TO CLEAR ALL THE VALUES OF THE A SET
        // var clearSet = setOfUsersNames.clear();

        // TO DELETE THE SPECIFIC VALUE FROM THE SET USING DELETE() METHOD
        setOfUsersNames.delete('Bob Brown');

        // to get the values of the users fro m the set 
        setOfUsersNames.values();

        for(const value of setOfUsersNames) {
            console.log(value);
        }

        // COMPARISON BETWEEN DIFFRERT TYPES WITH == AND === OPERATORS

        let num = 5;
        let str = '5';
        
        console.log(num == str); // true, because == performs values check not type check
        console.log(num === str); // false, because === performs both values and type check
        Object.is(1, '1'); // this methods works like === operator, it checks both values and type of the variables

        let normal = 'Vikas Laxman Kare';
        let objectString = new String('Vikas Laxman Kare');
        normal.slice(0, 5); // this method works on normal string and returns the sliced string

        normal.slice(-10, -5); // this method works on normal string and returns the sliced string
        objectString.slice(0, 5); // this method works on object string and returns the sliced string

        const lengthOfNormalString = normal.length;
        console.log(lengthOfNormalString); 

        const lengthOfObjectString = objectString.length;
        console.log(lengthOfObjectString); 

        // replace methods
        const afterReplaceString = normal.replace('Laxman', 'Mandakini');
        console.log(afterReplaceString);

        normal = normal.replace('Laxman', 'Mandakini'); 
        console.log(normal);

        // for ignoring the case then we user /STRING/i
        const afterReplaceStringIgnoreCase = normal.replace(/mandakini/i, 'Laxman');
        console.log(afterReplaceStringIgnoreCase);

        // to reaplace at every location
        const afterReplaceStringAtEveryLocation = normal.replace(/mandakini/gi, 'Laxman');
        console.log(afterReplaceStringAtEveryLocation);

        const upperCaseString = normal.toUpperCase();
        console.log('upperCaseString ' + upperCaseString);

        const lowerCaseString = normal.toLowerCase();
        console.log('lowerCaseString ' + lowerCaseString);

        const trimmedString = normal.trim();
        console.log('trimmedString ' + trimmedString);

        const splitString = normal.split(' '); // THIS WILL SPLIT THE STRING BY SPACE AND RETURN THE ARRAY OF STRINGS
        console.log('splitString ' + splitString); 

        const charAtIndex = normal.charAt(5); // WILL RETRUN THE CHRACTER AT INDEX IN THE STRING
        console.log('charAtIndex ' + charAtIndex);

        const indexOfChar = normal.indexOf('Laxman'); // THIS WILL RETURN THE INDEX OF THE  CHRACTER / SUBSTRING STRING IN THE STRING
        console.log('indexOfChar ' + indexOfChar);

        const lastIndexOfChar = normal.lastIndexOf('a'); // THIS WILL RETURN THE LAST INDEX OF THE CHARACHTER IN THE STRING 
        console.log('lastIndexOfChar ' + lastIndexOfChar);

        const includesChar = normal.includes('Mandakini'); // RETURN TRUE IF THE STRING INCLUDES THE SUBSTRING OR CHARACTER ELSE RETURN FALSE
        console.log('includesChar ' + includesChar);

        const startsWithChar = normal.startsWith('Vikas'); // RETURN TRUE IF THE STRING STARTS WITH THE GIVEN SUBSTRING ELSE RETURN FALSE
        console.log('startsWithChar ' + startsWithChar);

        const endsWithChar = normal.endsWith('Kare'); // RETURN TRUE IF THE STRING ENDS WITH THE GIVEN SUBSTRING ELSE RETURN FALSE
        console.log('endsWithChar ' + endsWithChar);

        const creditCardNumber = '1234-5678-9012-3456';
        const lastFourNumbers = creditCardNumber.slice(-4);
        const paddedCreditCardnumber = lastFourNumbers.padStart(creditCardNumber.length, '*');

        // PUNCTUATION MARKS IN THE STRING
        const stringWithPunctuation = "Hello, world! How's it going?";
        // const stringWithoutPunctuation = stringWithPunctuation.replace(/[.,\/#!$%\^&\*;:{}=\-_`~()]/g,"");

        const ageOfVikas = 30;
        let stringDemo = `My name is Vikas Laxman Kare and I am ${ageOfVikas} years old.`;
        console.log('stringDemo ' + stringDemo);

        let Vikaskareinfo = {
            name: 'Vikas Laxman Kare',
            age: 30,
            email: 'vikas.laxman.kare@example.com'
        };
    }

    onclickofbutton1() {

        console.log('onclickofbutton1 called');
    }
}