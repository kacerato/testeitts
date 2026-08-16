package Ii;

import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class C2643a implements Bi.D {

    public b f9654a;

    public final String f9655b;

    public long f9657d;

    public long f9658e;

    public long f9659f;

    public long f9660g;

    public long f9661h;

    public final int f9663j;

    public final ByteArrayOutputStream f9656c = new ByteArrayOutputStream();

    public final int f9662i = 32;

    public static class C0238a {

        public static final int[] f9664a;

        static {
            int[] iArr = new int[b.values().length];
            f9664a = iArr;
            try {
                iArr[b.AsconHash.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9664a[b.AsconHashA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum b {
        AsconHash,
        AsconHashA
    }

    public C2643a(b bVar) {
        String str;
        this.f9654a = bVar;
        int i10 = C0238a.f9664a[bVar.ordinal()];
        if (i10 == 1) {
            this.f9663j = 12;
            str = "Ascon-Hash";
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException("Invalid parameter settings for Ascon Hash");
            }
            this.f9663j = 8;
            str = "Ascon-HashA";
        }
        this.f9655b = str;
        reset();
    }

    private long a(byte[] bArr, int i10, int i11) {
        long j10 = 0;
        for (int i12 = 0; i12 < i11; i12++) {
            j10 |= (bArr[i12 + i10] & 255) << ((7 - i12) << 3);
        }
        return j10;
    }

    private void d(int i10) {
        if (i10 == 12) {
            k(240L);
            k(225L);
            k(210L);
            k(195L);
        }
        if (i10 >= 8) {
            k(180L);
            k(165L);
        }
        k(150L);
        k(135L);
        k(120L);
        k(105L);
        k(90L);
        k(75L);
    }

    private long g(int i10) {
        return 128 << (56 - (i10 << 3));
    }

    private long j(long j10, int i10) {
        return (j10 << (64 - i10)) | (j10 >>> i10);
    }

    private void k(long j10) {
        long j11 = this.f9657d;
        long j12 = this.f9658e;
        long j13 = this.f9659f;
        long j14 = this.f9660g;
        long j15 = this.f9661h;
        long j16 = ((((j11 ^ j12) ^ j13) ^ j14) ^ j10) ^ ((((j11 ^ j13) ^ j15) ^ j10) & j12);
        long j17 = ((((j11 ^ j13) ^ j14) ^ j15) ^ j10) ^ (((j12 ^ j13) ^ j10) & (j12 ^ j14));
        long j18 = (((j12 ^ j13) ^ j15) ^ j10) ^ (j14 & j15);
        long j19 = ((j13 ^ (j11 ^ j12)) ^ j10) ^ ((~j11) & (j14 ^ j15));
        long j20 = ((j11 ^ j15) & j12) ^ ((j14 ^ j12) ^ j15);
        this.f9657d = (j(j16, 19) ^ j16) ^ j(j16, 28);
        this.f9658e = j(j17, 61) ^ (j(j17, 39) ^ j17);
        this.f9659f = ~(j(j18, 6) ^ (j(j18, 1) ^ j18));
        this.f9660g = (j(j19, 10) ^ j19) ^ j(j19, 17);
        this.f9661h = j(j20, 41) ^ (j(j20, 7) ^ j20);
    }

    private void l(byte[] bArr, int i10, long j10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            bArr[i12 + i10] = (byte) (j10 >>> ((7 - i12) << 3));
        }
    }

    @Override
    public String b() {
        return this.f9655b;
    }

    @Override
    public int c(byte[] bArr, int i10) {
        long j10;
        if (i10 + 32 > bArr.length) {
            throw new OutputLengthException("output buffer is too short");
        }
        byte[] byteArray = this.f9656c.toByteArray();
        int size = this.f9656c.size();
        int i11 = 0;
        while (true) {
            j10 = this.f9657d;
            if (size < 8) {
                break;
            }
            this.f9657d = j10 ^ a(byteArray, i11, 8);
            d(this.f9663j);
            i11 += 8;
            size -= 8;
        }
        long a10 = j10 ^ a(byteArray, i11, size);
        this.f9657d = a10;
        this.f9657d = g(size) ^ a10;
        d(12);
        int i12 = 32;
        while (true) {
            long j11 = this.f9657d;
            if (i12 <= 8) {
                l(bArr, i10, j11, i12);
                reset();
                return 32;
            }
            l(bArr, i10, j11, 8);
            d(this.f9663j);
            i10 += 8;
            i12 -= 8;
        }
    }

    @Override
    public int f() {
        return 32;
    }

    @Override
    public int i() {
        return 8;
    }

    @Override
    public void reset() {
        long j10;
        this.f9656c.reset();
        int i10 = C0238a.f9664a[this.f9654a.ordinal()];
        if (i10 == 1) {
            this.f9657d = -1255492011513352131L;
            this.f9658e = -8380609354527731710L;
            this.f9659f = -5437372128236807582L;
            this.f9660g = 4834782570098516968L;
            j10 = 3787428097924915520L;
        } else {
            if (i10 != 2) {
                return;
            }
            this.f9657d = 92044056785660070L;
            this.f9658e = 8326807761760157607L;
            this.f9659f = 3371194088139667532L;
            this.f9660g = -2956994353054992515L;
            j10 = -6828509670848688761L;
        }
        this.f9661h = j10;
    }

    @Override
    public void update(byte b10) {
        this.f9656c.write(b10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        this.f9656c.write(bArr, i10, i11);
    }
}
