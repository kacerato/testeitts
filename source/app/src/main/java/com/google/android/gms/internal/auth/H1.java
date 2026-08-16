package com.google.android.gms.internal.auth;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.apache.commons.lang3.CharEncoding;

public final class H1 {

    public static final Charset f61614a = Charset.forName(CharEncoding.US_ASCII);

    public static final Charset f61615b = Charset.forName("UTF-8");

    public static final Charset f61616c = Charset.forName("ISO-8859-1");

    public static final byte[] f61617d;

    public static final ByteBuffer f61618e;

    public static final C11972p1 f61619f;

    static {
        byte[] bArr = new byte[0];
        f61617d = bArr;
        f61618e = ByteBuffer.wrap(bArr);
        int i10 = C11972p1.f61813b;
        C11964n1 c11964n1 = new C11964n1(bArr, 0, 0, false, null);
        try {
            c11964n1.c(0);
            f61619f = c11964n1;
        } catch (zzfb e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static int a(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    public static int b(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            i10 = (i10 * 31) + bArr[i13];
        }
        return i10;
    }

    public static Object c(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("messageType");
    }

    public static String d(byte[] bArr) {
        return new String(bArr, f61615b);
    }
}
