package Ek;

import java.util.Iterator;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.InterfaceC14516g;
import zk.C16317a;

public class C2490a extends AbstractC14545v {

    public final AbstractC14551y f5938b;

    public final v f5939c;

    public static class C0113a {

        public AbstractC14551y f5940a;

        public v f5941b;

        public C2490a a() {
            return new C2490a(this.f5940a, this.f5941b);
        }

        public C0113a b(v vVar) {
            this.f5941b = vVar;
            return this;
        }

        public C0113a c(byte[] bArr) {
            return b(new v(bArr));
        }

        public C0113a d(AbstractC14551y abstractC14551y) {
            this.f5940a = abstractC14551y;
            return this;
        }

        public C0113a e(byte[] bArr) {
            return d(new C0(org.bouncycastle.util.a.p(bArr)));
        }
    }

    public C2490a(AbstractC14551y abstractC14551y, v vVar) {
        this.f5938b = abstractC14551y;
        this.f5939c = vVar;
    }

    public static C0113a u() {
        return new C0113a();
    }

    public static C2490a w(Object obj) {
        if (obj instanceof C2490a) {
            return (C2490a) obj;
        }
        if (obj != null) {
            return new C2490a(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.e(this.f5938b, this.f5939c);
    }

    public v v() {
        return this.f5939c;
    }

    public AbstractC14551y x() {
        return this.f5938b;
    }

    public C2490a(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        Iterator<InterfaceC14516g> it = e10.iterator();
        this.f5938b = AbstractC14551y.F(it.next());
        this.f5939c = v.y(it.next());
    }
}
