package com.example.test.model;



import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@Data
@NoArgsConstructor
@ToString
public class Employe {
	@Id
	private int empno;
	private String full_name;
	private String dob;
	private String gender;
	private int age;
	private String current_address;
	private String permanent_address;
	private String mob_no;
	private String personal_mail;
	private String emergency_contact_name;
	private String emergency_mobile_no;
	
	
}
