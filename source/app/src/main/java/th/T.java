package th;

import hi.C13479C;
import hi.z0;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;

public class T extends AbstractC14545v {

    public final wh.g f117539b;

    public C13479C f117540c;

    public T(oh.E e10) {
        this.f117539b = wh.g.v(e10.I(0));
        if (e10.size() > 1) {
            this.f117540c = C13479C.C(e10.I(1));
        }
    }

    public static T w(Object obj) {
        if (obj instanceof T) {
            return (T) obj;
        }
        if (obj != null) {
            return new T(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f117539b);
        C13479C c13479c = this.f117540c;
        if (c13479c != null) {
            c14518h.a(c13479c);
        }
        return new G0(c14518h);
    }

    public wh.g u() {
        return this.f117539b;
    }

    public C13479C v() {
        return this.f117540c;
    }

    public T(wh.g gVar) {
        this.f117539b = gVar;
    }

    public T(wh.g gVar, C13479C c13479c) {
        this.f117539b = gVar;
        this.f117540c = c13479c;
    }

    public T(wh.g gVar, z0 z0Var) {
        this.f117539b = gVar;
        this.f117540c = C13479C.C(z0Var.r());
    }
}
