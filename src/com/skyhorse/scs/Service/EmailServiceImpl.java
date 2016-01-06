package com.skyhorse.scs.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

@Service
public class EmailServiceImpl implements EmailService {

	@Autowired
	private MailSender Springmail;
	
	@Override
	public void springToSendEmail(String toAddress, String fromAddress,String subject, String msgBody) {
		
		SimpleMailMessage Msg = new SimpleMailMessage();
		Msg.setFrom(fromAddress);
		Msg.setTo(toAddress);
		Msg.setSubject(subject);
		Msg.setText(msgBody);
		Springmail.send(Msg);		
		
	}

}
