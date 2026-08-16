package com.jme3.material;

import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetProcessor;

public class MaterialProcessor implements AssetProcessor {
    @Override
    public Object createClone(Object obj) {
        return ((Material) obj).m1275clone();
    }

    @Override
    public Object postProcess(AssetKey assetKey, Object obj) {
        return null;
    }
}
