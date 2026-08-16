package com.jme3.asset.cache;

import com.jme3.asset.AssetKey;

public interface AssetCache {
    <T> void addToCache(AssetKey<T> assetKey, T t10);

    void clearCache();

    boolean deleteFromCache(AssetKey assetKey);

    <T> T getFromCache(AssetKey<T> assetKey);

    void notifyNoAssetClone();

    <T> void registerAssetClone(AssetKey<T> assetKey, T t10);
}
