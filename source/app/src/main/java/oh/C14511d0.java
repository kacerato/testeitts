package oh;

import java.io.IOException;
import java.io.OutputStream;

public class C14511d0 extends AbstractC14507b0 {

    public class a extends OutputStream {

        public byte[] f98865b;

        public int f98866c = 0;

        public E0 f98867d;

        public a(byte[] bArr) {
            this.f98865b = bArr;
            this.f98867d = new E0(C14511d0.this.f98960a);
        }

        @Override
        public void close() throws IOException {
            int i10 = this.f98866c;
            if (i10 != 0) {
                C0.K(this.f98867d, true, this.f98865b, 0, i10);
            }
            this.f98867d.e();
            C14511d0.this.b();
        }

        @Override
        public void write(int i10) throws IOException {
            byte[] bArr = this.f98865b;
            int i11 = this.f98866c;
            int i12 = i11 + 1;
            this.f98866c = i12;
            bArr[i11] = (byte) i10;
            if (i12 == bArr.length) {
                C0.K(this.f98867d, true, bArr, 0, bArr.length);
                this.f98866c = 0;
            }
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            byte[] bArr2 = this.f98865b;
            int length = bArr2.length;
            int i12 = this.f98866c;
            int i13 = length - i12;
            if (i11 < i13) {
                System.arraycopy(bArr, i10, bArr2, i12, i11);
                this.f98866c += i11;
                return;
            }
            if (i12 > 0) {
                System.arraycopy(bArr, i10, bArr2, i12, i13);
                C0.K(this.f98867d, true, this.f98865b, 0, length);
            } else {
                i13 = 0;
            }
            while (true) {
                int i14 = i11 - i13;
                if (i14 < length) {
                    System.arraycopy(bArr, i10 + i13, this.f98865b, 0, i14);
                    this.f98866c = i14;
                    return;
                } else {
                    C0.K(this.f98867d, true, bArr, i10 + i13, length);
                    i13 += length;
                }
            }
        }
    }

    public C14511d0(OutputStream outputStream) throws IOException {
        super(outputStream);
        c(36);
    }

    public OutputStream e() {
        return f(new byte[1000]);
    }

    public OutputStream f(byte[] bArr) {
        return new a(bArr);
    }

    public C14511d0(OutputStream outputStream, int i10, boolean z10) throws IOException {
        super(outputStream, i10, z10);
        c(36);
    }
}
