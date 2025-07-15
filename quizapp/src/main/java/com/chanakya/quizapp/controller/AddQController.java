package com.chanakya.quizapp.controller;


import com.chanakya.quizapp.model.AddQ;
import com.chanakya.quizapp.service.AddQService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/AddQ")
public class AddQController {

    @Autowired
    private AddQService addQService;

    @PostMapping
    public ResponseEntity<String> addQuestion(@RequestBody AddQ addQ){
        return addQService.addQuestion(addQ);
    }
}
