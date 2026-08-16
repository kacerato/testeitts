package Xh;

import hi.C13486b;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14538r0;
import oh.G0;

public class C3330e extends AbstractC14545v {

    public f f28963b;

    public C13486b f28964c;

    public AbstractC14508c f28965d;

    public C3330e() {
        this.f28963b = null;
        this.f28964c = null;
        this.f28965d = null;
    }

    public static C3330e v(Object obj) {
        if (obj instanceof C3330e) {
            return (C3330e) obj;
        }
        if (obj != null) {
            return new C3330e(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f28963b);
        c14518h.a(this.f28964c);
        c14518h.a(this.f28965d);
        return new G0(c14518h);
    }

    public f u() {
        return this.f28963b;
    }

    public AbstractC14508c x() {
        return this.f28965d;
    }

    public C13486b y() {
        return this.f28964c;
    }

    public C3330e(f fVar, C13486b c13486b, AbstractC14508c abstractC14508c) {
        this.f28963b = fVar;
        this.f28964c = c13486b;
        this.f28965d = abstractC14508c;
    }

    public C3330e(oh.E e10) {
        this.f28963b = null;
        this.f28964c = null;
        this.f28965d = null;
        this.f28963b = f.v(e10.I(0));
        this.f28964c = C13486b.v(e10.I(1));
        this.f28965d = (C14538r0) e10.I(2);
    }
}
