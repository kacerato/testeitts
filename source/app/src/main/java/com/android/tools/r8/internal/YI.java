package com.android.tools.r8.internal;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.apache.commons.lang3.CharEncoding;

public abstract class YI {

    public static final Charset f45964a = Charset.forName(CharEncoding.US_ASCII);

    public static final Charset f45965b = Charset.forName("UTF-8");

    public static final Charset f45966c = Charset.forName("ISO-8859-1");

    public static final byte[] f45967d;

    static {
        byte[] bArr = new byte[0];
        f45967d = bArr;
        ByteBuffer.wrap(bArr);
        AbstractC4916Be.a(bArr, 0, 0, false);
    }

    public static String a(byte[] bArr) {
        return new String(bArr, f45965b);
    }
}
