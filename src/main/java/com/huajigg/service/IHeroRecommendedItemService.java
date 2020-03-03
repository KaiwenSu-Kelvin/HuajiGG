package com.huajigg.service;

import com.huajigg.domain.RecommendedItemBuild;

import java.util.List;

public interface IHeroRecommendedItemService {
    List<RecommendedItemBuild> getHeroRecommendedItem(int hid);
}
