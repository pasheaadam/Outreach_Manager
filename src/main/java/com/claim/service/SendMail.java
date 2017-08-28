package com.claim.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class SendMail {

	@Autowired
	private JavaMailSender emailSender;

	public void sendMail(String toEmail, String message, String subject ){
		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(toEmail);
		email.setSubject(subject);
		email.setText(message);
		emailSender.send(email);
	}
}
