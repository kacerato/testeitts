package com.jme3.asset.plugins;

import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetLoadException;
import com.jme3.asset.AssetManager;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

public class UrlAssetInfo extends AssetInfo {

    private InputStream f81560in;
    private final URL url;

    private UrlAssetInfo(AssetManager assetManager, AssetKey assetKey, URL url, InputStream inputStream) throws IOException {
        super(assetManager, assetKey);
        this.url = url;
        this.f81560in = inputStream;
    }

    public static UrlAssetInfo create(AssetManager assetManager, AssetKey assetKey, URL url) throws IOException {
        URLConnection openConnection = url.openConnection();
        openConnection.setUseCaches(false);
        InputStream inputStream = openConnection.getInputStream();
        if (inputStream == null) {
            return null;
        }
        return new UrlAssetInfo(assetManager, assetKey, url, inputStream);
    }

    public boolean hasInitialConnection() {
        return this.f81560in != null;
    }

    @Override
    public InputStream openStream() {
        InputStream inputStream = this.f81560in;
        if (inputStream != null) {
            this.f81560in = null;
            return inputStream;
        }
        try {
            URLConnection openConnection = this.url.openConnection();
            openConnection.setUseCaches(false);
            return openConnection.getInputStream();
        } catch (IOException e10) {
            throw new AssetLoadException("Failed to read URL " + ((Object) this.url), e10);
        }
    }
}
