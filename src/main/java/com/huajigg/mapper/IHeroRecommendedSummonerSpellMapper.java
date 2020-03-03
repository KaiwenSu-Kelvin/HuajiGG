package com.huajigg.mapper;

import com.huajigg.domain.RecommendedSummonerSpell;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IHeroRecommendedSummonerSpellMapper {
    List<RecommendedSummonerSpell> selectRecommendedSummonerSpell(int hid);
}
