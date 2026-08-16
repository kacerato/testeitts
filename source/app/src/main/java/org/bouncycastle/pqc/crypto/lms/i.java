package org.bouncycastle.pqc.crypto.lms;

import Bi.InterfaceC2379k;
import java.io.IOException;

public class i implements Yk.g {

    public f f102166a;

    public g f102167b;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (z10) {
            this.f102166a = (f) interfaceC2379k;
        } else {
            this.f102167b = (g) interfaceC2379k;
        }
    }

    @Override
    public byte[] b(byte[] bArr) {
        try {
            return C14747c.c(this.f102166a, bArr).getEncoded();
        } catch (IOException e10) {
            throw new IllegalStateException("unable to encode signature: " + e10.getMessage());
        }
    }

    @Override
    public boolean d(byte[] bArr, byte[] bArr2) {
        try {
            g gVar = this.f102167b;
            return C14747c.f(gVar, h.a(bArr2, gVar.e()), bArr);
        } catch (IOException e10) {
            throw new IllegalStateException("unable to decode signature: " + e10.getMessage());
        }
    }
}
