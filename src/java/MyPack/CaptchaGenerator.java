package MyPack;

import java.util.Random;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author user
 */
public class CaptchaGenerator {
    
    private int getRandomCode(int min,int max)
    {
    Random rm=new Random();
   int n= rm.nextInt((max-min)+1)+min;
   return n;
   
    }
    public String GetCaptchaCode()
    {
    String code="";
    try
    {
    code+=(char)getRandomCode(65,90);
    code+=(char)getRandomCode(75,85);
    code+=(char)getRandomCode(97,122);
    code+=(char)getRandomCode(100,115);
    code+=(char)getRandomCode(65,80);
    code+=(char)getRandomCode(35,38);
    return code;
    
    
    }
    catch(Exception ex)
    {
     return code;   
    }
    }
}
