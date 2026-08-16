package com.jme3.asset.plugins;

import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetLoadException;
import com.jme3.asset.AssetLocator;
import com.jme3.asset.AssetManager;
import com.jme3.asset.AssetNotFoundException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class FileLocator implements AssetLocator {
    private File root;

    public static class AssetInfoFile extends AssetInfo {
        private final File file;

        public AssetInfoFile(AssetManager assetManager, AssetKey assetKey, File file) {
            super(assetManager, assetKey);
            this.file = file;
        }

        @Override
        public InputStream openStream() {
            try {
                return new FileInputStream(this.file);
            } catch (FileNotFoundException e10) {
                throw new AssetLoadException("Failed to open file: " + ((Object) this.file), e10);
            }
        }
    }

    @Override
    public AssetInfo locate(AssetManager assetManager, AssetKey assetKey) {
        File file = new File(this.root, assetKey.getName());
        if (!file.exists() || !file.isFile()) {
            return null;
        }
        try {
            String canonicalPath = file.getCanonicalPath();
            String absolutePath = file.getAbsolutePath();
            if (canonicalPath.endsWith(absolutePath)) {
                return new AssetInfoFile(assetManager, assetKey, file);
            }
            throw new AssetNotFoundException("Asset name doesn't match requirements.\n\"" + canonicalPath + "\" doesn't match \"" + absolutePath + JavadocConstants.ANCHOR_PREFIX_END);
        } catch (IOException e10) {
            throw new AssetLoadException("Failed to get file canonical path " + ((Object) file), e10);
        }
    }

    @Override
    public void setRootPath(String str) {
        if (str == null) {
            throw new IllegalArgumentException("rootPath cannot be null");
        }
        try {
            File canonicalFile = new File(str).getCanonicalFile();
            this.root = canonicalFile;
            if (canonicalFile.isDirectory()) {
                return;
            }
            throw new IllegalArgumentException("Given root path \"" + ((Object) this.root) + "\" is not a directory");
        } catch (IOException e10) {
            throw new AssetLoadException("Root path is invalid", e10);
        }
    }
}
