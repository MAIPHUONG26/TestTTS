package com.example.testtts.Controller;

import com.example.testtts.NhanVienRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TTController {
    @Autowired
    NhanVienRepository nvR;
    @GetMapping("/getAllNhanVien")
public String getAll(Model model){
model.addAttribute("listNhanVien",nvR.findAll());
    return "/trang-chu/nhanVien";
}
}
