package com.skyhorse.scs.Service;

import java.util.List;

import com.skyhorse.scs.Bean.AdminBean;

public interface MainService {
	
	public List<AdminBean> loginVerify(String uname);
}
