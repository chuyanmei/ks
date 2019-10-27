package com.kgc.dao;

import com.kgc.entity.Workorder;

import java.util.List;

public interface WorkorderMapper {

    int insertSelective(Workorder record);

    List<Workorder> selectAllw();
}