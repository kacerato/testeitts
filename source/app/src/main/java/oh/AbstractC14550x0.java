package oh;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public abstract class AbstractC14550x0 extends AbstractC14532o {

    public boolean f98999b;

    public boolean f99000c;

    public int f99001d;

    public AbstractC14550x0(OutputStream outputStream) {
        super(outputStream);
        this.f98999b = false;
    }

    public void b(int i10, byte[] bArr) throws IOException {
        if (!this.f98999b) {
            c(this.f98960a, i10, bArr);
            return;
        }
        int i11 = this.f99001d;
        int i12 = i11 | 128;
        if (this.f99000c) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            c(byteArrayOutputStream, i10, bArr);
            c(this.f98960a, i11 | 160, byteArrayOutputStream.toByteArray());
            return;
        }
        if ((i10 & 32) != 0) {
            c(this.f98960a, i11 | 160, bArr);
        } else {
            c(this.f98960a, i12, bArr);
        }
    }

    public void c(OutputStream outputStream, int i10, byte[] bArr) throws IOException {
        outputStream.write(i10);
        d(outputStream, bArr.length);
        outputStream.write(bArr);
    }

    public final void d(OutputStream outputStream, int i10) throws IOException {
        if (i10 <= 127) {
            outputStream.write((byte) i10);
            return;
        }
        int i11 = i10;
        int i12 = 1;
        while (true) {
            i11 >>>= 8;
            if (i11 == 0) {
                break;
            } else {
                i12++;
            }
        }
        outputStream.write((byte) (i12 | 128));
        for (int i13 = (i12 - 1) * 8; i13 >= 0; i13 -= 8) {
            outputStream.write((byte) (i10 >> i13));
        }
    }

    public AbstractC14550x0(OutputStream outputStream, int i10, boolean z10) {
        super(outputStream);
        this.f98999b = true;
        this.f99000c = z10;
        this.f99001d = i10;
    }
}
