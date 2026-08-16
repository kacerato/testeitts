package oh;

import java.io.IOException;

public class C14512e extends B {

    public static final byte f98874d = 0;

    public static final byte f98875e = -1;

    public final byte f98878b;

    public static final T f98873c = new a(C14512e.class, 1);

    public static final C14512e f98876f = new C14512e((byte) 0);

    public static final C14512e f98877g = new C14512e((byte) -1);

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B e(C0 c02) {
            return C14512e.E(c02.H());
        }
    }

    public C14512e(byte b10) {
        this.f98878b = b10;
    }

    public static C14512e E(byte[] bArr) {
        if (bArr.length != 1) {
            throw new IllegalArgumentException("BOOLEAN value should have 1 byte in it");
        }
        byte b10 = bArr[0];
        return b10 != -1 ? b10 != 0 ? new C14512e(b10) : f98876f : f98877g;
    }

    public static C14512e F(int i10) {
        return i10 != 0 ? f98877g : f98876f;
    }

    public static C14512e G(Object obj) {
        if (obj == null || (obj instanceof C14512e)) {
            return (C14512e) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (C14512e) f98873c.c((byte[]) obj);
        } catch (IOException e10) {
            throw new IllegalArgumentException("failed to construct boolean from byte[]: " + e10.getMessage());
        }
    }

    public static C14512e H(M m10, boolean z10) {
        return (C14512e) f98873c.f(m10, z10);
    }

    public static C14512e I(boolean z10) {
        return z10 ? f98877g : f98876f;
    }

    @Override
    public B C() {
        return J() ? f98877g : f98876f;
    }

    public boolean J() {
        return this.f98878b != 0;
    }

    @Override
    public int hashCode() {
        return J() ? 1 : 0;
    }

    public String toString() {
        return J() ? "TRUE" : "FALSE";
    }

    @Override
    public boolean u(B b10) {
        return (b10 instanceof C14512e) && J() == ((C14512e) b10).J();
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.o(z10, 1, this.f98878b);
    }

    @Override
    public boolean x() {
        return false;
    }

    @Override
    public int y(boolean z10) {
        return C14503A.i(z10, 1);
    }
}
