package Ek;

import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14538r0;

public class C2500k extends AbstractC14545v {

    public static final int f5972c = 128;

    public static final int f5973d = 64;

    public final AbstractC14508c f5974b;

    public C2500k(int i10) {
        this(new C14538r0(i10));
    }

    public static C2500k u(Object obj) {
        if (obj instanceof C2500k) {
            return (C2500k) obj;
        }
        if (obj != null) {
            return new C2500k(AbstractC14508c.H(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return this.f5974b;
    }

    public AbstractC14508c v() {
        return this.f5974b;
    }

    public C2500k(AbstractC14508c abstractC14508c) {
        this.f5974b = abstractC14508c;
    }
}
