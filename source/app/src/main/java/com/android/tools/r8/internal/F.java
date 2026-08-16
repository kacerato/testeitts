package com.android.tools.r8.internal;

import java.nio.charset.Charset;

public abstract class F implements InterfaceC8212lA {
    public final InterfaceC8212lA a(String str, Charset charset) {
        return a(str.toString().getBytes(charset));
    }

    @Override
    public InterfaceC8212lA a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }
}
