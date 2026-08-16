package Qk;

import java.io.IOException;
import java.io.OutputStream;

public class C extends OutputStream {

    public final OutputStream f22458b;

    public final byte[] f22459c;

    public int f22460d = 0;

    public C(OutputStream outputStream, int i10) {
        this.f22458b = outputStream;
        this.f22459c = new byte[i10];
    }

    public byte[] c() {
        return org.bouncycastle.util.a.p(this.f22459c);
    }

    @Override
    public void write(int i10) throws IOException {
        int i11 = this.f22460d;
        byte[] bArr = this.f22459c;
        if (i11 != bArr.length) {
            this.f22460d = i11 + 1;
            bArr[i11] = (byte) i10;
            return;
        }
        byte b10 = bArr[0];
        System.arraycopy(bArr, 1, bArr, 0, bArr.length - 1);
        byte[] bArr2 = this.f22459c;
        bArr2[bArr2.length - 1] = (byte) i10;
        this.f22458b.write(b10);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        byte[] bArr2 = this.f22459c;
        if (i11 < bArr2.length) {
            for (int i12 = 0; i12 != i11; i12++) {
                write(bArr[i10 + i12]);
            }
        } else {
            this.f22458b.write(bArr2, 0, this.f22460d);
            byte[] bArr3 = this.f22459c;
            this.f22460d = bArr3.length;
            System.arraycopy(bArr, (i10 + i11) - bArr3.length, bArr3, 0, bArr3.length);
            this.f22458b.write(bArr, i10, i11 - this.f22459c.length);
        }
    }
}
