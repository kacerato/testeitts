package th;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;

public class Q extends AbstractC14545v {

    public final G f117532b;

    public final C f117533c;

    public Q(oh.E e10) {
        this.f117532b = G.y(e10.I(0));
        this.f117533c = C.w(e10.I(1));
    }

    public static Q w(Object obj) {
        if (obj instanceof Q) {
            return (Q) obj;
        }
        if (obj != null) {
            return new Q(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f117532b);
        c14518h.a(this.f117533c);
        return new G0(c14518h);
    }

    public C u() {
        return this.f117533c;
    }

    public G v() {
        return this.f117532b;
    }

    public Q(G g10, C c10) {
        this.f117532b = g10;
        this.f117533c = c10;
    }
}
