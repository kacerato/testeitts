package th;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class C15440p extends AbstractC14545v {

    public final C13486b f117624b;

    public final C13486b f117625c;

    public C15440p(C13486b c13486b, C13486b c13486b2) {
        this.f117624b = c13486b;
        this.f117625c = c13486b2;
    }

    public static C15440p u(Object obj) {
        if (obj instanceof C15440p) {
            return (C15440p) obj;
        }
        if (obj != null) {
            return new C15440p(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f117624b, this.f117625c});
    }

    public C13486b v() {
        return this.f117625c;
    }

    public C13486b x() {
        return this.f117624b;
    }

    public C15440p(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expecting sequence size of 2");
        }
        this.f117624b = C13486b.v(e10.I(0));
        this.f117625c = C13486b.v(e10.I(1));
    }
}
