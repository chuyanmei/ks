package com.kgc.service.impl;

import com.kgc.dao.ProjectMapper;
import com.kgc.entity.Project;
import com.kgc.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProjectServiceImpl implements ProjectService {
    @Autowired
    private ProjectMapper projectMapper;
    public List<Project> selectAll() {
        return projectMapper.selectAll();
    }
}
