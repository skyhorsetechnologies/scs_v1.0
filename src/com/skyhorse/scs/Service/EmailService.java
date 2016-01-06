package com.skyhorse.scs.Service;

public interface EmailService {

	public void springToSendEmail(String toAddress, String fromAddress, String subject, String msgBody);
	
	
}
