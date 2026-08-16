package oh;

import java.io.IOException;
import java.io.OutputStream;

public class C14503A {

    public OutputStream f98775a;

    public C14503A(OutputStream outputStream) {
        this.f98775a = outputStream;
    }

    public static C14503A b(OutputStream outputStream) {
        return new C14503A(outputStream);
    }

    public static C14503A c(OutputStream outputStream, String str) {
        return str.equals(InterfaceC14520i.f98892a) ? new E0(outputStream) : str.equals(InterfaceC14520i.f98893b) ? new U0(outputStream) : new C14503A(outputStream);
    }

    public static int h(int i10) {
        if (i10 < 128) {
            return 1;
        }
        int i11 = 2;
        while (true) {
            i10 >>>= 8;
            if (i10 == 0) {
                return i11;
            }
            i11++;
        }
    }

    public static int i(boolean z10, int i10) {
        return (z10 ? 1 : 0) + h(i10) + i10;
    }

    public static int j(int i10) {
        if (i10 < 31) {
            return 1;
        }
        int i11 = 2;
        while (true) {
            i10 >>>= 7;
            if (i10 == 0) {
                return i11;
            }
            i11++;
        }
    }

    public void A(B[] bArr) throws IOException {
        for (B b10 : bArr) {
            b10.v(this, true);
        }
    }

    public void a() throws IOException {
        this.f98775a.close();
    }

    public void d() throws IOException {
        this.f98775a.flush();
    }

    public void e() throws IOException {
    }

    public E0 f() {
        return new E0(this.f98775a);
    }

    public U0 g() {
        return new U0(this.f98775a);
    }

    public final void k(int i10) throws IOException {
        this.f98775a.write(i10);
    }

    public final void l(byte[] bArr, int i10, int i11) throws IOException {
        this.f98775a.write(bArr, i10, i11);
    }

    public final void m(int i10) throws IOException {
        if (i10 < 128) {
            k(i10);
            return;
        }
        int i11 = 5;
        byte[] bArr = new byte[5];
        while (true) {
            int i12 = i11 - 1;
            bArr[i12] = (byte) i10;
            i10 >>>= 8;
            if (i10 == 0) {
                int i13 = i11 - 2;
                bArr[i13] = (byte) ((5 - i12) | 128);
                l(bArr, i13, 6 - i12);
                return;
            }
            i11 = i12;
        }
    }

    public void n(InterfaceC14516g[] interfaceC14516gArr) throws IOException {
        for (InterfaceC14516g interfaceC14516g : interfaceC14516gArr) {
            interfaceC14516g.r().v(this, true);
        }
    }

    public final void o(boolean z10, int i10, byte b10) throws IOException {
        v(z10, i10);
        m(1);
        k(b10);
    }

    public final void p(boolean z10, int i10, byte b10, byte[] bArr, int i11, int i12) throws IOException {
        v(z10, i10);
        m(i12 + 1);
        k(b10);
        l(bArr, i11, i12);
    }

    public final void q(boolean z10, int i10, int i11, byte[] bArr) throws IOException {
        w(z10, i10, i11);
        m(bArr.length);
        l(bArr, 0, bArr.length);
    }

    public final void r(boolean z10, int i10, byte[] bArr) throws IOException {
        v(z10, i10);
        m(bArr.length);
        l(bArr, 0, bArr.length);
    }

    public final void s(boolean z10, int i10, byte[] bArr, int i11, int i12) throws IOException {
        v(z10, i10);
        m(i12);
        l(bArr, i11, i12);
    }

    public final void t(boolean z10, int i10, byte[] bArr, int i11, int i12, byte b10) throws IOException {
        v(z10, i10);
        m(i12 + 1);
        l(bArr, i11, i12);
        k(b10);
    }

    public final void u(boolean z10, int i10, InterfaceC14516g[] interfaceC14516gArr) throws IOException {
        v(z10, i10);
        k(128);
        n(interfaceC14516gArr);
        k(0);
        k(0);
    }

    public final void v(boolean z10, int i10) throws IOException {
        if (z10) {
            k(i10);
        }
    }

    public final void w(boolean z10, int i10, int i11) throws IOException {
        if (z10) {
            if (i11 < 31) {
                k(i10 | i11);
                return;
            }
            byte[] bArr = new byte[6];
            int i12 = 5;
            bArr[5] = (byte) (i11 & 127);
            while (i11 > 127) {
                i11 >>>= 7;
                i12--;
                bArr[i12] = (byte) ((i11 & 127) | 128);
            }
            int i13 = i12 - 1;
            bArr[i13] = (byte) (31 | i10);
            l(bArr, i13, 6 - i13);
        }
    }

    public final void x(InterfaceC14516g interfaceC14516g) throws IOException {
        if (interfaceC14516g == null) {
            throw new IOException("null object detected");
        }
        z(interfaceC14516g.r(), true);
        e();
    }

    public final void y(B b10) throws IOException {
        if (b10 == null) {
            throw new IOException("null object detected");
        }
        z(b10, true);
        e();
    }

    public void z(B b10, boolean z10) throws IOException {
        b10.v(this, z10);
    }
}
