package oh;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import yd.C16181m;

public abstract class AbstractC14551y extends B implements InterfaceC14553z {

    public static final T f99002c = new a(AbstractC14551y.class, 4);

    public static final byte[] f99003d = new byte[0];

    public byte[] f99004b;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B d(E e10) {
            return e10.O();
        }

        @Override
        public B e(C0 c02) {
            return c02;
        }
    }

    public AbstractC14551y(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("'string' cannot be null");
        }
        this.f99004b = bArr;
    }

    public static AbstractC14551y E(byte[] bArr) {
        return new C0(bArr);
    }

    public static AbstractC14551y F(Object obj) {
        if (obj == null || (obj instanceof AbstractC14551y)) {
            return (AbstractC14551y) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof AbstractC14551y) {
                return (AbstractC14551y) r10;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (AbstractC14551y) f99002c.c((byte[]) obj);
            } catch (IOException e10) {
                throw new IllegalArgumentException("failed to construct OCTET STRING from byte[]: " + e10.getMessage());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static AbstractC14551y G(M m10, boolean z10) {
        return (AbstractC14551y) f99002c.f(m10, z10);
    }

    @Override
    public B C() {
        return new C0(this.f99004b);
    }

    @Override
    public B D() {
        return new C0(this.f99004b);
    }

    public byte[] H() {
        return this.f99004b;
    }

    public int I() {
        return H().length;
    }

    public InterfaceC14553z J() {
        return this;
    }

    @Override
    public InputStream a() {
        return new ByteArrayInputStream(this.f99004b);
    }

    @Override
    public B c() {
        return r();
    }

    @Override
    public int hashCode() {
        return org.bouncycastle.util.a.t0(H());
    }

    public String toString() {
        return C16181m.f130230g + org.bouncycastle.util.w.c(em.h.h(this.f99004b));
    }

    @Override
    public boolean u(B b10) {
        if (b10 instanceof AbstractC14551y) {
            return org.bouncycastle.util.a.g(this.f99004b, ((AbstractC14551y) b10).f99004b);
        }
        return false;
    }
}
