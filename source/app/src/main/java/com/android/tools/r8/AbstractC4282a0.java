package com.android.tools.r8;

import com.android.tools.r8.AndroidResourceInput;

public abstract class AbstractC4282a0 {

    public static final int[] f35582a;

    static {
        int[] iArr = new int[AndroidResourceInput.Kind.values().length];
        f35582a = iArr;
        try {
            iArr[AndroidResourceInput.Kind.MANIFEST.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f35582a[AndroidResourceInput.Kind.UNKNOWN.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f35582a[AndroidResourceInput.Kind.RESOURCE_TABLE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f35582a[AndroidResourceInput.Kind.KEEP_RULE_FILE.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f35582a[AndroidResourceInput.Kind.RES_FOLDER_FILE.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f35582a[AndroidResourceInput.Kind.XML_FILE.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
