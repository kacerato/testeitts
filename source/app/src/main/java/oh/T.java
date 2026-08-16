package oh;

import java.io.IOException;

public abstract class T extends O {

    public final L f98831b;

    public T(Class cls, int i10) {
        super(cls);
        this.f98831b = L.a(0, i10);
    }

    public final B b(B b10) {
        if (this.f98821a.isInstance(b10)) {
            return b10;
        }
        throw new IllegalStateException("unexpected object: " + b10.getClass().getName());
    }

    public final B c(byte[] bArr) throws IOException {
        return b(B.B(bArr));
    }

    public B d(E e10) {
        throw new IllegalStateException("unexpected implicit constructed encoding");
    }

    public B e(C0 c02) {
        throw new IllegalStateException("unexpected implicit primitive encoding");
    }

    public final B f(M m10, boolean z10) {
        return b(V.c(m10).N(z10, this));
    }

    public final L g() {
        return this.f98831b;
    }
}
