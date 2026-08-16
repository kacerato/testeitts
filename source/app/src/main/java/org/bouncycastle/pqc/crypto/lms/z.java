package org.bouncycastle.pqc.crypto.lms;

import Bi.InterfaceC2379k;
import java.io.IOException;

public class z implements Yk.g {

    public v f102241a;

    public w f102242b;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (z10) {
            this.f102241a = (v) interfaceC2379k;
        } else {
            this.f102242b = (w) interfaceC2379k;
        }
    }

    @Override
    public byte[] b(byte[] bArr) {
        try {
            return n.c(this.f102241a, bArr).getEncoded();
        } catch (IOException e10) {
            throw new IllegalStateException("unable to encode signature: " + e10.getMessage());
        }
    }

    @Override
    public boolean d(byte[] bArr, byte[] bArr2) {
        try {
            return n.e(this.f102242b, x.a(bArr2), bArr);
        } catch (IOException e10) {
            throw new IllegalStateException("unable to decode signature: " + e10.getMessage());
        }
    }
}
