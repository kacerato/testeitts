package oh;

import java.io.IOException;
import java.io.OutputStream;

public abstract class B extends AbstractC14545v {
    public static B B(byte[] bArr) throws IOException {
        r rVar = new r(bArr);
        try {
            B k10 = rVar.k();
            if (rVar.available() == 0) {
                return k10;
            }
            throw new IOException("Extra data detected in stream");
        } catch (ClassCastException unused) {
            throw new IOException("cannot recognise object in stream");
        }
    }

    public final boolean A(B b10) {
        return this == b10 || u(b10);
    }

    public B C() {
        return this;
    }

    public B D() {
        return this;
    }

    @Override
    public void e(OutputStream outputStream) throws IOException {
        C14503A b10 = C14503A.b(outputStream);
        b10.z(this, true);
        b10.e();
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC14516g) && u(((InterfaceC14516g) obj).r());
    }

    @Override
    public void f(OutputStream outputStream, String str) throws IOException {
        C14503A c10 = C14503A.c(outputStream, str);
        c10.z(this, true);
        c10.e();
    }

    @Override
    public abstract int hashCode();

    @Override
    public final B r() {
        return this;
    }

    public abstract boolean u(B b10);

    public abstract void v(C14503A c14503a, boolean z10) throws IOException;

    public abstract boolean x();

    public abstract int y(boolean z10) throws IOException;

    public final boolean z(InterfaceC14516g interfaceC14516g) {
        return this == interfaceC14516g || (interfaceC14516g != null && u(interfaceC14516g.r()));
    }
}
