package com.jme3.asset;

public class AssetLoadException extends RuntimeException {
    public AssetLoadException(String str) {
        super(str);
    }

    public AssetLoadException(String str, Throwable th2) {
        super(str, th2);
    }
}
