package Xk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class l extends AbstractC14545v {

    public final int f29525b;

    public final int f29526c;

    public final Wl.e f29527d;

    public l(int i10, int i11, Wl.e eVar) {
        this.f29525b = i10;
        this.f29526c = i11;
        this.f29527d = new Wl.e(eVar);
    }

    public static l v(Object obj) {
        if (obj instanceof l) {
            return (l) obj;
        }
        if (obj != null) {
            return new l(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(new C14539s(this.f29525b));
        c14518h.a(new C14539s(this.f29526c));
        c14518h.a(new C0(this.f29527d.b()));
        return new G0(c14518h);
    }

    public Wl.e u() {
        return new Wl.e(this.f29527d);
    }

    public int x() {
        return this.f29525b;
    }

    public int y() {
        return this.f29526c;
    }

    public l(E e10) {
        this.f29525b = ((C14539s) e10.I(0)).O();
        this.f29526c = ((C14539s) e10.I(1)).O();
        this.f29527d = new Wl.e(((AbstractC14551y) e10.I(2)).H());
    }
}
