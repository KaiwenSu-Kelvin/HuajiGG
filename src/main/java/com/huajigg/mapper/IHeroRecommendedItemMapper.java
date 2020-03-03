package com.huajigg.mapper;

import com.huajigg.domain.RecommendedItemBuild;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IHeroRecommendedItemMapper {
    List<RecommendedItemBuild> selectHeroRecommendedItem(int hid);
}
