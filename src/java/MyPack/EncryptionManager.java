package MyPack;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Pawan acer
 */
public class EncryptionManager {
    public String EncryptData(String PlainText)
    {
        String EncryptCode="";
        char ch;
        for(int i=0;i<PlainText.length();i++)
        {
           int ASCIIValue=PlainText.charAt(i);
           if(ASCIIValue>=65&&ASCIIValue<=90)
           {
               ASCIIValue=65-ASCIIValue+122;
           }
           else if(ASCIIValue>=97&&ASCIIValue<=122)
           {
               ASCIIValue=97-ASCIIValue+90;
           }
           else if(ASCIIValue>=48&&ASCIIValue<=57)
           {
               ASCIIValue=48-ASCIIValue+57;
           }
           ch=(char)ASCIIValue;
           EncryptCode=EncryptCode+ch;
        }
        return EncryptCode;
    }
}
