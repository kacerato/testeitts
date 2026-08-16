package org.bouncycastle.pqc.crypto.lms;

import Bi.InterfaceC2392y;
import Ii.L;
import Ii.Q;
import oh.C14549x;

public class C14746b {

    public static class a implements InterfaceC2392y {

        public final InterfaceC2392y f102150a;

        public final int f102151b;

        public a(InterfaceC2392y interfaceC2392y, int i10) {
            this.f102150a = interfaceC2392y;
            this.f102151b = i10;
        }

        @Override
        public String b() {
            return this.f102150a.b() + "/" + (this.f102151b * 8);
        }

        @Override
        public int c(byte[] bArr, int i10) {
            byte[] bArr2 = new byte[this.f102150a.f()];
            this.f102150a.c(bArr2, 0);
            System.arraycopy(bArr2, 0, bArr, i10, this.f102151b);
            return this.f102151b;
        }

        @Override
        public int f() {
            return this.f102151b;
        }

        @Override
        public void reset() {
            this.f102150a.reset();
        }

        @Override
        public void update(byte b10) {
            this.f102150a.update(b10);
        }

        @Override
        public void update(byte[] bArr, int i10, int i11) {
            this.f102150a.update(bArr, i10, i11);
        }
    }

    public static InterfaceC2392y a(C14549x c14549x) {
        if (c14549x.A(Sh.d.f23337c)) {
            return new L();
        }
        if (c14549x.A(Sh.d.f23368t)) {
            return new Q(256);
        }
        throw new IllegalArgumentException("unrecognized digest OID: " + ((Object) c14549x));
    }

    public static InterfaceC2392y b(C14549x c14549x, int i10) {
        InterfaceC2392y a10 = a(c14549x);
        return (Sh.d.f23368t.A(c14549x) || a10.f() != i10) ? new a(a10, i10) : a10;
    }

    public static InterfaceC2392y c(j jVar) {
        return b(jVar.b(), jVar.d());
    }

    public static InterfaceC2392y d(A a10) {
        return b(a10.b(), a10.d());
    }
}
