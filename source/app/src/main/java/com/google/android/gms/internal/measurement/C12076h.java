package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;

public final class C12076h implements InterfaceC12157q {

    public final InterfaceC12157q f62300b;

    public final String f62301c;

    public C12076h() {
        this.f62300b = InterfaceC12157q.f62394o4;
        this.f62301c = "return";
    }

    @Override
    public final String P1() {
        throw new IllegalStateException("Control is not a String");
    }

    @Override
    public final Double Q1() {
        throw new IllegalStateException("Control is not a double");
    }

    @Override
    public final Boolean R1() {
        throw new IllegalStateException("Control is not a boolean");
    }

    @Override
    public final Iterator a() {
        return null;
    }

    public final InterfaceC12157q b() {
        return this.f62300b;
    }

    public final String c() {
        return this.f62301c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C12076h)) {
            return false;
        }
        C12076h c12076h = (C12076h) obj;
        return this.f62301c.equals(c12076h.f62301c) && this.f62300b.equals(c12076h.f62300b);
    }

    @Override
    public final InterfaceC12157q g() {
        return new C12076h(this.f62301c, this.f62300b.g());
    }

    @Override
    public final InterfaceC12157q h(String str, C12079h2 c12079h2, List list) {
        throw new IllegalStateException("Control does not have functions");
    }

    public final int hashCode() {
        return (this.f62301c.hashCode() * 31) + this.f62300b.hashCode();
    }

    public C12076h(String str) {
        this.f62300b = InterfaceC12157q.f62394o4;
        this.f62301c = str;
    }

    public C12076h(String str, InterfaceC12157q interfaceC12157q) {
        this.f62300b = interfaceC12157q;
        this.f62301c = str;
    }
}
