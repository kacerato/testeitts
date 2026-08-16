package org.bouncycastle.cms;

import hi.C13486b;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import oh.C14549x;
import oh.InterfaceC14516g;

public class D0 extends H0 {

    public static Map f100519h = new HashMap();

    public static Map f100520i;

    public uh.N f100521g;

    static {
        HashMap hashMap = new HashMap();
        f100520i = hashMap;
        C14549x c14549x = C14624c.f100687b;
        hashMap.put(c14549x, org.bouncycastle.util.k.j(8));
        Map map = f100520i;
        C14549x c14549x2 = C14624c.f100695f;
        map.put(c14549x2, org.bouncycastle.util.k.j(16));
        Map map2 = f100520i;
        C14549x c14549x3 = C14624c.f100697g;
        map2.put(c14549x3, org.bouncycastle.util.k.j(16));
        Map map3 = f100520i;
        C14549x c14549x4 = C14624c.f100699h;
        map3.put(c14549x4, org.bouncycastle.util.k.j(16));
        f100519h.put(c14549x, org.bouncycastle.util.k.j(192));
        f100519h.put(c14549x2, org.bouncycastle.util.k.j(128));
        f100519h.put(c14549x3, org.bouncycastle.util.k.j(192));
        f100519h.put(c14549x4, org.bouncycastle.util.k.j(256));
    }

    public D0(uh.N n10, C13486b c13486b, K k10) {
        super(n10.y(), c13486b, k10);
        this.f100521g = n10;
        this.f100533a = new B0();
    }

    @Override
    public J0 j(E0 e02) throws CMSException, IOException {
        A0 a02 = (A0) e02;
        C13486b v10 = C13486b.v(C13486b.v(this.f100521g.y()).x());
        return a02.d(v10, this.f100535c, a02.c(a02.e(), m(), ((Integer) f100519h.get(v10.u())).intValue()), this.f100521g.u().H());
    }

    public String k() {
        if (this.f100521g.x() != null) {
            return this.f100521g.x().u().J();
        }
        return null;
    }

    public byte[] l() {
        InterfaceC14516g x10;
        try {
            if (this.f100521g.x() == null || (x10 = this.f100521g.x().x()) == null) {
                return null;
            }
            return x10.r().getEncoded();
        } catch (Exception e10) {
            throw new RuntimeException("exception getting encryption parameters " + ((Object) e10));
        }
    }

    public C13486b m() {
        return this.f100521g.x();
    }
}
