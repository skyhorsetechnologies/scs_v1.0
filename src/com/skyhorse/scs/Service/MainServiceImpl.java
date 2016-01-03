package com.skyhorse.scs.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skyhorse.scs.Bean.AdminBean;
import com.skyhorse.scs.DAO.DaoService;
@Service
public class MainServiceImpl implements MainService{

	//Tells the application context to inject an instance of DaoService here
	@Autowired
	DaoService daoS;
	
	@Override
	public List<AdminBean> loginVerify(String uname) {
		System.out.println("MainService Entering...");
		return daoS.loginVerify(uname);
	}

}
