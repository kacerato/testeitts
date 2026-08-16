package com.android.tools.r8.internal;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

public final class C6950de0 extends ZQ implements InterfaceC8342ly {

    public final byte[] f47444b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6950de0(byte[] bArr) {
        super(0);
        this.f47444b = bArr;
    }

    @Override
    public final Object a() {
        byte[] bArr = this.f47444b;
        Charset charset = StandardCharsets.UTF_8;
        GJ.b(charset, "UTF_8");
        return new String(bArr, charset);
    }
}
