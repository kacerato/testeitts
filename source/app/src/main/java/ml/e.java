package Ml;

import Xh.v;
import Xi.C3335c;
import hi.C13486b;
import hi.h0;
import oh.G;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import pl.C15015c;
import pl.C15018f;

public class e {
    public static byte[] a(v vVar) {
        try {
            return vVar.s(InterfaceC14520i.f98892a);
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] b(C3335c c3335c, G g10) {
        if (!c3335c.c()) {
            throw new IllegalArgumentException("public key found");
        }
        try {
            return a(C15015c.b(c3335c, g10));
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] c(C13486b c13486b, InterfaceC14516g interfaceC14516g) {
        try {
            return a(new v(c13486b, interfaceC14516g.r()));
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] d(C3335c c3335c) {
        if (c3335c.c()) {
            throw new IllegalArgumentException("private key found");
        }
        try {
            return g(C15018f.a(c3335c));
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] e(C13486b c13486b, InterfaceC14516g interfaceC14516g) {
        try {
            return g(new h0(c13486b, interfaceC14516g));
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] f(C13486b c13486b, byte[] bArr) {
        try {
            return g(new h0(c13486b, bArr));
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] g(h0 h0Var) {
        try {
            return h0Var.s(InterfaceC14520i.f98892a);
        } catch (Exception unused) {
            return null;
        }
    }
}
