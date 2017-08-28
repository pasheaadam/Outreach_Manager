package com.claim.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.claim.entity.Members;

@Repository
public interface MemberRepository extends JpaRepository<Members, String>{

	List<Members> findByTeamCompany(String company_email);
	
	Members findByMemberId(Integer id);
	@Modifying
	@Query("delete from Members m where m.memberId = :id and m.memberEmail=:email")
	void deleteByMemberId(@Param("id")Integer id,@Param("email")String email);
}
