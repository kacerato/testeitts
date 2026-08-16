package com.jme3.asset.plugins;

import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetLocator;
import com.jme3.asset.AssetManager;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UrlLocator implements AssetLocator {
    private static final Logger logger = Logger.getLogger(UrlLocator.class.getName());
    private URL root;

    @Override
    public AssetInfo locate(AssetManager assetManager, AssetKey assetKey) {
        String name = assetKey.getName();
        try {
            if (name.startsWith("/")) {
                name = name.substring(1);
            }
            return UrlAssetInfo.create(assetManager, assetKey, new URL(this.root.toExternalForm() + name));
        } catch (FileNotFoundException unused) {
            return null;
        } catch (IOException e10) {
            logger.log(Level.WARNING, "Error while locating " + name, (Throwable) e10);
            return null;
        }
    }

    @Override
    public void setRootPath(String str) {
        try {
            this.root = new URL(str);
        } catch (MalformedURLException e10) {
            throw new IllegalArgumentException("Invalid rootUrl specified", e10);
        }
    }
}
