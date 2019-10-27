package com.kgc.service;

import com.kgc.entity.Workorder;

import java.util.List;

public interface WorkorderService {
    boolean insertWork(Workorder workorder);
    List<Workorder> selectAllw();
}
