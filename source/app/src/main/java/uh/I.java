package uh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class I extends AbstractC14545v {

    public oh.G f120584b;

    public oh.G f120585c;

    public I(oh.E e10) {
        oh.M m10;
        int size = e10.size();
        if (size != 0) {
            if (size == 1) {
                m10 = (oh.M) e10.I(0);
                int g10 = m10.g();
                if (g10 == 0) {
                    this.f120584b = oh.G.G(m10, false);
                    return;
                } else if (g10 != 1) {
                    throw new IllegalArgumentException("Bad tag in OriginatorInfo: " + m10.g());
                }
            } else {
                if (size != 2) {
                    throw new IllegalArgumentException("OriginatorInfo too big");
                }
                this.f120584b = oh.G.G((oh.M) e10.I(0), false);
                m10 = (oh.M) e10.I(1);
            }
            this.f120585c = oh.G.G(m10, false);
        }
    }

    public static I w(Object obj) {
        if (obj instanceof I) {
            return (I) obj;
        }
        if (obj != null) {
            return new I(oh.E.G(obj));
        }
        return null;
    }

    public static I x(oh.M m10, boolean z10) {
        return w(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        oh.G g10 = this.f120584b;
        if (g10 != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) g10));
        }
        oh.G g11 = this.f120585c;
        if (g11 != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) g11));
        }
        return new G0(c14518h);
    }

    public oh.G u() {
        return this.f120585c;
    }

    public oh.G v() {
        return this.f120584b;
    }

    public I(oh.G g10, oh.G g11) {
        this.f120584b = g10;
        this.f120585c = g11;
    }
}
