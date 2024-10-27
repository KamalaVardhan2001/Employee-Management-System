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
public class Finance_details {

	@Id
	private int id;
	private String pan_card;
	private String aadhar_card;
	private String bank_name;
	private String branch_name;
	private String ifsc_code;
	private double ctc_breakup;
}
