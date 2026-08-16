package Ag;

import Bg.s;
import java.io.IOException;
import java.io.OutputStream;
import vg.C15845b;

public class a extends b<C15845b> {

    public byte[] f542d;

    public int f543e;

    public a(j jVar, s sVar, char[] cArr, boolean z10) throws IOException {
        super(jVar, sVar, cArr, z10);
        this.f542d = new byte[16];
        this.f543e = 0;
    }

    @Override
    public void c() throws IOException {
        int i10 = this.f543e;
        if (i10 != 0) {
            super.write(this.f542d, 0, i10);
            this.f543e = 0;
        }
        g(d().e());
        super.c();
    }

    @Override
    public C15845b f(OutputStream outputStream, s sVar, char[] cArr, boolean z10) throws IOException {
        C15845b c15845b = new C15845b(cArr, sVar.a(), z10);
        j(c15845b);
        return c15845b;
    }

    public final void j(C15845b c15845b) throws IOException {
        g(c15845b.f());
        g(c15845b.d());
    }

    @Override
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10});
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        int i13 = this.f543e;
        if (i11 >= 16 - i13) {
            System.arraycopy(bArr, i10, this.f542d, i13, 16 - i13);
            byte[] bArr2 = this.f542d;
            super.write(bArr2, 0, bArr2.length);
            int i14 = 16 - this.f543e;
            int i15 = i11 - i14;
            this.f543e = 0;
            if (i15 != 0 && (i12 = i15 % 16) != 0) {
                System.arraycopy(bArr, (i15 + i14) - i12, this.f542d, 0, i12);
                this.f543e = i12;
                i15 -= i12;
            }
            super.write(bArr, i14, i15);
            return;
        }
        System.arraycopy(bArr, i10, this.f542d, i13, i11);
        this.f543e += i11;
    }
}
