package sh;

import oh.AbstractC14545v;
import oh.C14512e;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;

public class x extends AbstractC14545v {

    public final C15304c f109627b;

    public final C15303b f109628c;

    public final boolean f109629d;

    public final wh.g f109630e;

    public x(oh.E e10) {
        InterfaceC14516g I10;
        if (e10.size() != 4 && e10.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109627b = C15304c.v(e10.I(0));
        this.f109628c = C15303b.v(e10.I(1));
        if (e10.size() == 4) {
            this.f109629d = C14512e.G(e10.I(2)).J();
            I10 = e10.I(3);
        } else {
            this.f109629d = true;
            I10 = e10.I(2);
        }
        this.f109630e = wh.g.v(I10);
    }

    public static x w(Object obj) {
        if (obj instanceof x) {
            return (x) obj;
        }
        if (obj != null) {
            return new x(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f109627b);
        c14518h.a(this.f109628c);
        boolean z10 = this.f109629d;
        if (!z10) {
            c14518h.a(C14512e.I(z10));
        }
        c14518h.a(this.f109630e);
        return new G0(c14518h);
    }

    public C15303b u() {
        return this.f109628c;
    }

    public wh.g v() {
        return this.f109630e;
    }

    public C15304c x() {
        return this.f109627b;
    }

    public boolean y() {
        return this.f109629d;
    }

    public x(C15304c c15304c, C15303b c15303b, boolean z10, wh.g gVar) {
        this.f109627b = c15304c;
        this.f109628c = c15303b;
        this.f109629d = z10;
        this.f109630e = gVar;
    }
}
