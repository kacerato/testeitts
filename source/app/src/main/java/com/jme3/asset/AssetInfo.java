package com.jme3.asset;

import java.io.InputStream;

public abstract class AssetInfo {
    protected AssetKey key;
    protected AssetManager manager;

    public AssetInfo(AssetManager assetManager, AssetKey assetKey) {
        this.manager = assetManager;
        this.key = assetKey;
    }

    public AssetKey getKey() {
        return this.key;
    }

    public AssetManager getManager() {
        return this.manager;
    }

    public abstract InputStream openStream();

    public String toString() {
        return getClass().getName() + "[key=" + ((Object) this.key) + "]";
    }
}
