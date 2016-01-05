package com.skyhorse.scs.controller;

import java.util.List;

import javax.validation.Valid;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.skyhorse.scs.Bean.AdminBean;
import com.skyhorse.scs.Logging.Logging;
import com.skyhorse.scs.Service.MainService;

@Controller
public class MainController {
	@Autowired
	MainService ms;
	
	Logger log = Logger.getLogger(MainController.class);
	private String host="smtp.gmail.com";
	private String port="587";
	private String user="skyhorsetechnologies@gmail.com";
	private String pass="MecFriends2016";
	@RequestMapping("/Mainpage")
    public ModelAndView ScsMainpage(@ModelAttribute("admin") AdminBean adm) {
     	
		Logging.info(log, "****Initial Log check****");
		
		System.out.println("entering..");
        return new ModelAndView("home");
    }
	
	@RequestMapping(value="/scsMain",method=RequestMethod.POST)
    public ModelAndView ScsLoginMain(@ModelAttribute("admin") @Valid AdminBean adm,BindingResult result) {
     	         
		if (result.hasErrors()) {
			 System.out.println("error occurred...");		   
			 
			 return new ModelAndView("home");
		 
		} 
		else 
		{
		String UserPassword=adm.getPsswd().trim().toString();
		System.out.println("Entered password:"+UserPassword);
		System.out.println("USERNAME:"+adm.getUname()+" PASSWORD:"+adm.getPsswd());
		
		List<AdminBean> pwdList=ms.loginVerify(adm.getUname().toString());
		
		
		for(int i=0;i<pwdList.size();i++)
		{
			if (UserPassword.equals(pwdList.get(i).getPsswd().toString().trim()))
			{
				System.out.println("Password Matches...");
				System.out.println("PASSWORD IS "+pwdList.get(i).getPsswd());
				
				return new ModelAndView("EmailForm");
			}
			else{
				
				System.out.println("Password not Matches...");
				System.out.println("PASSWORD IS "+pwdList.get(i).getPsswd());
				 return new ModelAndView("error");
			
			}
			
		}
		
		}
		return new ModelAndView("home");
		      
    }
	
	@RequestMapping("/EmailSend")
    public ModelAndView ScsEmailpage() {
	
		
		
		String resultMessage;
		try {
			String recipient="mpremkumardpk@gmail.com";
			String subject="SCS EMAIL";
			String content="WELCOME TO SCS";
			com.skyhorse.scs.Email.EmailUtility.sendEmail(host, port, user, pass, recipient, subject,content);
			resultMessage = "The e-mail was sent successfully";
		} catch (Exception ex) {
			ex.printStackTrace();
			resultMessage = "There were an error: " + ex.getMessage();
		} 
		
		
		
		
		
		
		
		Logging.info(log, "****Email Check****");
		return new ModelAndView("Result","Message", resultMessage); 
	}
}
