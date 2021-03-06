package com.kriosportal.serviceimpl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Month;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kriosportal.bean.AttendanceSheetBean;
import com.kriosportal.entity.AttendanceSheet;
import com.kriosportal.entity.User;
import com.kriosportal.mapper.AttendanceSheetMapper;
import com.kriosportal.repository.AttendanceSheetRepository;
import com.kriosportal.service.AttendanceSheetService;
@Service
public class AttendanceSheetServiceImpl implements AttendanceSheetService{

	@Autowired
	AttendanceSheetMapper attendanceSheetMapper;
	
	@Autowired
	AttendanceSheetRepository attendanceSheetRepository;
	
	@Override
	public List<AttendanceSheet> getSheetByuserIdFk(int useridFK) {
		// TODO Auto-generated method stub
		return attendanceSheetRepository.getAttendanceSheetByuserId(useridFK);
	}

	@Override
	public Optional<AttendanceSheet> getSheets(Integer fileId) {
		return attendanceSheetRepository.findById(fileId);
	}

	@Override
	public List<AttendanceSheet> getSheets() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AttendanceSheet saveFile(MultipartFile file, AttendanceSheetBean attendanceSheetBean, User user) {
		try {
			attendanceSheetBean.setSheetName(file.getOriginalFilename());
			attendanceSheetBean.setSheetType(file.getContentType());
			attendanceSheetBean.setSheet(file.getBytes());
			attendanceSheetBean.setUploadDate(new Date());
					
			attendanceSheetBean.setModifyDate(new Date());
			AttendanceSheet sheet = attendanceSheetMapper.mapToEntity(attendanceSheetBean, user);
			return attendanceSheetRepository.save(sheet);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void deleteAttendanceSheet(int sheetId) {
		// TODO Auto-generated method stub
		attendanceSheetRepository.deleteById(sheetId);
	}

	@Override
	public List<AttendanceSheet> sortAttendanceSheet(String monthAndYear) {
		String str[] = monthAndYear.split("-");
		int month = Integer.parseInt(str[1]);
		String monthName = Month.of(month).name();
		String date = monthName+" "+str[0];
		List<AttendanceSheet> attendanceSheets = attendanceSheetRepository.getAttendanceSheetByDate(date);
		return attendanceSheets;
	}
	
	

}
