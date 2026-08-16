package uk;

import em.C13169d;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class C15640b extends FilterOutputStream {

    public static final C13169d f120785e = new C13169d();

    public static final int f120786f = 54;

    public static final int f120787g = 74;

    public final byte[] f120788b;

    public final byte[] f120789c;

    public int f120790d;

    public C15640b(OutputStream outputStream) {
        super(outputStream);
        this.f120788b = new byte[54];
        byte[] bArr = new byte[74];
        this.f120789c = bArr;
        this.f120790d = 0;
        bArr[72] = 13;
        bArr[73] = 10;
    }

    public final void a(byte[] bArr, int i10) throws IOException {
        f120785e.g(bArr, i10, 54, this.f120789c, 0);
        this.out.write(this.f120789c, 0, 74);
    }

    @Override
    public void close() throws IOException {
        int i10 = this.f120790d;
        if (i10 > 0) {
            int g10 = f120785e.g(this.f120788b, 0, i10, this.f120789c, 0);
            this.f120790d = 0;
            byte[] bArr = this.f120789c;
            bArr[g10] = 13;
            bArr[g10 + 1] = 10;
            this.out.write(bArr, 0, g10 + 2);
        }
        this.out.close();
    }

    @Override
    public void write(int i10) throws IOException {
        byte[] bArr = this.f120788b;
        int i11 = this.f120790d;
        int i12 = i11 + 1;
        this.f120790d = i12;
        bArr[i11] = (byte) i10;
        if (i12 == 54) {
            a(bArr, 0);
            this.f120790d = 0;
        }
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.f120790d;
        int i13 = 54 - i12;
        if (i11 < i13) {
            System.arraycopy(bArr, i10, this.f120788b, i12, i11);
            this.f120790d += i11;
            return;
        }
        if (i12 > 0) {
            System.arraycopy(bArr, i10, this.f120788b, i12, i13);
            a(this.f120788b, 0);
        } else {
            i13 = 0;
        }
        while (true) {
            int i14 = i11 - i13;
            if (i14 < 54) {
                System.arraycopy(bArr, i10 + i13, this.f120788b, 0, i14);
                this.f120790d = i14;
                return;
            } else {
                a(bArr, i10 + i13);
                i13 += 54;
            }
        }
    }
}
