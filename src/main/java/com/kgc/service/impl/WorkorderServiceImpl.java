package com.kgc.service.impl;

import com.kgc.dao.WorkorderMapper;
import com.kgc.entity.Workorder;
import com.kgc.service.WorkorderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class WorkorderServiceImpl implements WorkorderService {
    @Autowired
    private WorkorderMapper workorderMapper;
    public boolean insertWork(Workorder workorder) {
        workorder.setCreatedate(new Date());
        return workorderMapper.insertSelective(workorder)!=0;
    }

    public List<Workorder> selectAllw() {
        return workorderMapper.selectAllw();
    }
}
