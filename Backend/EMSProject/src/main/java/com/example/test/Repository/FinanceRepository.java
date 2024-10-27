package com.example.test.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.example.test.model.Finance_details;

public interface FinanceRepository extends JpaRepository<Finance_details, Integer>{

	@Query(value = "select * from finance_details where pan_card like ?1", nativeQuery = true)
	List<Finance_details> findbypancard(String pan_card);
	
	@Transactional
	@Modifying
	@Query(value = "delete from finance_details where pan_card like ?1",nativeQuery = true)
	void deleteByPan( String pan_card);


	@Transactional
	@Modifying
	@Query(value = "UPDATE finance_details SET id = ?1,  = ?2, pan_card = ?3, aadhar_card = ?4, bank_name = ?5, branch_name = ?6, ifsc_code = ?7, ctc_breakup = ?8 WHERE id = ?9", nativeQuery = true)
	void findById(int  id, String pan_card, String aadhar_card, String bank_name, String branch_name, String ifsc_code, double ctc_breakup);

}
