package com.huajigg.service;

import com.huajigg.domain.RecommendedRuneBuild;

import java.util.List;

public interface IHeroRecommendRuneService {
    List<RecommendedRuneBuild> getHeroRecommendRune(int hid);
}
