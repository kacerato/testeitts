package com.jme3.asset;

public interface AssetEventListener {
    void assetDependencyNotFound(AssetKey assetKey, AssetKey assetKey2);

    void assetLoaded(AssetKey assetKey);

    void assetRequested(AssetKey assetKey);
}
