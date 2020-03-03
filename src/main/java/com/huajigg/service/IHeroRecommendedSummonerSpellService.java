package com.huajigg.service;

import com.huajigg.domain.RecommendedSummonerSpell;
import org.springframework.stereotype.Service;

import java.util.List;

public interface IHeroRecommendedSummonerSpellService {
    List<RecommendedSummonerSpell> getRecommendedSummonerSpell(int hid);
}
