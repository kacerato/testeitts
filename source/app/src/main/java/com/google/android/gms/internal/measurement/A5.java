package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.apache.commons.lang3.CharEncoding;

public final class A5 {

    public static final Charset f61885a;

    public static final byte[] f61886b;

    static {
        Charset.forName(CharEncoding.US_ASCII);
        f61885a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f61886b = bArr;
        ByteBuffer.wrap(bArr);
        int i10 = U4.f62130b;
        try {
            new T4(bArr, 0, 0, false, null).c(0);
        } catch (zzmq e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static Object a(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("messageType");
    }

    public static int b(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    public static int c(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            i10 = (i10 * 31) + bArr[i13];
        }
        return i10;
    }

    public static boolean d(W5 w52) {
        if (w52 instanceof D4) {
            throw null;
        }
        return false;
    }
}
