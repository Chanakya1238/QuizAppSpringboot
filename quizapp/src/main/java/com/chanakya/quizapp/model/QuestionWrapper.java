package com.chanakya.quizapp.model;


import lombok.Data;

@Data
public class QuestionWrapper {

    private Integer id;
    private String questionTitle;
    private String Option1;
    private String Option2;
    private String Option3;
    private String Option4;

    public QuestionWrapper(Integer id, String questionTitle, String option1, String option2, String option3, String option4) {
        Option4 = option4;
        Option3 = option3;
        Option2 = option2;
        Option1 = option1;
        this.questionTitle = questionTitle;
        this.id = id;
    }

}
