package Dh;

import hi.C13486b;
import hi.C13510w;
import hi.K;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;

public class e extends AbstractC14545v {

    public InterfaceC14516g f5184b;

    public K f5185c;

    public e(C13486b c13486b, byte[] bArr) {
        this.f5184b = new C13510w(c13486b, bArr);
    }

    public static e w(Object obj) {
        if (obj instanceof e) {
            return (e) obj;
        }
        if (obj != null) {
            return new e(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f5184b);
        K k10 = this.f5185c;
        if (k10 != null) {
            c14518h.a(k10);
        }
        return new G0(c14518h);
    }

    public C13486b u() {
        return this.f5184b.r() instanceof AbstractC14551y ? new C13486b(Wh.b.f27785i) : C13510w.w(this.f5184b).u();
    }

    public byte[] v() {
        return this.f5184b.r() instanceof AbstractC14551y ? ((AbstractC14551y) this.f5184b.r()).H() : C13510w.w(this.f5184b).v();
    }

    public K x() {
        return this.f5185c;
    }

    public e(C13486b c13486b, byte[] bArr, K k10) {
        this.f5184b = new C13510w(c13486b, bArr);
        this.f5185c = k10;
    }

    public e(E e10) {
        if (e10.size() < 1 || e10.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        boolean z10 = e10.I(0).r() instanceof AbstractC14551y;
        InterfaceC14516g I10 = e10.I(0);
        this.f5184b = z10 ? AbstractC14551y.F(I10) : C13510w.w(I10);
        if (e10.size() > 1) {
            this.f5185c = K.u(e10.I(1));
        }
    }
}
