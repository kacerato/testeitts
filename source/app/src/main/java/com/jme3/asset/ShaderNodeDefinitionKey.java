package com.jme3.asset;

import com.jme3.asset.cache.AssetCache;
import com.jme3.shader.ShaderNodeDefinition;
import java.util.List;

public class ShaderNodeDefinitionKey extends AssetKey<List<ShaderNodeDefinition>> {
    private boolean loadDocumentation;

    public ShaderNodeDefinitionKey(String str) {
        super(str);
        this.loadDocumentation = false;
    }

    @Override
    public Class<? extends AssetCache> getCacheType() {
        return null;
    }

    public boolean isLoadDocumentation() {
        return this.loadDocumentation;
    }

    public void setLoadDocumentation(boolean z10) {
        this.loadDocumentation = z10;
    }

    public ShaderNodeDefinitionKey() {
        this.loadDocumentation = false;
    }
}
