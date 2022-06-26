package com.staceyboot.springbootdemo.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PharmacyHistoryImgDao extends JpaRepository<PharmacyHistoryImg, Integer> {

	@Modifying
	@Query(value = "insert into pharmacy_history_img values(:imgByte, :fkPHId)", nativeQuery = true)
	public void insertPHImgByFkId(@Param("imgByte") byte[] imgByte, @Param("fkPHId") Integer fkPHId);
	
	@Modifying
	@Query(value = "delete pharmacy_history_img where fk_p_history_id = :fkPHId", nativeQuery = true)
	public void delPHImgByFkId(@Param("fkPHId") Integer fkPHId);
	
	@Query(value = "select * from pharmacy_history_img where fk_p_history_id = :fkPHId", nativeQuery = true)
	public List<PharmacyHistoryImg> selectPHImgByFkId(@Param("fkPHId") Integer fkPHId);
	
}
