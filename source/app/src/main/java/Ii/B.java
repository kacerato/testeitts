package Ii;

import Bi.InterfaceC2392y;
import java.io.ByteArrayOutputStream;

public class B implements InterfaceC2392y {

    public b f9451a = new b();

    public static class b extends ByteArrayOutputStream {
        public b() {
        }

        public void a(byte[] bArr, int i10) {
            System.arraycopy(this.buf, 0, bArr, i10, size());
        }

        @Override
        public void reset() {
            super.reset();
            org.bouncycastle.util.a.n(this.buf);
        }
    }

    @Override
    public String b() {
        return "NULL";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        int size = this.f9451a.size();
        this.f9451a.a(bArr, i10);
        reset();
        return size;
    }

    @Override
    public int f() {
        return this.f9451a.size();
    }

    @Override
    public void reset() {
        this.f9451a.reset();
    }

    @Override
    public void update(byte b10) {
        this.f9451a.write(b10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f9451a.write(bArr, i10, i11);
    }
}
