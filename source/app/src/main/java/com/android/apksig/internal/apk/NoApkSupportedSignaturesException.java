package com.android.apksig.internal.apk;

public class NoApkSupportedSignaturesException extends Exception {
    public NoApkSupportedSignaturesException(String str) {
        super(str);
    }
}
