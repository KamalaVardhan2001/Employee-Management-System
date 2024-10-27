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
public class empprofessionaldetails {
		@Id
	    private int employment_code;
	    private String company_mail;
	    private String office_phone;
	    private String city;
	    private String office_address;
	    private String reporting_manager_mail;
	    private String hr_name;
	    private String employment_history;
	    private String date_of_joining;

}
