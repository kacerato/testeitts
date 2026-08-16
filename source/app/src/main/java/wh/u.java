package wh;

import oh.A0;
import oh.AbstractC14545v;
import oh.B;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class u extends AbstractC14545v implements InterfaceC14514f {

    public static final int f127553d = 0;

    public static final int f127554e = 1;

    public static final int f127555f = 2;

    public static final int f127556g = 3;

    public int f127557b;

    public InterfaceC14516g f127558c;

    public u() {
        this.f127557b = 0;
        this.f127558c = A0.f98776c;
    }

    public static u u(Object obj) {
        if (obj == null || (obj instanceof u)) {
            return (u) obj;
        }
        if (obj instanceof M) {
            return new u((M) obj);
        }
        throw new IllegalArgumentException("Invalid object: " + obj.getClass().getName());
    }

    @Override
    public B r() {
        return new K0(false, this.f127557b, this.f127558c);
    }

    public InterfaceC14516g v() {
        return this.f127558c;
    }

    public int x() {
        return this.f127557b;
    }

    public u(int i10, r rVar) {
        this.f127557b = i10;
        this.f127558c = rVar;
    }

    public u(M m10) {
        InterfaceC14516g interfaceC14516g;
        int g10 = m10.g();
        this.f127557b = g10;
        if (g10 == 0) {
            interfaceC14516g = A0.f98776c;
        } else if (g10 == 1) {
            interfaceC14516g = s.w(m10, false);
        } else {
            if (g10 != 2 && g10 != 3) {
                throw new IllegalArgumentException("unknown tag: " + this.f127557b);
            }
            interfaceC14516g = r.v(m10, true);
        }
        this.f127558c = interfaceC14516g;
    }

    public u(s sVar) {
        this.f127557b = 1;
        this.f127558c = sVar;
    }
}
