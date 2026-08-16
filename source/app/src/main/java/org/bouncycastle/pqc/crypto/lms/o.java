package org.bouncycastle.pqc.crypto.lms;

import Bi.InterfaceC2392y;

public class o implements InterfaceC2392y {

    public final byte[] f102206a;

    public final k f102207b;

    public final A f102208c;

    public final byte[][] f102209d;

    public final l f102210e;

    public final Object f102211f;

    public y[] f102212g;

    public volatile InterfaceC2392y f102213h;

    public o(k kVar, A a10, InterfaceC2392y interfaceC2392y, byte[] bArr, byte[][] bArr2) {
        this.f102207b = kVar;
        this.f102208c = a10;
        this.f102213h = interfaceC2392y;
        this.f102206a = bArr;
        this.f102209d = bArr2;
        this.f102210e = null;
        this.f102211f = null;
    }

    public byte[] a() {
        return this.f102206a;
    }

    @Override
    public String b() {
        return this.f102213h.b();
    }

    @Override
    public int c(byte[] bArr, int i10) {
        return this.f102213h.c(bArr, i10);
    }

    public byte[][] d() {
        return this.f102209d;
    }

    @Override
    public int f() {
        return this.f102213h.f();
    }

    public k g() {
        return this.f102207b;
    }

    public l j() {
        return this.f102210e;
    }

    public byte[] k() {
        byte[] bArr = new byte[34];
        this.f102213h.c(bArr, 0);
        this.f102213h = null;
        return bArr;
    }

    public A l() {
        return this.f102208c;
    }

    public Object m() {
        return this.f102211f;
    }

    public y[] n() {
        return this.f102212g;
    }

    public o o(y[] yVarArr) {
        this.f102212g = yVarArr;
        return this;
    }

    @Override
    public void reset() {
        this.f102213h.reset();
    }

    @Override
    public void update(byte b10) {
        this.f102213h.update(b10);
    }

    public o(l lVar, Object obj, InterfaceC2392y interfaceC2392y) {
        this.f102210e = lVar;
        this.f102211f = obj;
        this.f102213h = interfaceC2392y;
        this.f102206a = null;
        this.f102207b = null;
        this.f102208c = null;
        this.f102209d = null;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f102213h.update(bArr, i10, i11);
    }
}
