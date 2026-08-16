package com.threed.jpct;

import android.content.res.AssetManager;
import android.content.res.Resources;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class ShaderLocator {
    private AssetManager assets;
    private Integer rawResourceId;
    private Resources res;

    public ShaderLocator() {
        this.assets = null;
        this.rawResourceId = null;
        this.res = null;
        Logger.log("Accessing shaders via JAR!");
    }

    private String getFileFromZip(String str, InputStream inputStream) throws IOException {
        ZipEntry nextEntry;
        ZipInputStream zipInputStream = new ZipInputStream(inputStream);
        String replace = str.replace("/", "");
        do {
            nextEntry = zipInputStream.getNextEntry();
            if (nextEntry != null && nextEntry.getName().endsWith(replace)) {
                Logger.log("Loading " + replace + " from zip file!");
                return Loader.loadTextFile(zipInputStream);
            }
        } while (nextEntry != null);
        throw new FileNotFoundException();
    }

    private String loadFromAssets(String str) throws IOException {
        InputStream inputStream = null;
        try {
            inputStream = this.assets.open("jpct_shaders.zip", 3);
            return getFileFromZip(str, inputStream);
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
        }
    }

    private String loadFromJar(String str) throws IOException {
        InputStream inputStream = null;
        try {
            inputStream = getClass().getResourceAsStream(str);
            return Loader.loadTextFile(inputStream);
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
        }
    }

    private String loadFromRaw(String str) throws IOException {
        InputStream inputStream = null;
        try {
            inputStream = this.res.openRawResource(this.rawResourceId.intValue());
            return getFileFromZip(str, inputStream);
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
        }
    }

    public String getShaderCode(String str) throws IOException {
        AssetManager assetManager = this.assets;
        if (assetManager == null && this.rawResourceId == null) {
            return loadFromJar(str);
        }
        if (assetManager != null) {
            return loadFromAssets(str);
        }
        if (this.rawResourceId != null) {
            return loadFromRaw(str);
        }
        return null;
    }

    public ShaderLocator(AssetManager assetManager) {
        this.rawResourceId = null;
        this.res = null;
        this.assets = assetManager;
        Logger.log("Accessing shaders via assets directory!");
    }

    public ShaderLocator(Resources resources, int i10) {
        this.assets = null;
        this.rawResourceId = null;
        this.res = null;
        this.rawResourceId = Integer.valueOf(i10);
        this.res = resources;
        Logger.log("Accessing shaders via res/raw directory!");
    }
}
