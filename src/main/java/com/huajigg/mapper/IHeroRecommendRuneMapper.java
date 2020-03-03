package com.huajigg.mapper;

import com.huajigg.domain.RecommendedRuneBuild;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IHeroRecommendRuneMapper {
    List<RecommendedRuneBuild> selectHeroRecommendRune(int hid);
}
