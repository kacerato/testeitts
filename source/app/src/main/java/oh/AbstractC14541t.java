package oh;

import java.io.IOException;

public abstract class AbstractC14541t extends B {

    public static final T f98982b = new a(AbstractC14541t.class, 5);

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B e(C0 c02) {
            return AbstractC14541t.E(c02.H());
        }
    }

    public static AbstractC14541t E(byte[] bArr) {
        if (bArr.length == 0) {
            return A0.f98776c;
        }
        throw new IllegalStateException("malformed NULL encoding encountered");
    }

    public static AbstractC14541t F(Object obj) {
        if (obj instanceof AbstractC14541t) {
            return (AbstractC14541t) obj;
        }
        if (obj == null) {
            return null;
        }
        try {
            return (AbstractC14541t) f98982b.c((byte[]) obj);
        } catch (IOException e10) {
            throw new IllegalArgumentException("failed to construct NULL from byte[]: " + e10.getMessage());
        }
    }

    public static AbstractC14541t G(M m10, boolean z10) {
        return (AbstractC14541t) f98982b.f(m10, z10);
    }

    @Override
    public int hashCode() {
        return -1;
    }

    public String toString() {
        return "NULL";
    }

    @Override
    public boolean u(B b10) {
        return b10 instanceof AbstractC14541t;
    }
}
