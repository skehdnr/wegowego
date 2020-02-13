package com.wego.web.admin;

import java.util.HashMap;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.wego.web.cs.CsProxy;
import com.wego.web.cs.User;
import com.wego.web.tourism.Tourism;
import com.wego.web.util.Printer;

@RestController
@RequestMapping("/admin")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	@Autowired Admin admin;
	@Autowired AdminMapper adminmapper;
	@Autowired Printer printer;
	@Autowired Map<String, Object> map;
	@Autowired CsProxy csproxy;
	@Autowired ExcelService excelService;
	@Autowired Tourism tourism;
	
	@GetMapping("/create/table")
	public Map<?,?> createAdmin(){
		HashMap<String, String> paramMap = new HashMap<>();
		printer.accept("어드민테이블생성");
		paramMap.put("CREATE_ADMIN", AdminSQL.CREATE_ADMIN.toString());
		Consumer<HashMap<String,String>> c = t -> adminmapper.createAdmin(paramMap);
		c.accept(paramMap);
		paramMap.clear();
		paramMap.put("msg", "SUCCESS");
		return paramMap;
	}
	
	@PostMapping("/")
	public Map<?,?> adminjoin(@RequestBody Admin param){
		Consumer<Admin> c = t -> adminmapper.insertAdmin(param);
		c.accept(param);
		map.clear();
		map.put("msg", "SUCCESS");
		return map;
	}
	
	@PostMapping("/{aid}")
	public Map<?,?> adminlogin(@PathVariable String aid, @RequestBody Admin param){
		Function<Admin, Admin>f = t -> adminmapper.adminLogin(param);
		map.clear();
		map.put("msg", "SUCCESS");
		map.put("admin", f.apply(param));
		return map;
		
	}
	
	@PostMapping("/fileupload")
	public void fileupload(MultipartFile[]uploadFile) {
		printer.accept("파일업로드 어드민컨트롤러"+uploadFile);
		csproxy.fileupload(uploadFile);
	}
	
	@PostMapping("/excel")
	public void excel() {
		printer.accept("엑셀");
		excelService.getWorkbook("");
	}
	@GetMapping("/chartlead")
	public Map<?, ?> chartlead (@PathVariable String tarea,@RequestBody Tourism param){
		printer.accept("차트컨트롤러 들어옴"+tarea);
		Function<Tourism,Tourism> f = t -> adminmapper.cartlead(tourism);
		map.clear();
		map.put("tarea",f.apply(param));
		return map;
	}
	

}
