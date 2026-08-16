package Ek;

import oh.AbstractC14545v;
import oh.C0;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class p extends AbstractC14545v implements InterfaceC14514f {

    public static final int f6004d = 0;

    public static final int f6005e = 1;

    public static final int f6006f = 2;

    public static final int f6007g = 3;

    public final int f6008b;

    public final InterfaceC14516g f6009c;

    public p(int i10, InterfaceC14516g interfaceC14516g) {
        this.f6008b = i10;
        this.f6009c = interfaceC14516g;
    }

    public static p A(byte[] bArr) {
        return new p(3, new C0(org.bouncycastle.util.a.p(bArr)));
    }

    public static p B(E e10) {
        return new p(1, e10);
    }

    public static p C(v vVar) {
        return new p(0, vVar);
    }

    public static p D(byte[] bArr) {
        return new p(0, new C0(org.bouncycastle.util.a.p(bArr)));
    }

    public static p u(C2498i c2498i) {
        return new p(2, c2498i);
    }

    public static p y(Object obj) {
        if (obj instanceof p) {
            return (p) obj;
        }
        if (obj != null) {
            return new p(oh.M.S(obj, 128));
        }
        return null;
    }

    public static p z(v vVar) {
        return new p(3, vVar);
    }

    @Override
    public oh.B r() {
        return new K0(this.f6008b, this.f6009c);
    }

    public int v() {
        return this.f6008b;
    }

    public InterfaceC14516g x() {
        return this.f6009c;
    }

    public p(oh.M m10) {
        InterfaceC14516g y10;
        int g10 = m10.g();
        this.f6008b = g10;
        if (g10 != 0) {
            if (g10 == 1) {
                y10 = E.w(m10.O());
            } else if (g10 == 2) {
                y10 = C2498i.w(m10.O());
            } else if (g10 != 3) {
                throw new IllegalArgumentException("invalid choice value " + m10.g());
            }
            this.f6009c = y10;
        }
        y10 = v.y(m10.O());
        this.f6009c = y10;
    }
}
