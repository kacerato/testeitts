package org.bouncycastle.jce;

import hk.C13523c;
import java.util.Enumeration;
import ki.l;
import oh.C14549x;

public class a {
    public static Enumeration a() {
        return yh.b.m();
    }

    public static C13523c b(String str) {
        l i10 = yh.b.i(str);
        if (i10 == null) {
            try {
                i10 = yh.b.k(new C14549x(str));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        if (i10 == null) {
            return null;
        }
        return new C13523c(str, i10.v(), i10.z(), i10.C(), i10.A(), i10.D());
    }
}
