package com.huajigg.service.impl;

import com.huajigg.domain.RecommendedItemBuild;
import com.huajigg.mapper.IHeroRecommendedItemMapper;
import com.huajigg.service.IHeroRecommendedItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HeroRecommendedItemServiceImpl implements IHeroRecommendedItemService {

    @Autowired
    private IHeroRecommendedItemMapper heroRecommendedItemMapper;
    @Override
    public List<RecommendedItemBuild> getHeroRecommendedItem(int hid) {
        List<RecommendedItemBuild> recommendedItemBuilds = heroRecommendedItemMapper.selectHeroRecommendedItem(hid);
        return recommendedItemBuilds;
    }
}
