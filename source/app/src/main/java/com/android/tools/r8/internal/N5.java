package com.android.tools.r8.internal;

import java.io.IOException;
import java.math.RoundingMode;

public abstract class N5 {

    public static final L5 f42495a;

    static {
        new L5(new J5("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray()), '=');
        f42495a = new L5(new J5("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".toCharArray()), '=');
        new M5(new J5("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567".toCharArray()), '=');
        new M5(new J5("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV".toCharArray()), '=');
        new K5(new J5("base16()", "0123456789ABCDEF".toCharArray()));
    }

    public final String a(byte[] bArr) {
        int length = bArr.length;
        U60.a(0, length, bArr.length);
        J5 j52 = ((M5) this).f42159b;
        int i10 = j52.f41284e;
        int i11 = j52.f41285f;
        RoundingMode roundingMode = RoundingMode.CEILING;
        StringBuilder sb2 = new StringBuilder(YH.a(length, i11) * i10);
        try {
            a(sb2, bArr, length);
            return sb2.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    public abstract void a(StringBuilder sb2, byte[] bArr, int i10);
}
