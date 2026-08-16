package com.jme3.asset;

import java.io.InputStream;

public class StreamAssetInfo extends AssetInfo {
    private boolean alreadyOpened;
    private final InputStream inputStream;

    public StreamAssetInfo(AssetManager assetManager, AssetKey<?> assetKey, InputStream inputStream) {
        super(assetManager, assetKey);
        this.inputStream = inputStream;
    }

    @Override
    public InputStream openStream() {
        if (this.alreadyOpened) {
            throw new IllegalStateException("Stream already opened");
        }
        this.alreadyOpened = true;
        return this.inputStream;
    }
}
