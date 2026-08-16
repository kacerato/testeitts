package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import java.nio.ShortBuffer;
import java.util.Arrays;
import java.util.function.Function;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

public final class C5460Ko extends C8154kr {

    public static final boolean f41781j = true;

    public final int f41782g;

    public final long f41783h;

    public final short[] f41784i;

    public C5460Ko(C5693Op c5693Op) {
        super(c5693Op);
        char b10 = (char) (c5693Op.b() & 65535);
        this.f41782g = b10;
        long b11 = (((char) (c5693Op.b() & 65535)) & Sg.b.f23266s) | ((((char) (65535 & c5693Op.b())) & Sg.b.f23266s) << 16);
        this.f41783h = b11;
        if (!f41781j && b10 * b11 >= 2147483647L) {
            throw new AssertionError();
        }
        this.f41784i = new short[((int) ((b11 * b10) + 1)) / 2];
        int i10 = 0;
        while (true) {
            short[] sArr = this.f41784i;
            if (i10 >= sArr.length) {
                return;
            }
            sArr[i10] = (short) c5693Op.b();
            i10++;
        }
    }

    @Override
    public final void a(C6382aB c6382aB) {
    }

    @Override
    public final int hashCode() {
        int i10 = (this.f41782g + 17036887) * 31;
        long j10 = this.f41783h;
        return Arrays.hashCode(this.f41784i) + ((i10 + ((int) (j10 ^ (j10 >>> 32)))) * 31);
    }

    @Override
    public final int y() {
        return this.f41784i.length + 4;
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        return b((String) null) + "[FillArrayPayload], width: " + this.f41782g + ", size:  " + this.f41783h;
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((C5460Ko) obj).f41782g;
                return i10;
            }
        }).a(new ToLongFunction() {
            @Override
            public final long applyAsLong(Object obj) {
                long j10;
                j10 = ((C5460Ko) obj).f41783h;
                return j10;
            }
        }).k(new Function() {
            @Override
            public final Object apply(Object obj) {
                short[] sArr;
                sArr = ((C5460Ko) obj).f41784i;
                return sArr;
            }
        });
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (C5460Ko) abstractC5635Np, new C6741cL0());
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new C6741cL0().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(3, 0, shortBuffer);
        shortBuffer.put((short) this.f41782g);
        AbstractC5635Np.a(this.f41783h, shortBuffer);
        int length = this.f41784i.length;
        for (int i10 = 0; i10 < length; i10++) {
            shortBuffer.put(r1[i10]);
        }
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        int i10;
        StringBuilder sb2 = new StringBuilder("    .array-data ");
        sb2.append(C10656zq0.a(this.f41782g, 1));
        sb2.append("  # ");
        sb2.append(this.f41782g);
        sb2.append("\n");
        int i11 = this.f41782g;
        int i12 = 0;
        if (i11 == 1) {
            for (int i13 = 0; i13 < this.f41784i.length; i13++) {
                for (int i14 = 0; i14 < 2; i14++) {
                    int i15 = (this.f41784i[i13] >> (i14 * 8)) & 255;
                    if ((i13 * 2) + i14 < this.f41783h) {
                        sb2.append("      ");
                        sb2.append(C10656zq0.a(i15, 2));
                        sb2.append("  # ");
                        sb2.append(i15);
                        sb2.append("\n");
                    }
                }
            }
        } else {
            if (!f41781j && i11 != 2 && i11 != 4 && i11 != 8) {
                throw new AssertionError();
            }
            loop2: while (true) {
                long j10 = 0;
                do {
                    short[] sArr = this.f41784i;
                    if (i12 >= sArr.length) {
                        break loop2;
                    }
                    long unsignedLong = Short.toUnsignedLong(sArr[i12]);
                    i10 = this.f41782g;
                    j10 |= unsignedLong << ((i12 % (i10 / 2)) * 16);
                    i12++;
                } while ((i12 * 2) % i10 != 0);
                sb2.append("      ");
                sb2.append(C10656zq0.a(this.f41782g * 2, j10));
                sb2.append("  # ");
                sb2.append(j10);
                sb2.append("\n");
            }
        }
        sb2.append("    .end array-data");
        return sb2.toString();
    }

    public C5460Ko(int i10, long j10, short[] sArr) {
        this.f41782g = i10;
        this.f41783h = j10;
        this.f41784i = sArr;
    }
}
