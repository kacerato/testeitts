package Xk;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class v extends AbstractC14545v {

    public final C14539s f29622b;

    public final int f29623c;

    public final C13486b f29624d;

    public v(int i10, C13486b c13486b) {
        this.f29622b = new C14539s(0L);
        this.f29623c = i10;
        this.f29624d = c13486b;
    }

    public static v v(Object obj) {
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
        C14518h c14518h = new C14518h();
        c14518h.a(this.f29622b);
        c14518h.a(new C14539s(this.f29623c));
        c14518h.a(this.f29624d);
        return new G0(c14518h);
    }

    public int u() {
        return this.f29623c;
    }

    public C13486b x() {
        return this.f29624d;
    }

    public v(E e10) {
        this.f29622b = C14539s.F(e10.I(0));
        this.f29623c = C14539s.F(e10.I(1)).O();
        this.f29624d = C13486b.v(e10.I(2));
    }
}
