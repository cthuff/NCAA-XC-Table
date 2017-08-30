package test;
/**
 * Created: 08/22/2017
 * Updated: 08/22/2017
 * 
 *NumberReplace is being used for the NCAA-XC-Table Project in Xcode.
 *The purpose of this class is to get familiar with Regular Expressions (RegEx) 
 *Formating the times into times that cane be pasted directly into excel is the main goal. 
 *This has been proven to work without major complications for distance events thus far
 * @author Craig Huff
 *
 */
public class NumberReplace
{
    public static void main(String args[])
    {
        //Enter the time in the String str
        String str = "";
        str = str.replaceAll( "[A-Za-z()]", ""); //Takes out any names attached to the race times
        str = str.replaceAll(" -[0-9] ", ""); //Removes the inclusion of Senior-04 or JR-03
        str = str.replace(" &", "");//Removes & from race names 
        str = str.replace(" @", ""); //Removes @ from altitude converted times
        str = str.replaceAll("\\s","\n"); //Replaces all white space from the result and creates a newline for each time
        
        System.out.println(str);
    }
}
