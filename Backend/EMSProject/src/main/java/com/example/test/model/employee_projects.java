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
public class employee_projects {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int project_id;
	private String project_code;
	private String start_date;
	private String end_date;
	private String client_or_project_name;
	private String reporting_manager_code;
	private int employee_id;

}
