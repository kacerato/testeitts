package com.android.tools.r8.internal;

public abstract class B2 {

    public static final int[] f38776a;

    static {
        int[] iArr = new int[((EnumC5583Ms[]) EnumC5583Ms.f42431k.clone()).length];
        f38776a = iArr;
        try {
            iArr[EnumC5583Ms.V35.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            int[] iArr2 = f38776a;
            EnumC5583Ms enumC5583Ms = EnumC5583Ms.V35;
            iArr2[1] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            int[] iArr3 = f38776a;
            EnumC5583Ms enumC5583Ms2 = EnumC5583Ms.V35;
            iArr3[2] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f38776a[EnumC5583Ms.V39.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            int[] iArr4 = f38776a;
            EnumC5583Ms enumC5583Ms3 = EnumC5583Ms.V35;
            iArr4[4] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f38776a[EnumC5583Ms.V41.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
