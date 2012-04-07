package com.eminem.bean;

import java.io.Serializable;
import java.sql.Date;

/**
 *Bean for save the user
 * 
 * @author IanLi
 */
@SuppressWarnings("serial")
public class User implements Serializable{

    private String pre_password;
    
    private Integer id;
    private String name;
    private String password;
    private String e_mail;
    private String role;
    private String report_to;
    private Date regDate;
    
    
    public String getPre_password() {
        return pre_password;
    }

    
    public void setPre_password(String pre_password) {
        this.pre_password = pre_password;
    }

    
    public Integer getId() {
        return id;
    }

    
    public void setId(Integer id) {
        this.id = id;
    }

    
    public String getName() {
        return name;
    }

    
    public void setName(String name) {
        this.name = name;
    }

    
    public String getPassword() {
        return password;
    }

    
    public void setPassword(String password) {
        this.password = password;
    }

    
    public String getE_mail() {
        return e_mail;
    }

    
    public void setE_mail(String e_mail) {
        this.e_mail = e_mail;
    }

    
    public String getRole() {
        return role;
    }

    
    public void setRole(String role) {
        this.role = role;
    }

    
    public String getReport_to() {
        return report_to;
    }

    
    public void setReport_to(String report_to) {
        this.report_to = report_to;
    }

    
    public Date getRegDate() {
		return regDate;
	}


	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}


	@Override
    public String toString()
    {
    	System.out.println(name+"  "+password+"  职位：   "+role);
        return name+"  "+password;
    }


	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((e_mail == null) ? 0 : e_mail.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result
				+ ((password == null) ? 0 : password.hashCode());
		result = prime * result
				+ ((pre_password == null) ? 0 : pre_password.hashCode());
		result = prime * result
				+ ((report_to == null) ? 0 : report_to.hashCode());
		result = prime * result + ((role == null) ? 0 : role.hashCode());
		return result;
	}


	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (e_mail == null) {
			if (other.e_mail != null)
				return false;
		} else if (!e_mail.equals(other.e_mail))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (pre_password == null) {
			if (other.pre_password != null)
				return false;
		} else if (!pre_password.equals(other.pre_password))
			return false;
		if (report_to == null) {
			if (other.report_to != null)
				return false;
		} else if (!report_to.equals(other.report_to))
			return false;
		if (role == null) {
			if (other.role != null)
				return false;
		} else if (!role.equals(other.role))
			return false;
		return true;
	}
	
	
	
}
