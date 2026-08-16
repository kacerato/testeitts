package com.jme3.asset;

public interface CloneableSmartAsset extends Cloneable {
    CloneableSmartAsset mo1263clone();

    AssetKey getKey();

    void setKey(AssetKey assetKey);
}
