package com.huajigg.mapper;


import com.huajigg.domain.Player;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IPlayerMapper {
    public List<Player> selectAllPlayer();
}
