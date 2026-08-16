package com.jme3.asset.cache;

import com.jme3.asset.AssetKey;
import java.util.concurrent.ConcurrentHashMap;

public class SimpleAssetCache implements AssetCache {
    private final ConcurrentHashMap<AssetKey, Object> keyToAssetMap = new ConcurrentHashMap<>();

    @Override
    public <T> void addToCache(AssetKey<T> assetKey, T t10) {
        this.keyToAssetMap.put(assetKey, t10);
    }

    @Override
    public void clearCache() {
        this.keyToAssetMap.clear();
    }

    @Override
    public boolean deleteFromCache(AssetKey assetKey) {
        return this.keyToAssetMap.remove(assetKey) != null;
    }

    @Override
    public <T> T getFromCache(AssetKey<T> assetKey) {
        return (T) this.keyToAssetMap.get(assetKey);
    }

    @Override
    public void notifyNoAssetClone() {
    }

    @Override
    public <T> void registerAssetClone(AssetKey<T> assetKey, T t10) {
    }
}
