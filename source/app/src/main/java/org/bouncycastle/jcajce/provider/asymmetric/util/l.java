package org.bouncycastle.jcajce.provider.asymmetric.util;

import Xh.v;
import hi.C13486b;
import hi.h0;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;

public class l {
    public static byte[] a(v vVar) {
        try {
            return vVar.s(InterfaceC14520i.f98892a);
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] b(C13486b c13486b, InterfaceC14516g interfaceC14516g) {
        try {
            return a(new v(c13486b, interfaceC14516g.r()));
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] c(C13486b c13486b, InterfaceC14516g interfaceC14516g) {
        try {
            return e(new h0(c13486b, interfaceC14516g));
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] d(C13486b c13486b, byte[] bArr) {
        try {
            return e(new h0(c13486b, bArr));
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] e(h0 h0Var) {
        try {
            return h0Var.s(InterfaceC14520i.f98892a);
        } catch (Exception unused) {
            return null;
        }
    }
}
