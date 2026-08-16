package org.bouncycastle.crypto.util;

import Xh.y;
import Xi.A;
import Xi.C3335c;
import Xi.C3375z;
import Xi.F0;
import Xi.G0;
import Xi.H;
import Xi.K;
import Xi.L;
import Xi.N0;
import Xi.O;
import Xi.Q0;
import Xi.S;
import hi.C13486b;
import hi.C13508u;
import java.io.IOException;
import java.math.BigInteger;
import java.util.HashSet;
import java.util.Set;
import oh.A0;
import oh.AbstractC14541t;
import oh.C0;
import oh.C14538r0;
import oh.C14539s;
import oh.C14549x;
import oh.G;
import qj.InterfaceC15115a;
import yh.InterfaceC16192a;

public class p {

    public static Set f101089a;

    static {
        HashSet hashSet = new HashSet(5);
        f101089a = hashSet;
        hashSet.add(InterfaceC16192a.f130292x);
        f101089a.add(InterfaceC16192a.f130293y);
        f101089a.add(InterfaceC16192a.f130294z);
        f101089a.add(InterfaceC16192a.f130265A);
        f101089a.add(InterfaceC16192a.f130266B);
    }

    public static Xh.v a(C3335c c3335c) throws IOException {
        return b(c3335c, null);
    }

    public static Xh.v b(C3335c c3335c, G g10) throws IOException {
        int bitLength;
        ki.j jVar;
        BigInteger e10;
        C14549x c14549x;
        if (c3335c instanceof F0) {
            G0 g02 = (G0) c3335c;
            return new Xh.v(new C13486b(Xh.t.f29017H0, A0.f98776c), new y(g02.f(), g02.l(), g02.d(), g02.k(), g02.m(), g02.i(), g02.j(), g02.n()), g10);
        }
        if (c3335c instanceof A) {
            A a10 = (A) c3335c;
            C3375z d10 = a10.d();
            return new Xh.v(new C13486b(ki.r.f95349s6, new C13508u(d10.b(), d10.c(), d10.a())), new C14539s(a10.e()), g10);
        }
        if (!(c3335c instanceof L)) {
            if (c3335c instanceof Q0) {
                Q0 q02 = (Q0) c3335c;
                return new Xh.v(new C13486b(InterfaceC15115a.f108208c), new C0(q02.getEncoded()), g10, q02.e().getEncoded());
            }
            if (c3335c instanceof N0) {
                N0 n02 = (N0) c3335c;
                return new Xh.v(new C13486b(InterfaceC15115a.f108207b), new C0(n02.getEncoded()), g10, n02.e().getEncoded());
            }
            if (c3335c instanceof S) {
                S s10 = (S) c3335c;
                return new Xh.v(new C13486b(InterfaceC15115a.f108210e), new C0(s10.getEncoded()), g10, s10.e().getEncoded());
            }
            if (!(c3335c instanceof O)) {
                throw new IOException("key parameters not recognized");
            }
            O o10 = (O) c3335c;
            return new Xh.v(new C13486b(InterfaceC15115a.f108209d), new C0(o10.getEncoded()), g10, o10.e().getEncoded());
        }
        L l10 = (L) c3335c;
        Xi.G d11 = l10.d();
        if (d11 == null) {
            jVar = new ki.j((AbstractC14541t) A0.f98776c);
            e10 = l10.e();
        } else {
            if (d11 instanceof H) {
                H h10 = (H) d11;
                yh.g gVar = new yh.g(h10.m(), h10.k(), h10.l());
                if (f101089a.contains(gVar.y())) {
                    c14549x = InterfaceC16192a.f130281m;
                } else {
                    boolean z10 = l10.e().bitLength() > 256;
                    C14549x c14549x2 = z10 ? Cj.a.f4463h : Cj.a.f4462g;
                    r2 = z10 ? 64 : 32;
                    c14549x = c14549x2;
                }
                byte[] bArr = new byte[r2];
                c(bArr, r2, 0, l10.e());
                return new Xh.v(new C13486b(c14549x, gVar), new C0(bArr));
            }
            if (!(d11 instanceof K)) {
                ki.j jVar2 = new ki.j(new ki.l(d11.a(), new ki.n(d11.b(), false), d11.e(), d11.c(), d11.f()));
                bitLength = d11.e().bitLength();
                jVar = jVar2;
                return new Xh.v(new C13486b(ki.r.f95305I5, jVar), new Zh.a(bitLength, l10.e(), new C14538r0(new jk.k().a(d11.b(), l10.e()).l(false)), jVar), g10);
            }
            jVar = new ki.j(((K) d11).j());
            e10 = d11.e();
        }
        bitLength = e10.bitLength();
        return new Xh.v(new C13486b(ki.r.f95305I5, jVar), new Zh.a(bitLength, l10.e(), new C14538r0(new jk.k().a(d11.b(), l10.e()).l(false)), jVar), g10);
    }

    public static void c(byte[] bArr, int i10, int i11, BigInteger bigInteger) {
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
