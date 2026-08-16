package com.jme3.asset;

public interface AssetProcessor {
    Object createClone(Object obj);

    Object postProcess(AssetKey assetKey, Object obj);
}
