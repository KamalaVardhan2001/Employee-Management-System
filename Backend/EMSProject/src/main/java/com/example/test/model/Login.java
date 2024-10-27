package com.example.test.model;

import jakarta.persistence.Entity;
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
public class Login {
	
	@Id
	private int id;
	private String username;
	private String password;
	private String type;
}
