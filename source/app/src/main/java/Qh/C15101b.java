package qh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.E;
import oh.G0;

public class C15101b extends AbstractC14545v {

    public final C13486b f108137b;

    public final AbstractC14551y f108138c;

    public C15101b(C13486b c13486b, byte[] bArr) {
        this.f108137b = c13486b;
        this.f108138c = new C0(org.bouncycastle.util.a.p(bArr));
    }

    public static C15101b w(Object obj) {
        if (obj instanceof C15101b) {
            return (C15101b) obj;
        }
        if (obj != null) {
            return new C15101b(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f108137b);
        c14518h.a(this.f108138c);
        return new G0(c14518h);
    }

    public AbstractC14551y u() {
        return this.f108138c;
    }

    public C13486b v() {
        return this.f108137b;
    }

    public C15101b(E e10) {
        this.f108137b = C13486b.v(e10.I(0));
        this.f108138c = AbstractC14551y.F(e10.I(1));
    }
}
