package oh;

import java.io.IOException;

public abstract class AbstractC14524k extends B {

    public static final T f98902g = new a(AbstractC14524k.class, 8);

    public C14549x f98903b;

    public C14539s f98904c;

    public B f98905d;

    public int f98906e;

    public B f98907f;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B d(E e10) {
            return e10.N();
        }
    }

    public AbstractC14524k(C14549x c14549x, C14539s c14539s, B b10, int i10, B b11) {
        this.f98903b = c14549x;
        this.f98904c = c14539s;
        this.f98905d = b10;
        this.f98906e = F(i10);
        this.f98907f = G(i10, b11);
    }

    public static int F(int i10) {
        if (i10 >= 0 && i10 <= 2) {
            return i10;
        }
        throw new IllegalArgumentException("invalid encoding value: " + i10);
    }

    public static B G(int i10, B b10) {
        T t10;
        if (i10 == 1) {
            t10 = AbstractC14551y.f99002c;
        } else {
            if (i10 != 2) {
                return b10;
            }
            t10 = AbstractC14508c.f98859c;
        }
        return t10.b(b10);
    }

    public static B M(M m10) {
        V.c(m10);
        int g10 = m10.g();
        if (g10 == 0) {
            return m10.O().r();
        }
        if (g10 == 1) {
            return AbstractC14551y.G(m10, false);
        }
        if (g10 == 2) {
            return AbstractC14508c.I(m10, false);
        }
        throw new IllegalArgumentException("invalid tag: " + V.y(m10));
    }

    public static AbstractC14524k O(Object obj) {
        if (obj == null || (obj instanceof AbstractC14524k)) {
            return (AbstractC14524k) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof AbstractC14524k) {
                return (AbstractC14524k) r10;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (AbstractC14524k) f98902g.c((byte[]) obj);
            } catch (IOException e10) {
                throw new IllegalArgumentException("failed to construct external from byte[]: " + e10.getMessage());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static AbstractC14524k P(M m10, boolean z10) {
        return (AbstractC14524k) f98902g.f(m10, z10);
    }

    public static B Q(E e10, int i10) {
        if (e10.size() > i10) {
            return e10.I(i10).r();
        }
        throw new IllegalArgumentException("too few objects in input sequence");
    }

    @Override
    public B C() {
        return new C14540s0(this.f98903b, this.f98904c, this.f98905d, this.f98906e, this.f98907f);
    }

    @Override
    public B D() {
        return new S0(this.f98903b, this.f98904c, this.f98905d, this.f98906e, this.f98907f);
    }

    public abstract E E();

    public B H() {
        return this.f98905d;
    }

    public C14549x I() {
        return this.f98903b;
    }

    public int J() {
        return this.f98906e;
    }

    public B L() {
        return this.f98907f;
    }

    public C14539s N() {
        return this.f98904c;
    }

    @Override
    public int hashCode() {
        return (((org.bouncycastle.util.o.b(this.f98903b) ^ org.bouncycastle.util.o.b(this.f98904c)) ^ org.bouncycastle.util.o.b(this.f98905d)) ^ this.f98906e) ^ this.f98907f.hashCode();
    }

    @Override
    public boolean u(B b10) {
        if (this == b10) {
            return true;
        }
        if (!(b10 instanceof AbstractC14524k)) {
            return false;
        }
        AbstractC14524k abstractC14524k = (AbstractC14524k) b10;
        return org.bouncycastle.util.o.a(this.f98903b, abstractC14524k.f98903b) && org.bouncycastle.util.o.a(this.f98904c, abstractC14524k.f98904c) && org.bouncycastle.util.o.a(this.f98905d, abstractC14524k.f98905d) && this.f98906e == abstractC14524k.f98906e && this.f98907f.A(abstractC14524k.f98907f);
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.v(z10, 40);
        E().v(c14503a, false);
    }

    @Override
    public boolean x() {
        return true;
    }

    @Override
    public int y(boolean z10) throws IOException {
        return E().y(z10);
    }

    public AbstractC14524k(C14549x c14549x, C14539s c14539s, B b10, K0 k02) {
        this.f98903b = c14549x;
        this.f98904c = c14539s;
        this.f98905d = b10;
        this.f98906e = F(k02.g());
        this.f98907f = M(k02);
    }

    public AbstractC14524k(E e10) {
        int i10 = 0;
        B Q10 = Q(e10, 0);
        if (Q10 instanceof C14549x) {
            this.f98903b = (C14549x) Q10;
            Q10 = Q(e10, 1);
            i10 = 1;
        }
        if (Q10 instanceof C14539s) {
            this.f98904c = (C14539s) Q10;
            i10++;
            Q10 = Q(e10, i10);
        }
        if (!(Q10 instanceof M)) {
            this.f98905d = Q10;
            i10++;
            Q10 = Q(e10, i10);
        }
        if (e10.size() != i10 + 1) {
            throw new IllegalArgumentException("input sequence too large");
        }
        if (!(Q10 instanceof M)) {
            throw new IllegalArgumentException("No tagged object found in sequence. Structure doesn't seem to be of type External");
        }
        M m10 = (M) Q10;
        this.f98906e = F(m10.g());
        this.f98907f = M(m10);
    }
}
