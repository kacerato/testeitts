package com.jme3.asset.plugins;

import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetLoadException;
import com.jme3.asset.AssetLocator;
import com.jme3.asset.AssetManager;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Logger;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class ZipLocator implements AssetLocator {
    private static final Logger logger = Logger.getLogger(ZipLocator.class.getName());
    private ZipFile zipfile;

    public class JarAssetInfo extends AssetInfo {
        private final ZipEntry entry;

        public JarAssetInfo(AssetManager assetManager, AssetKey assetKey, ZipEntry zipEntry) {
            super(assetManager, assetKey);
            this.entry = zipEntry;
        }

        @Override
        public InputStream openStream() {
            try {
                return ZipLocator.this.zipfile.getInputStream(this.entry);
            } catch (IOException e10) {
                throw new AssetLoadException("Failed to load zip entry: " + ((Object) this.entry), e10);
            }
        }
    }

    @Override
    public AssetInfo locate(AssetManager assetManager, AssetKey assetKey) {
        String name = assetKey.getName();
        if (name.startsWith("/")) {
            name = name.substring(1);
        }
        ZipEntry entry = this.zipfile.getEntry(name);
        if (entry == null) {
            return null;
        }
        return new JarAssetInfo(assetManager, assetKey, entry);
    }

    @Override
    public void setRootPath(String str) {
        try {
            this.zipfile = new ZipFile(new File(str), 1);
        } catch (IOException e10) {
            throw new AssetLoadException("Failed to open zip file: " + str, e10);
        }
    }
}
