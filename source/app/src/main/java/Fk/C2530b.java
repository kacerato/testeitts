package Fk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;

public class C2530b extends AbstractC14545v {

    public final C0 f7073b;

    public C2530b(C0 c02) {
        this.f7073b = c02;
    }

    public static C2530b u(Object obj) {
        if (obj instanceof C2530b) {
            return (C2530b) obj;
        }
        if (obj != null) {
            return new C2530b(AbstractC14551y.F(obj).H());
        }
        return null;
    }

    @Override
    public oh.B r() {
        return this.f7073b;
    }

    public C0 v() {
        return this.f7073b;
    }

    public C2530b(byte[] bArr) {
        this.f7073b = new C0(org.bouncycastle.util.a.p(bArr));
    }
}
