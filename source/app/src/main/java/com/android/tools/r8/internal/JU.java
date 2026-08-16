package com.android.tools.r8.internal;

import java.nio.charset.Charset;

public final class JU {

    public static final HU f41403b = new HU();

    public final IU f41404a;

    public JU() {
        InterfaceC7763iW interfaceC7763iW;
        try {
            interfaceC7763iW = (InterfaceC7763iW) Class.forName("com.google.protobuf.G").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            interfaceC7763iW = f41403b;
        }
        IU iu = new IU(C5769Py.f43415a, interfaceC7763iW);
        Charset charset = YI.f45964a;
        this.f41404a = iu;
    }
}
