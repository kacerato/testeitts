package qh;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;

public class i extends AbstractC14545v {

    public final InterfaceC14516g f108157b;

    public final k f108158c;

    public i(E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("malformed sequence");
        }
        InterfaceC14516g I10 = e10.I(0);
        if (!(I10 instanceof C15101b) && !(I10 instanceof j)) {
            E G10 = E.G(I10);
            I10 = G10.size() == 2 ? C15101b.w(G10) : j.w(G10);
        }
        this.f108157b = I10;
        this.f108158c = k.u(e10.I(1));
    }

    public static i u(Object obj) {
        if (obj instanceof i) {
            return (i) obj;
        }
        if (obj != null) {
            return new i(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f108157b);
        c14518h.a(this.f108158c);
        return new G0(c14518h);
    }

    public k v() {
        return this.f108158c;
    }

    public InterfaceC14516g x() {
        return this.f108157b;
    }

    public i(C15101b c15101b, k kVar) {
        this.f108157b = c15101b;
        this.f108158c = kVar;
    }

    public i(j jVar, k kVar) {
        this.f108157b = jVar;
        this.f108158c = kVar;
    }
}
