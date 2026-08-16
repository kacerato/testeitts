package org.bouncycastle.jcajce.provider.asymmetric.util;

import Bi.C2376h;
import Bi.InterfaceC2374f;
import hk.s;

public class k {
    public static s a(C2376h c2376h, byte[] bArr) {
        if (c2376h == null) {
            return new s(null, null, 128);
        }
        InterfaceC2374f d10 = c2376h.d();
        return (d10.b().equals("DES") || d10.b().equals("RC2") || d10.b().equals("RC5-32") || d10.b().equals("RC5-64")) ? new s(null, null, 64, 64, bArr) : d10.b().equals("SKIPJACK") ? new s(null, null, 80, 80, bArr) : d10.b().equals("GOST28147") ? new s(null, null, 256, 256, bArr) : new s(null, null, 128, 128, bArr);
    }
}
