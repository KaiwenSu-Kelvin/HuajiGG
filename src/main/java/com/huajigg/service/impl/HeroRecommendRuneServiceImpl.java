package com.huajigg.service.impl;

import com.huajigg.domain.RecommendedRuneBuild;
import com.huajigg.mapper.IHeroRecommendRuneMapper;
import com.huajigg.service.IHeroRecommendRuneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class HeroRecommendRuneServiceImpl implements IHeroRecommendRuneService {
    @Autowired
    private IHeroRecommendRuneMapper heroRecommendRuneMapper;

    @Override
    public List<RecommendedRuneBuild> getHeroRecommendRune(int hid) {
        List<RecommendedRuneBuild> recommendedRunes = heroRecommendRuneMapper.selectHeroRecommendRune(hid);
        return recommendedRunes;
    }
}
