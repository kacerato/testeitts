package com.jme3.shader.plugins;

import com.jme3.asset.AssetKey;

public class ShaderAssetKey extends AssetKey {
    private boolean injectDependencies;

    public ShaderAssetKey(String str, boolean z10) {
        super(str);
        this.injectDependencies = z10;
    }

    public boolean isInjectDependencies() {
        return this.injectDependencies;
    }

    public void setInjectDependencies(boolean z10) {
        this.injectDependencies = z10;
    }
}
