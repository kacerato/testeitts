package th;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class C15444u extends AbstractC14545v {

    public final C13486b f117633b;

    public final C14539s f117634c;

    public final C13486b f117635d;

    public C15444u(C13486b c13486b, long j10, C13486b c13486b2) {
        this(c13486b, new C14539s(j10), c13486b2);
    }

    public static C15444u u(Object obj) {
        if (obj instanceof C15444u) {
            return (C15444u) obj;
        }
        if (obj != null) {
            return new C15444u(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f117633b);
        c14518h.a(this.f117634c);
        c14518h.a(this.f117635d);
        return new G0(c14518h);
    }

    public C13486b v() {
        return this.f117633b;
    }

    public C14539s x() {
        return this.f117634c;
    }

    public C13486b y() {
        return this.f117635d;
    }

    public C15444u(C13486b c13486b, C14539s c14539s, C13486b c13486b2) {
        this.f117633b = c13486b;
        this.f117634c = c14539s;
        this.f117635d = c13486b2;
    }

    public C15444u(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("sequence size should 3");
        }
        this.f117633b = C13486b.v(e10.I(0));
        this.f117634c = C14539s.F(e10.I(1));
        this.f117635d = C13486b.v(e10.I(2));
    }
}
