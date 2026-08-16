package th;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;

public class C15425a extends AbstractC14545v {

    public final C15426b f117551b;

    public final C15426b f117552c;

    public final C15426b f117553d;

    public C15425a(oh.E e10) {
        this.f117551b = C15426b.u(e10.I(0));
        this.f117552c = C15426b.u(e10.I(1));
        this.f117553d = C15426b.u(e10.I(2));
    }

    public static C15425a u(Object obj) {
        if (obj instanceof C15425a) {
            return (C15425a) obj;
        }
        if (obj != null) {
            return new C15425a(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f117551b);
        c14518h.a(this.f117552c);
        c14518h.a(this.f117553d);
        return new G0(c14518h);
    }

    public C15426b v() {
        return this.f117553d;
    }

    public C15426b x() {
        return this.f117552c;
    }

    public C15426b y() {
        return this.f117551b;
    }

    public C15425a(C15426b c15426b, C15426b c15426b2, C15426b c15426b3) {
        this.f117551b = c15426b;
        this.f117552c = c15426b2;
        this.f117553d = c15426b3;
    }
}
