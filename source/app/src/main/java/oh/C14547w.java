package oh;

import java.io.IOException;

public final class C14547w extends B {

    public static final T f98988c = new a(C14547w.class, 7);

    public final AbstractC14534p f98989b;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B d(E e10) {
            return new C14547w((AbstractC14534p) AbstractC14534p.f98967c.d(e10));
        }

        @Override
        public B e(C0 c02) {
            return new C14547w((AbstractC14534p) AbstractC14534p.f98967c.e(c02));
        }
    }

    public C14547w(AbstractC14534p abstractC14534p) {
        if (abstractC14534p == null) {
            throw new NullPointerException("'baseGraphicString' cannot be null");
        }
        this.f98989b = abstractC14534p;
    }

    public static C14547w E(byte[] bArr) {
        return new C14547w(AbstractC14534p.E(bArr));
    }

    public static C14547w G(Object obj) {
        if (obj == null || (obj instanceof C14547w)) {
            return (C14547w) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof C14547w) {
                return (C14547w) r10;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (C14547w) f98988c.c((byte[]) obj);
            } catch (IOException e10) {
                throw new IllegalArgumentException("failed to construct object descriptor from byte[]: " + e10.getMessage());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static C14547w H(M m10, boolean z10) {
        return (C14547w) f98988c.f(m10, z10);
    }

    @Override
    public B C() {
        AbstractC14534p abstractC14534p = (AbstractC14534p) this.f98989b.C();
        return abstractC14534p == this.f98989b ? this : new C14547w(abstractC14534p);
    }

    @Override
    public B D() {
        AbstractC14534p abstractC14534p = (AbstractC14534p) this.f98989b.D();
        return abstractC14534p == this.f98989b ? this : new C14547w(abstractC14534p);
    }

    public AbstractC14534p F() {
        return this.f98989b;
    }

    @Override
    public int hashCode() {
        return ~this.f98989b.hashCode();
    }

    @Override
    public boolean u(B b10) {
        if (b10 instanceof C14547w) {
            return this.f98989b.u(((C14547w) b10).f98989b);
        }
        return false;
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.v(z10, 7);
        this.f98989b.v(c14503a, false);
    }

    @Override
    public boolean x() {
        return false;
    }

    @Override
    public int y(boolean z10) {
        return this.f98989b.y(z10);
    }
}
