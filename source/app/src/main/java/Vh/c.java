package Vh;

import oh.A0;
import oh.AbstractC14541t;
import oh.AbstractC14545v;
import oh.B;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;
import oh.V;

public class c extends AbstractC14545v implements InterfaceC14514f {

    public int f27021b;

    public InterfaceC14516g f27022c;

    public c() {
        this.f27021b = 0;
        this.f27022c = A0.f98776c;
    }

    public static c u(Object obj) {
        if (obj == null || (obj instanceof c)) {
            return (c) obj;
        }
        if (obj instanceof M) {
            return new c((M) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    public static c v(M m10, boolean z10) {
        return u(m10.P());
    }

    public int g() {
        return this.f27021b;
    }

    @Override
    public B r() {
        return new K0(false, this.f27021b, this.f27022c);
    }

    public InterfaceC14516g x() {
        return this.f27022c;
    }

    public c(int i10, InterfaceC14516g interfaceC14516g) {
        this.f27021b = i10;
        this.f27022c = interfaceC14516g;
    }

    public c(m mVar) {
        this.f27021b = 1;
        this.f27022c = mVar;
    }

    public c(M m10) {
        InterfaceC14516g G10;
        int g10 = m10.g();
        if (g10 != 0) {
            if (g10 == 1) {
                G10 = m.v(m10, false);
                this.f27022c = G10;
                this.f27021b = g10;
            } else if (g10 != 2) {
                throw new IllegalArgumentException("Unknown tag encountered: " + V.y(m10));
            }
        }
        G10 = AbstractC14541t.G(m10, false);
        this.f27022c = G10;
        this.f27021b = g10;
    }
}
