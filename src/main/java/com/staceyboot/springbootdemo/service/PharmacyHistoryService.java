package com.staceyboot.springbootdemo.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.staceyboot.springbootdemo.model.PharmacyHistory;
import com.staceyboot.springbootdemo.model.PharmacyHistoryDao;
import com.staceyboot.springbootdemo.model.PharmacyHistoryImg;
import com.staceyboot.springbootdemo.model.PharmacyHistoryImgDao;

@Service
@Transactional
public class PharmacyHistoryService {
	
	@Autowired
	private PharmacyHistoryDao dao;
	
	@Autowired
	private PharmacyHistoryImgDao imgDao;
	
//查全部
	public List<PharmacyHistory> getAllPHList(){
		List<PharmacyHistory> allPHList = dao.findAll();
		
		return allPHList;
	}
	
//存資料
	public void savePH(PharmacyHistory pharmacyHistory) {
		dao.save(pharmacyHistory);
	}
	
////存圖片
//	public void savePHImg(List<PharmacyHistoryImg> pharmacyHistoryImg) {
//		imgDao.saveAll(pharmacyHistoryImg);
//	}
	
	public void savePHImg(byte[] pHImgByte, Integer fkPHId) {
		imgDao.insertPHImgByFkId(pHImgByte, fkPHId);
	}
	
	public void delPHImgByFkPHId(Integer fkPHId) {
		imgDao.delPHImgByFkId(fkPHId);
	}
	
	//用 fkId 找相片
	public List<PharmacyHistoryImg> findPHImgByFkId(Integer fkPHId){
		List<PharmacyHistoryImg> selectPHImgByFkId = imgDao.selectPHImgByFkId(fkPHId);
		
		return selectPHImgByFkId;
	}
	
	
	//用 Id 找照片
	public PharmacyHistoryImg findPHImgById(Integer pHId) {
		Optional<PharmacyHistoryImg> option = imgDao.findById(pHId);
		
		if(option.isPresent()) {
			PharmacyHistoryImg pharmacyHistoryImg = option.get();
			return pharmacyHistoryImg;
		}
		
		return null;
	}
	
}
