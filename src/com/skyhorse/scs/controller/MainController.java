package com.skyhorse.scs.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;








import org.apache.commons.lang.RandomStringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.servlet.ModelAndView;





import com.skyhorse.scs.Bean.AdminBean;
import com.skyhorse.scs.Bean.RegisterBean;
import com.skyhorse.scs.Logging.Logging;
import com.skyhorse.scs.Service.EmailService;
import com.skyhorse.scs.Service.MainService;
import com.skyhorse.scs.Service.UserService;

@Controller
public class MainController {
	@Autowired
	MainService ms;
	
	@Autowired
	EmailService es;
	
	@Autowired
	UserService us;
	
	Logger log = Logger.getLogger(MainController.class);
	
	@RequestMapping("/Mainpage")
    public ModelAndView ScsMainpage(@ModelAttribute("admin") AdminBean adm) {
     	
		Logging.info(log, "****Initial Log check****");
		
		System.out.println("entering..");
        return new ModelAndView("home");
    }
	
	@RequestMapping(value="/scsMain",method=RequestMethod.POST)
    public ModelAndView ScsLoginMain(@ModelAttribute("admin") @Valid AdminBean adm,BindingResult result,@ModelAttribute("RegisterData") RegisterBean usr) {
     	         
		if (result.hasErrors()) 
		{
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
				
				return new ModelAndView("RegisterUser");
			}
			else{
				
				System.out.println("Password not Matches...");
				System.out.println("PASSWORD IS "+pwdList.get(i).getPsswd());
				return new ModelAndView("error");
			
			}
			
		}
		 return new ModelAndView("home");
		}
		
		      
    }
	/**********************************************************************/
	@RequestMapping(value="/RegisterSubmit",method=RequestMethod.POST)
    public ModelAndView RegisterSubmit(@ModelAttribute("RegisterData") RegisterBean reg) {
	    
		ArrayList<String> arr=new ArrayList<String>();
		
		String UNAME=reg.getUNAME().toString();
		String NUM=RandomStringUtils.randomNumeric(3);
		String randomUID=UNAME+NUM;
		String randomPassword=RandomStringUtils.randomAlphanumeric(4).toUpperCase().trim().toString();
		randomPassword=randomPassword+NUM;
		
		randomUID=randomUID.replaceAll("\\s","");
		
		reg.setPSSWD(randomPassword);
		reg.setUserID(randomUID);
		
		String EMAIL=reg.getEmail().toString();
		String Phone=reg.getPhone().toString();
		String Address=reg.getAddress().toString();
		String Sec_que=reg.getSec_que().toString();
		String Sec_ans=reg.getSec_ans().toString();
		String user_role=reg.getRole().toString();
		
		
		Logging.info(log, randomUID);
		Logging.info(log, randomPassword);
		arr.add(randomUID);
		arr.add(UNAME);
		arr.add(randomPassword);		
		arr.add(EMAIL);
		arr.add(Phone);
		arr.add(Address);
		arr.add(Sec_que);
		arr.add(Sec_ans);
		arr.add(user_role);
		
				
		String toAddr = EMAIL.toString().trim();
		String fromAddr = "skyhorsetechnologies@gmail.com";
 
		// email subject
		String subject = "Smart Clinic System(SCS)-Registration";
 
		// email body
		String body = " Welcome to SCS "+reg.getUNAME().toString().toUpperCase()+"....\n\n Your unique user id is -> "+randomUID+" <- and random generated password is -> "+randomPassword.toString().trim()+" <-";
		
		String body_url=body+"\n\n Click the link to update password: http://localhost:2017/SCSv1.0/UpdatePassword";
		
		String body_end=body_url+"\n\n Thanks & regards,\n Skyhorsetechnologies,Tindivanam";
		
		String status= us.insertData(randomUID, UNAME, randomPassword, EMAIL, Phone, Address, Sec_que, Sec_ans, user_role);
		es.springToSendEmail(toAddr, fromAddr, subject, body_end);
		
		arr.add(status);
			
		Logging.info(log, "Inside register submit block");
		return new ModelAndView("RegisterSubmit","UDATA",arr);
	
	}
	/**********************************************************************/
	@RequestMapping(value="/UpdatePassword" , method = RequestMethod.GET)
    public ModelAndView Update(@ModelAttribute("UpdatePassword") RegisterBean regb) {
		
		Logging.info(log,"Entering redirect url...");
        return new ModelAndView("Update");
    }
	/**********************************************************************/
	@RequestMapping(value="/UpdatePasswordResults" , method = RequestMethod.POST)
    public ModelAndView UpdatePassword(@ModelAttribute("UpdatePassword") RegisterBean regb,@RequestParam(value = "newPassword") String newpass) {
				
		us.updatePassword(regb.getUserID(), regb.getPSSWD(), newpass);
		
		Logging.info(log,"Entering redirect url...");
        return new ModelAndView("UpdateSuccess");
    }

}
