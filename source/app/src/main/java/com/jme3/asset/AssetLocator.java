package com.jme3.asset;

public interface AssetLocator {
    AssetInfo locate(AssetManager assetManager, AssetKey assetKey);

    void setRootPath(String str);
}
