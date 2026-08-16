package com.android.tools.r8.internal;

import com.android.tools.r8.AndroidResourceInput;

public abstract class AbstractC6079Vf0 {

    public static final int[] f45116a;

    static {
        int[] iArr = new int[AndroidResourceInput.Kind.values().length];
        f45116a = iArr;
        try {
            iArr[AndroidResourceInput.Kind.MANIFEST.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f45116a[AndroidResourceInput.Kind.RESOURCE_TABLE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f45116a[AndroidResourceInput.Kind.XML_FILE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f45116a[AndroidResourceInput.Kind.KEEP_RULE_FILE.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f45116a[AndroidResourceInput.Kind.RES_FOLDER_FILE.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f45116a[AndroidResourceInput.Kind.UNKNOWN.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
