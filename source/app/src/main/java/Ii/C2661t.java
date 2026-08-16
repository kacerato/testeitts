package Ii;

import Bi.InterfaceC2392y;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class C2661t implements InterfaceC2392y {

    public long f9932a;

    public long f9933b;

    public long f9934c;

    public long f9935d;

    public long f9936e;

    public long f9937f;

    public long f9938g;

    public long f9939h;

    public long f9940i;

    public long f9941j;

    public ByteArrayOutputStream f9942k = new ByteArrayOutputStream();

    private void g(long j10) {
        long j11 = this.f9932a;
        long j12 = this.f9933b;
        long j13 = this.f9934c;
        long j14 = this.f9935d;
        long j15 = this.f9936e;
        long j16 = ((((j11 ^ j12) ^ j13) ^ j14) ^ j10) ^ ((((j11 ^ j13) ^ j15) ^ j10) & j12);
        this.f9937f = j16;
        this.f9938g = ((((j11 ^ j13) ^ j14) ^ j15) ^ j10) ^ (((j12 ^ j13) ^ j10) & (j12 ^ j14));
        this.f9939h = (((j12 ^ j13) ^ j15) ^ j10) ^ (j14 & j15);
        this.f9940i = ((j13 ^ (j11 ^ j12)) ^ j10) ^ ((~j11) & (j14 ^ j15));
        this.f9941j = ((j11 ^ j15) & j12) ^ ((j12 ^ j14) ^ j15);
        this.f9932a = (d(j16, 19L) ^ j16) ^ d(this.f9937f, 28L);
        long j17 = this.f9938g;
        this.f9933b = (j17 ^ d(j17, 39L)) ^ d(this.f9938g, 61L);
        long j18 = this.f9939h;
        this.f9934c = ~((j18 ^ d(j18, 1L)) ^ d(this.f9939h, 6L));
        long j19 = this.f9940i;
        this.f9935d = (j19 ^ d(j19, 10L)) ^ d(this.f9940i, 17L);
        long j20 = this.f9941j;
        this.f9936e = (j20 ^ d(j20, 7L)) ^ d(this.f9941j, 41L);
    }

    public final void a() {
        g(240L);
        g(225L);
        g(210L);
        g(195L);
        g(180L);
        g(165L);
        g(150L);
        g(135L);
        g(120L);
        g(105L);
        g(90L);
        g(75L);
    }

    @Override
    public String b() {
        return "ISAP Hash";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        if (i10 + 32 > bArr.length) {
            throw new OutputLengthException("output buffer is too short");
        }
        this.f9941j = 0L;
        this.f9940i = 0L;
        this.f9939h = 0L;
        this.f9938g = 0L;
        this.f9937f = 0L;
        this.f9932a = -1255492011513352131L;
        this.f9933b = -8380609354527731710L;
        this.f9934c = -5437372128236807582L;
        this.f9935d = 4834782570098516968L;
        this.f9936e = 3787428097924915520L;
        byte[] byteArray = this.f9942k.toByteArray();
        int length = byteArray.length;
        int i11 = length >> 3;
        long[] jArr = new long[i11];
        int i12 = 0;
        org.bouncycastle.util.p.z(byteArray, 0, jArr, 0, i11);
        int i13 = 0;
        while (length >= 8) {
            this.f9932a ^= j(jArr[i13]);
            a();
            length -= 8;
            i13++;
        }
        long j10 = this.f9932a;
        int i14 = (7 - length) << 3;
        long j11 = 128;
        while (true) {
            this.f9932a = j10 ^ (j11 << i14);
            if (length <= 0) {
                break;
            }
            j10 = this.f9932a;
            length--;
            j11 = byteArray[(i13 << 3) + length] & 255;
            i14 = (7 - length) << 3;
        }
        a();
        long[] jArr2 = new long[4];
        while (true) {
            long j12 = j(this.f9932a);
            if (i12 >= 3) {
                jArr2[i12] = j12;
                org.bouncycastle.util.p.L(jArr2, bArr, i10);
                this.f9942k.reset();
                return 32;
            }
            jArr2[i12] = j12;
            a();
            i12++;
        }
    }

    public final long d(long j10, long j11) {
        return (j10 << ((int) (64 - j11))) | (j10 >>> ((int) j11));
    }

    @Override
    public int f() {
        return 32;
    }

    public long j(long j10) {
        return (d(j10, 56L) & 1095216660735L) | (d(j10, 8L) & (-72057589759737856L)) | (d(j10, 24L) & 71776119077928960L) | (d(j10, 40L) & 280375465148160L);
    }

    @Override
    public void reset() {
        this.f9942k.reset();
    }

    @Override
    public void update(byte b10) {
        this.f9942k.write(b10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        this.f9942k.write(bArr, i10, i11);
    }
}
