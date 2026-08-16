package com.jme3.asset;

public class CloneableAssetProcessor implements AssetProcessor {
    @Override
    public Object createClone(Object obj) {
        return ((CloneableSmartAsset) obj).mo1263clone();
    }

    @Override
    public Object postProcess(AssetKey assetKey, Object obj) {
        return obj;
    }
}
