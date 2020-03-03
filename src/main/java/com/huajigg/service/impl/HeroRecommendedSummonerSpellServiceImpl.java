package com.huajigg.service.impl;

import com.huajigg.domain.RecommendedSummonerSpell;
import com.huajigg.mapper.IHeroRecommendedSummonerSpellMapper;
import com.huajigg.service.IHeroRecommendedSummonerSpellService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class HeroRecommendedSummonerSpellServiceImpl implements IHeroRecommendedSummonerSpellService {

    @Autowired
    private IHeroRecommendedSummonerSpellMapper heroRecommendedSummonerSpellMapper;

    @Override
    public List<RecommendedSummonerSpell> getRecommendedSummonerSpell(int hid) {
        List<RecommendedSummonerSpell> recommendedSummonerSpells = heroRecommendedSummonerSpellMapper.selectRecommendedSummonerSpell(hid);
        return recommendedSummonerSpells;
    }
}
