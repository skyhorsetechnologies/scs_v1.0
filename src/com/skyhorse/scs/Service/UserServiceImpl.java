package com.skyhorse.scs.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skyhorse.scs.DAO.DaoService;



@Service
public class UserServiceImpl implements UserService {
	@Autowired
	DaoService daoS;
	@Override
	public String insertData(String UserID, String Uname,
			String password, String UserEmail, String phone, String Address,
			String SecQue, String SecAns, String UserRole) {
		// TODO Auto-generated method stub
		
		return daoS.insertData(UserID, Uname, password, UserEmail, phone, Address, SecQue, SecAns, UserRole);
		
			
	}
	@Override
	public void updatePassword(String UserId, String oldPassword,
			String newPassword) {
		// TODO Auto-generated method stub
		
		daoS.updatePassword(UserId, oldPassword, newPassword);
		
	}

	
}
