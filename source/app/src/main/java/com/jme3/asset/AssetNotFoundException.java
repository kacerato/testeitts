package com.jme3.asset;

public class AssetNotFoundException extends RuntimeException {
    public AssetNotFoundException(String str) {
        super(str);
    }

    public AssetNotFoundException(String str, Exception exc) {
        super(str, exc);
    }
}
