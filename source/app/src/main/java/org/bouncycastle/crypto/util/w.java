package org.bouncycastle.crypto.util;

import Xh.A;
import Xi.B;
import Xi.C3335c;
import Xi.C3375z;
import Xi.F0;
import Xi.G;
import Xi.H;
import Xi.K;
import Xi.M;
import Xi.O0;
import Xi.P;
import Xi.R0;
import Xi.T;
import hi.C13486b;
import hi.C13508u;
import hi.h0;
import java.io.IOException;
import java.math.BigInteger;
import java.util.HashSet;
import java.util.Set;
import oh.A0;
import oh.AbstractC14541t;
import oh.C0;
import oh.C14539s;
import oh.C14549x;
import qj.InterfaceC15115a;
import yh.InterfaceC16192a;

public class w {

    public static Set f101112a;

    static {
        HashSet hashSet = new HashSet(5);
        f101112a = hashSet;
        hashSet.add(InterfaceC16192a.f130292x);
        f101112a.add(InterfaceC16192a.f130293y);
        f101112a.add(InterfaceC16192a.f130294z);
        f101112a.add(InterfaceC16192a.f130265A);
        f101112a.add(InterfaceC16192a.f130266B);
    }

    public static h0 a(C3335c c3335c) throws IOException {
        ki.j jVar;
        C14549x c14549x;
        if (c3335c instanceof F0) {
            F0 f02 = (F0) c3335c;
            return new h0(new C13486b(Xh.t.f29017H0, A0.f98776c), new A(f02.f(), f02.d()));
        }
        if (c3335c instanceof B) {
            B b10 = (B) c3335c;
            C3375z d10 = b10.d();
            return new h0(new C13486b(ki.r.f95349s6, d10 != null ? new C13508u(d10.b(), d10.c(), d10.a()) : null), new C14539s(b10.e()));
        }
        if (!(c3335c instanceof M)) {
            if (c3335c instanceof R0) {
                return new h0(new C13486b(InterfaceC15115a.f108208c), ((R0) c3335c).getEncoded());
            }
            if (c3335c instanceof O0) {
                return new h0(new C13486b(InterfaceC15115a.f108207b), ((O0) c3335c).getEncoded());
            }
            if (c3335c instanceof T) {
                return new h0(new C13486b(InterfaceC15115a.f108210e), ((T) c3335c).getEncoded());
            }
            if (c3335c instanceof P) {
                return new h0(new C13486b(InterfaceC15115a.f108209d), ((P) c3335c).getEncoded());
            }
            throw new IOException("key parameters not recognized");
        }
        M m10 = (M) c3335c;
        G d11 = m10.d();
        if (d11 == null) {
            jVar = new ki.j((AbstractC14541t) A0.f98776c);
        } else {
            if (d11 instanceof H) {
                H h10 = (H) d11;
                BigInteger v10 = m10.e().f().v();
                BigInteger v11 = m10.e().g().v();
                yh.g gVar = new yh.g(h10.m(), h10.k());
                int i10 = 32;
                int i11 = 64;
                if (f101112a.contains(h10.m())) {
                    c14549x = InterfaceC16192a.f130281m;
                } else if (v10.bitLength() > 256) {
                    c14549x = Cj.a.f4463h;
                    i11 = 128;
                    i10 = 64;
                } else {
                    c14549x = Cj.a.f4462g;
                }
                byte[] bArr = new byte[i11];
                int i12 = i11 / 2;
                b(bArr, i12, 0, v10);
                b(bArr, i12, i10, v11);
                try {
                    return new h0(new C13486b(c14549x, gVar), new C0(bArr));
                } catch (IOException unused) {
                    return null;
                }
            }
            jVar = d11 instanceof K ? new ki.j(((K) d11).j()) : new ki.j(new ki.l(d11.a(), new ki.n(d11.b(), false), d11.e(), d11.c(), d11.f()));
        }
        return new h0(new C13486b(ki.r.f95305I5, jVar), m10.e().l(false));
    }

    public static void b(byte[] bArr, int i10, int i11, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length < i10) {
            byte[] bArr2 = new byte[i10];
            System.arraycopy(byteArray, 0, bArr2, i10 - byteArray.length, byteArray.length);
            byteArray = bArr2;
        }
        for (int i12 = 0; i12 != i10; i12++) {
            bArr[i11 + i12] = byteArray[(byteArray.length - 1) - i12];
        }
    }
}
