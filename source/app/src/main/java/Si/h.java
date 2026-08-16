package Si;

import Bi.I;
import Bi.InterfaceC2379k;
import Li.C2798x;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class h implements I {

    public static final int f23408j = 8;

    public byte[] f23409a;

    public int f23410b;

    public int f23411c;

    public int f23412d;

    public C2798x f23413e;

    public byte[] f23414f;

    public byte[] f23415g;

    public byte[] f23416h;

    public boolean f23417i = false;

    public h(int i10, int i11) {
        this.f23413e = new C2798x(i10);
        int i12 = i10 / 8;
        this.f23412d = i12;
        this.f23411c = i11 / 8;
        this.f23414f = new byte[i12];
        this.f23416h = new byte[i12];
        this.f23415g = new byte[i12];
        this.f23409a = new byte[i12];
    }

    private void e(byte[] bArr, int i10) {
        f(this.f23414f, 0, bArr, i10, this.f23415g);
        this.f23413e.g(this.f23415g, 0, this.f23414f, 0);
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        if (!(interfaceC2379k instanceof C3360o0)) {
            throw new IllegalArgumentException("Invalid parameter passed to DSTU7624Mac");
        }
        this.f23413e.a(true, interfaceC2379k);
        this.f23417i = true;
        reset();
    }

    @Override
    public String b() {
        return "DSTU7624Mac";
    }

    @Override
    public int c(byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
        int i11 = this.f23410b;
        byte[] bArr2 = this.f23409a;
        if (i11 % bArr2.length != 0) {
            throw new DataLengthException("input must be a multiple of blocksize");
        }
        f(this.f23414f, 0, bArr2, 0, this.f23415g);
        f(this.f23415g, 0, this.f23416h, 0, this.f23414f);
        C2798x c2798x = this.f23413e;
        byte[] bArr3 = this.f23414f;
        c2798x.g(bArr3, 0, bArr3, 0);
        int i12 = this.f23411c;
        if (i12 + i10 > bArr.length) {
            throw new OutputLengthException("output buffer too short");
        }
        System.arraycopy(this.f23414f, 0, bArr, i10, i12);
        reset();
        return this.f23411c;
    }

    @Override
    public int d() {
        return this.f23411c;
    }

    public final void f(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3) {
        int length = bArr.length - i10;
        int i12 = this.f23412d;
        if (length < i12 || bArr2.length - i11 < i12 || bArr3.length < i12) {
            throw new IllegalArgumentException("some of input buffers too short");
        }
        for (int i13 = 0; i13 < this.f23412d; i13++) {
            bArr3[i13] = (byte) (bArr[i13 + i10] ^ bArr2[i13 + i11]);
        }
    }

    @Override
    public void reset() {
        org.bouncycastle.util.a.e0(this.f23414f, (byte) 0);
        org.bouncycastle.util.a.e0(this.f23415g, (byte) 0);
        org.bouncycastle.util.a.e0(this.f23416h, (byte) 0);
        org.bouncycastle.util.a.e0(this.f23409a, (byte) 0);
        this.f23413e.reset();
        if (this.f23417i) {
            C2798x c2798x = this.f23413e;
            byte[] bArr = this.f23416h;
            c2798x.g(bArr, 0, bArr, 0);
        }
        this.f23410b = 0;
    }

    @Override
    public void update(byte b10) {
        int i10 = this.f23410b;
        byte[] bArr = this.f23409a;
        if (i10 == bArr.length) {
            e(bArr, 0);
            this.f23410b = 0;
        }
        byte[] bArr2 = this.f23409a;
        int i11 = this.f23410b;
        this.f23410b = i11 + 1;
        bArr2[i11] = b10;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("can't have a negative input length!");
        }
        int c10 = this.f23413e.c();
        int i12 = this.f23410b;
        int i13 = c10 - i12;
        if (i11 > i13) {
            System.arraycopy(bArr, i10, this.f23409a, i12, i13);
            e(this.f23409a, 0);
            this.f23410b = 0;
            i11 -= i13;
            i10 += i13;
            while (i11 > c10) {
                e(bArr, i10);
                i11 -= c10;
                i10 += c10;
            }
        }
        System.arraycopy(bArr, i10, this.f23409a, this.f23410b, i11);
        this.f23410b += i11;
    }
}
