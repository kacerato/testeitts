package fm;

import java.io.IOException;
import java.io.OutputStream;

public class C13257a extends OutputStream {

    public final OutputStream f86589b;

    public final byte[] f86590c;

    public int f86591d;

    public C13257a(OutputStream outputStream) {
        this.f86589b = outputStream;
        this.f86590c = new byte[4096];
    }

    @Override
    public void close() throws IOException {
        flush();
        this.f86589b.close();
    }

    @Override
    public void flush() throws IOException {
        this.f86589b.write(this.f86590c, 0, this.f86591d);
        this.f86591d = 0;
        org.bouncycastle.util.a.e0(this.f86590c, (byte) 0);
    }

    @Override
    public void write(int i10) throws IOException {
        byte[] bArr = this.f86590c;
        int i11 = this.f86591d;
        int i12 = i11 + 1;
        this.f86591d = i12;
        bArr[i11] = (byte) i10;
        if (i12 == bArr.length) {
            flush();
        }
    }

    public C13257a(OutputStream outputStream, int i10) {
        this.f86589b = outputStream;
        this.f86590c = new byte[i10];
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        byte[] bArr2;
        byte[] bArr3 = this.f86590c;
        int length = bArr3.length;
        int i12 = this.f86591d;
        if (i11 < length - i12) {
            System.arraycopy(bArr, i10, bArr3, i12, i11);
        } else {
            int length2 = bArr3.length - i12;
            System.arraycopy(bArr, i10, bArr3, i12, length2);
            this.f86591d += length2;
            flush();
            int i13 = i10 + length2;
            i11 -= length2;
            while (true) {
                bArr2 = this.f86590c;
                if (i11 < bArr2.length) {
                    break;
                }
                this.f86589b.write(bArr, i13, bArr2.length);
                byte[] bArr4 = this.f86590c;
                i13 += bArr4.length;
                i11 -= bArr4.length;
            }
            if (i11 <= 0) {
                return;
            } else {
                System.arraycopy(bArr, i13, bArr2, this.f86591d, i11);
            }
        }
        this.f86591d += i11;
    }
}
