package com.jme3.asset;

import com.jme3.asset.cache.AssetCache;
import com.jme3.post.FilterPostProcessor;

public class FilterKey extends AssetKey<FilterPostProcessor> {
    public FilterKey(String str) {
        super(str);
    }

    @Override
    public Class<? extends AssetCache> getCacheType() {
        return null;
    }

    public FilterKey() {
    }
}
