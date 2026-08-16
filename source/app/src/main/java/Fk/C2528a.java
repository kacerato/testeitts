package Fk;

import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class C2528a extends AbstractC14545v implements InterfaceC14514f {

    public static final int f7066d = 0;

    public static final int f7067e = 1;

    public final int f7068b;

    public final InterfaceC14516g f7069c;

    public static class C0133a {

        public int f7070a;

        public InterfaceC14516g f7071b;

        public C2528a a() {
            return new C2528a(this.f7070a, this.f7071b);
        }

        public C0133a b(int i10) {
            this.f7070a = i10;
            return this;
        }

        public C0133a c(AbstractC2538j abstractC2538j) {
            this.f7071b = abstractC2538j;
            return this;
        }
    }

    public C2528a(int i10, InterfaceC14516g interfaceC14516g) {
        this.f7068b = i10;
        this.f7069c = interfaceC14516g;
    }

    public static C2528a u(C2539k c2539k) {
        return new C2528a(1, c2539k);
    }

    public static C2528a v(C2539k c2539k) {
        return new C2528a(0, c2539k);
    }

    public static C2528a z(Object obj) {
        if (obj instanceof C2528a) {
            return (C2528a) obj;
        }
        if (obj != null) {
            return new C2528a(oh.M.S(obj, 128));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new K0(this.f7068b, this.f7069c);
    }

    public InterfaceC14516g x() {
        return this.f7069c;
    }

    public int y() {
        return this.f7068b;
    }

    public C2528a(oh.M m10) {
        int g10 = m10.g();
        this.f7068b = g10;
        if (g10 == 0 || g10 == 1) {
            this.f7069c = C2539k.E(m10.O());
            return;
        }
        throw new IllegalArgumentException("invalid choice value " + m10.g());
    }
}
