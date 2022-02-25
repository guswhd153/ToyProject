package model1;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberTO {
	public String user_id;
	public String user_pw;
	public String name;
	public String position;
	public String org_name;
	public String email;
	public String user_auth;
	public String reg_date;
	public String edit_date;
}
