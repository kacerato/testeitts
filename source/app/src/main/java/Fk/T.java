package Fk;

import oh.AbstractC14545v;
import oh.C0;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class T extends AbstractC14545v implements InterfaceC14514f {

    public static final int f7046d = 0;

    public static final int f7047e = 1;

    public static final int f7048f = 2;

    public final int f7049b;

    public final InterfaceC14516g f7050c;

    public static class a {

        public int f7051a;

        public InterfaceC14516g f7052b;

        public T a() {
            return new T(this.f7051a, this.f7052b);
        }

        public a b(C2539k c2539k) {
            this.f7052b = c2539k;
            return this;
        }

        public a c(C2540l c2540l) {
            this.f7052b = c2540l;
            return this;
        }

        public a d(C2539k c2539k) {
            this.f7052b = c2539k;
            return this;
        }

        public a e(byte[] bArr) {
            this.f7052b = new C0(bArr);
            return this;
        }

        public a f(int i10) {
            this.f7051a = i10;
            return this;
        }

        public a g(AbstractC2538j abstractC2538j) {
            this.f7052b = abstractC2538j;
            return this;
        }
    }

    public T(int i10, InterfaceC14516g interfaceC14516g) {
        this.f7049b = i10;
        this.f7050c = interfaceC14516g;
    }

    public static a u() {
        return new a();
    }

    public static T v(C2539k c2539k) {
        return new T(1, c2539k);
    }

    public static T w(C2540l c2540l) {
        return new T(2, c2540l);
    }

    public static T x(C2539k c2539k) {
        return new T(0, c2539k);
    }

    public static T z(Object obj) {
        if (obj instanceof T) {
            return (T) obj;
        }
        if (obj != null) {
            return new T(oh.M.S(obj, 128));
        }
        return null;
    }

    public InterfaceC14516g A() {
        return this.f7050c;
    }

    @Override
    public oh.B r() {
        return new K0(this.f7049b, this.f7050c);
    }

    public int y() {
        return this.f7049b;
    }

    public T(oh.M m10) {
        InterfaceC14516g E10;
        int g10 = m10.g();
        this.f7049b = g10;
        if (g10 == 0 || g10 == 1) {
            E10 = C2539k.E(m10.O());
        } else {
            if (g10 != 2) {
                throw new IllegalArgumentException("invalid choice value " + m10.g());
            }
            E10 = C2540l.C(m10.O());
        }
        this.f7050c = E10;
    }
}
