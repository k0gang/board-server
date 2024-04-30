package boardServer.user;

public class UserRequestDto {
	
	private String id;
	private String password;
	private String email;
	private String name;
	private String birth;
	private String gender;
	private String country;
	private String telecom;
	private String phone;
	private boolean agree;
	
	public UserRequestDto() {
		
	}
	
	public UserRequestDto(String id, String password, String name, String birth, String gender, String country,
			String telecom, String phone, String agree) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.birth = birth;
		this.gender = gender;
		this.country = country;
		this.telecom = telecom;
		this.phone = phone;
		this.agree = agree.equals("on") ? true : false;
	}
	public UserRequestDto(String id, String password, String email, String name, String birth, String gender,
			String country, String telecom, String phone, String agree) {
		super();
		this.id = id;
		this.password = password;
		this.email = email;
		this.name = name;
		this.birth = birth;
		this.gender = gender;
		this.country = country;
		this.telecom = telecom;
		this.phone = phone;
		this.agree = agree.equals("on") ? true : false;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getTelecom() {
		return telecom;
	}
	public void setTelecom(String telecom) {
		this.telecom = telecom;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public boolean isAgree() {
		return agree;
	}
	public void setAgree(boolean agree) {
		this.agree = agree;
	}
	
	
}
