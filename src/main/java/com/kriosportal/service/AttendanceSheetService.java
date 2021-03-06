package com.kriosportal.service;

import java.util.List;
import java.util.Optional;
import org.springframework.web.multipart.MultipartFile;

import com.kriosportal.bean.AttendanceSheetBean;
import com.kriosportal.entity.AttendanceSheet;
import com.kriosportal.entity.User;

/*
 * @author Deepak
 * Date 27-12-2021
 */
public interface AttendanceSheetService {

	public List<AttendanceSheet> getSheetByuserIdFk(int userId);

	public Optional<AttendanceSheet> getSheets(Integer fileId);

	public List<AttendanceSheet> getSheets();

	public AttendanceSheet saveFile(MultipartFile file, AttendanceSheetBean attendanceSheetBean, User user);

	public void deleteAttendanceSheet(int docId);
	
	public List<AttendanceSheet> sortAttendanceSheet(String monthAndYear);
}
