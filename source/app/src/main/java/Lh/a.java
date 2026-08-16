package Lh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.E;
import oh.G0;

public class a extends AbstractC14545v {

    public C13486b f13454b;

    public byte[] f13455c;

    public a(C13486b c13486b, byte[] bArr) {
        this.f13454b = c13486b;
        byte[] bArr2 = new byte[bArr.length];
        this.f13455c = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
    }

    public static a w(Object obj) {
        if (obj == null || (obj instanceof a)) {
            return (a) obj;
        }
        if (obj instanceof E) {
            return new a((E) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f13454b);
        c14518h.a(new C0(this.f13455c));
        return new G0(c14518h);
    }

    public byte[] u() {
        return org.bouncycastle.util.a.p(this.f13455c);
    }

    public C13486b v() {
        return this.f13454b;
    }

    public a(E e10) {
        if (e10.size() == 2) {
            this.f13454b = C13486b.v(e10.I(0));
            this.f13455c = AbstractC14551y.F(e10.I(1)).H();
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
    }
}
