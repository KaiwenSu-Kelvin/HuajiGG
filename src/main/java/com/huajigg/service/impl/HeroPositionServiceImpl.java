package com.huajigg.service.impl;

import com.huajigg.domain.HeroPosition;
import com.huajigg.mapper.IHeroPositionMapper;
import com.huajigg.service.IHeroPositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HeroPositionServiceImpl implements IHeroPositionService {

    @Autowired
    private IHeroPositionMapper heroPositionMapper;

    @Override
    public List<HeroPosition> getHeroPosition() {
        List<HeroPosition> heroPositions = heroPositionMapper.selectHeroPosition();
        return heroPositions;
    }
}
