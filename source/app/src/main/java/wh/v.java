package wh;

import hi.C13481E;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class v extends AbstractC14545v {

    public static final C14539s f127559d = new C14539s(0);

    public static final C14539s f127560e = new C14539s(1);

    public static final C14539s f127561f = new C14539s(2);

    public static final C14539s f127562g = new C14539s(3);

    public C14539s f127563b;

    public C13481E f127564c;

    public v(C14539s c14539s, C13481E c13481e) {
        this.f127563b = c14539s;
        this.f127564c = c13481e;
    }

    public static v u(Object obj) {
        if (obj instanceof v) {
            return (v) obj;
        }
        if (obj != null) {
            return new v(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f127563b);
        C13481E c13481e = this.f127564c;
        if (c13481e != null) {
            c14518h.a(c13481e);
        }
        return new G0(c14518h);
    }

    public C13481E v() {
        return this.f127564c;
    }

    public C14539s x() {
        return this.f127563b;
    }

    public v(E e10) {
        this.f127563b = C14539s.F(e10.I(0));
        if (e10.size() == 2) {
            this.f127564c = C13481E.v(e10.I(1));
        }
    }
}
