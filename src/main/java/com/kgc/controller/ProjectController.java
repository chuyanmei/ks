package com.kgc.controller;

import com.kgc.entity.Project;
import com.kgc.entity.Workorder;
import com.kgc.service.ProjectService;
import com.kgc.service.WorkorderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ProjectController {
    @Autowired
    private ProjectService projectService;
    @Autowired
    private WorkorderService workorderService;
    @RequestMapping("/open")
    public String open(Model model){
        List<Project> projects = projectService.selectAll();
        model.addAttribute("projects",projects);
        return "view";
    }
    @RequestMapping("/add")
    public String add(Workorder workorder,Model model){
        boolean b = workorderService.insertWork(workorder);
        if(b){
            model.addAttribute("msg","添加成功");
        }else {
            model.addAttribute("msg","添加失败");
        }
        return "showinfo";
    }
    @RequestMapping("/info")
    public  String info(Model model){
        List<Workorder> workorders = workorderService.selectAllw();
        System.out.println(workorders.get(0).getId());
        model.addAttribute("workorders",workorders);
        return "showinfo";
    }
}
