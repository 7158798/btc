package com.zhgtrade.deal.stat;

import com.zhgtrade.deal.core.SyncTaskService;

import javax.annotation.Resource;

/**
 * Created by john on 16/6/12.
 */
public class SyncTaskServiceStat implements SyncTaskServiceStatMBean {

    @Resource
    private SyncTaskService syncTaskService;

    @Override
    public int getTaskCount() {
        return syncTaskService.count();
    }
}
