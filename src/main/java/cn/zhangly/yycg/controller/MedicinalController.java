package cn.zhangly.yycg.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by zhangly on 2017/6/13.
 */
@Controller
@RequestMapping("/medicinal")
@Scope("prototype")
public class MedicinalController {

    @RequestMapping("/list")
    public String list(HttpServletRequest request){
        System.out.println("do list!");
        return "yycg_medicinal/medicinalList";
    }

}
