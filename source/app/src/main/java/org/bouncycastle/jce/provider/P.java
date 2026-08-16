package org.bouncycastle.jce.provider;

import hi.C13489c0;

public class P {

    public static final P f101661b = new P(33023);

    public int f101662a;

    public P() {
        this(0);
    }

    public void a(P p10) {
        this.f101662a = p10.b() | this.f101662a;
    }

    public int b() {
        return this.f101662a;
    }

    public boolean c(P p10) {
        return ((p10.b() ^ this.f101662a) | this.f101662a) != 0;
    }

    public P d(P p10) {
        P p11 = new P();
        p11.a(new P(p10.b() & this.f101662a));
        return p11;
    }

    public boolean e() {
        return this.f101662a == f101661b.f101662a;
    }

    public P(int i10) {
        this.f101662a = i10;
    }

    public P(C13489c0 c13489c0) {
        this.f101662a = c13489c0.L();
    }
}
