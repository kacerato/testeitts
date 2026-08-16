package org.bouncycastle.crypto.util;

import Xi.B;
import Xi.C3335c;
import Xi.C3375z;
import Xi.F0;
import Xi.K;
import Xi.M;
import Xi.P;
import java.io.IOException;
import oh.C14549x;

public class k {

    public static final String f101072a = "ssh-rsa";

    public static final String f101073b = "ecdsa";

    public static final String f101074c = "ssh-ed25519";

    public static final String f101075d = "ssh-dss";

    public static byte[] a(C3335c c3335c) throws IOException {
        if (c3335c == null) {
            throw new IllegalArgumentException("cipherParameters was null.");
        }
        if (c3335c instanceof F0) {
            if (c3335c.c()) {
                throw new IllegalArgumentException("RSAKeyParamaters was for encryption");
            }
            F0 f02 = (F0) c3335c;
            t tVar = new t();
            tVar.h(f101072a);
            tVar.e(f02.d());
            tVar.e(f02.f());
            return tVar.a();
        }
        if (c3335c instanceof M) {
            t tVar2 = new t();
            M m10 = (M) c3335c;
            String d10 = u.d(m10.d());
            if (d10 == null) {
                throw new IllegalArgumentException("unable to derive ssh curve name for " + m10.d().a().getClass().getName());
            }
            tVar2.h("ecdsa-sha2-" + d10);
            tVar2.h(d10);
            tVar2.f(m10.e().l(false));
            return tVar2.a();
        }
        if (c3335c instanceof B) {
            B b10 = (B) c3335c;
            C3375z d11 = b10.d();
            t tVar3 = new t();
            tVar3.h(f101075d);
            tVar3.e(d11.b());
            tVar3.e(d11.c());
            tVar3.e(d11.a());
            tVar3.e(b10.e());
            return tVar3.a();
        }
        if (c3335c instanceof P) {
            t tVar4 = new t();
            tVar4.h(f101074c);
            tVar4.f(((P) c3335c).getEncoded());
            return tVar4.a();
        }
        throw new IllegalArgumentException("unable to convert " + c3335c.getClass().getName() + " to public key");
    }

    public static C3335c b(s sVar) {
        C3335c c3335c;
        C3335c m10;
        String g10 = sVar.g();
        if (f101072a.equals(g10)) {
            c3335c = new F0(false, sVar.c(), sVar.c());
        } else {
            if (f101075d.equals(g10)) {
                m10 = new B(sVar.c(), new C3375z(sVar.c(), sVar.c(), sVar.c()));
            } else if (g10.startsWith(f101073b)) {
                String g11 = sVar.g();
                C14549x b10 = u.b(g11);
                ki.l g12 = u.g(b10);
                if (g12 == null) {
                    throw new IllegalStateException("unable to find curve for " + g10 + " using curve name " + g11);
                }
                m10 = new M(g12.v().l(sVar.d()), new K(b10, g12));
            } else if (f101074c.equals(g10)) {
                byte[] d10 = sVar.d();
                if (d10.length != 32) {
                    throw new IllegalStateException("public key value of wrong length");
                }
                c3335c = new P(d10, 0);
            } else {
                c3335c = null;
            }
            c3335c = m10;
        }
        if (c3335c == null) {
            throw new IllegalArgumentException("unable to parse key");
        }
        if (sVar.b()) {
            throw new IllegalArgumentException("decoded key has trailing data");
        }
        return c3335c;
    }

    public static C3335c c(byte[] bArr) {
        return b(new s(bArr));
    }
}
