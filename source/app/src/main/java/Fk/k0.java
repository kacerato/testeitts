package Fk;

import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class k0 extends AbstractC14545v implements InterfaceC14514f {

    public static final int f7127d = 0;

    public static final int f7128e = 1;

    public static final int f7129f = 2;

    public final int f7130b;

    public final InterfaceC14516g f7131c;

    public k0(int i10, InterfaceC14516g interfaceC14516g) {
        if (i10 == 0 || i10 == 1 || i10 == 2) {
            this.f7130b = i10;
            this.f7131c = interfaceC14516g;
        } else {
            throw new IllegalArgumentException("invalid choice value " + i10);
        }
    }

    public static k0 A(C2529a0 c2529a0) {
        return new k0(0, c2529a0);
    }

    public static k0 u() {
        return new k0(1, oh.A0.f98776c);
    }

    public static k0 v(C2531c c2531c) {
        return new k0(2, c2531c);
    }

    public static k0 y(Object obj) {
        if (obj instanceof k0) {
            return (k0) obj;
        }
        if (obj != null) {
            return new k0(oh.M.S(obj, 128));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new K0(this.f7130b, this.f7131c);
    }

    public int x() {
        return this.f7130b;
    }

    public InterfaceC14516g z() {
        return this.f7131c;
    }

    public k0(oh.M m10) {
        this(m10.g(), m10.O());
    }
}
