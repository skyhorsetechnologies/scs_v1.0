package com.skyhorse.scs.DAO;

import java.util.List;

import com.skyhorse.scs.Bean.AdminBean;



public interface DaoService 
{
    public List<AdminBean> loginVerify(String uname);
}
