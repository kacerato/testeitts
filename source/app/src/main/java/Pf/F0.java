package pf;

import nf.InterfaceC14443y;
import nf.M0;
import org.jetbrains.annotations.NotNull;

public final class F0 {
    @InterfaceC14443y
    public static final int a(long[] jArr, int i10, int i11) {
        long r10 = nf.G0.r(jArr, (i10 + i11) / 2);
        while (i10 <= i11) {
            while (Long.compareUnsigned(nf.G0.r(jArr, i10), r10) < 0) {
                i10++;
            }
            while (Long.compareUnsigned(nf.G0.r(jArr, i11), r10) > 0) {
                i11--;
            }
            if (i10 <= i11) {
                long r11 = nf.G0.r(jArr, i10);
                nf.G0.y(jArr, i10, nf.G0.r(jArr, i11));
                nf.G0.y(jArr, i11, r11);
                i10++;
                i11--;
            }
        }
        return i10;
    }

    @InterfaceC14443y
    public static final int b(byte[] bArr, int i10, int i11) {
        int i12;
        byte r10 = nf.y0.r(bArr, (i10 + i11) / 2);
        while (i10 <= i11) {
            while (true) {
                i12 = r10 & 255;
                if (kotlin.jvm.internal.M.t(nf.y0.r(bArr, i10) & 255, i12) >= 0) {
                    break;
                }
                i10++;
            }
            while (kotlin.jvm.internal.M.t(nf.y0.r(bArr, i11) & 255, i12) > 0) {
                i11--;
            }
            if (i10 <= i11) {
                byte r11 = nf.y0.r(bArr, i10);
                nf.y0.y(bArr, i10, nf.y0.r(bArr, i11));
                nf.y0.y(bArr, i11, r11);
                i10++;
                i11--;
            }
        }
        return i10;
    }

    @InterfaceC14443y
    public static final int c(short[] sArr, int i10, int i11) {
        int i12;
        short r10 = M0.r(sArr, (i10 + i11) / 2);
        while (i10 <= i11) {
            while (true) {
                i12 = r10 & 65535;
                if (kotlin.jvm.internal.M.t(M0.r(sArr, i10) & 65535, i12) >= 0) {
                    break;
                }
                i10++;
            }
            while (kotlin.jvm.internal.M.t(M0.r(sArr, i11) & 65535, i12) > 0) {
                i11--;
            }
            if (i10 <= i11) {
                short r11 = M0.r(sArr, i10);
                M0.y(sArr, i10, M0.r(sArr, i11));
                M0.y(sArr, i11, r11);
                i10++;
                i11--;
            }
        }
        return i10;
    }

    @InterfaceC14443y
    public static final int d(int[] iArr, int i10, int i11) {
        int t10 = nf.C0.t(iArr, (i10 + i11) / 2);
        while (i10 <= i11) {
            while (Integer.compareUnsigned(nf.C0.t(iArr, i10), t10) < 0) {
                i10++;
            }
            while (Integer.compareUnsigned(nf.C0.t(iArr, i11), t10) > 0) {
                i11--;
            }
            if (i10 <= i11) {
                int t11 = nf.C0.t(iArr, i10);
                nf.C0.B(iArr, i10, nf.C0.t(iArr, i11));
                nf.C0.B(iArr, i11, t11);
                i10++;
                i11--;
            }
        }
        return i10;
    }

    @InterfaceC14443y
    public static final void e(long[] jArr, int i10, int i11) {
        int a10 = a(jArr, i10, i11);
        int i12 = a10 - 1;
        if (i10 < i12) {
            e(jArr, i10, i12);
        }
        if (a10 < i11) {
            e(jArr, a10, i11);
        }
    }

    @InterfaceC14443y
    public static final void f(byte[] bArr, int i10, int i11) {
        int b10 = b(bArr, i10, i11);
        int i12 = b10 - 1;
        if (i10 < i12) {
            f(bArr, i10, i12);
        }
        if (b10 < i11) {
            f(bArr, b10, i11);
        }
    }

    @InterfaceC14443y
    public static final void g(short[] sArr, int i10, int i11) {
        int c10 = c(sArr, i10, i11);
        int i12 = c10 - 1;
        if (i10 < i12) {
            g(sArr, i10, i12);
        }
        if (c10 < i11) {
            g(sArr, c10, i11);
        }
    }

    @InterfaceC14443y
    public static final void h(int[] iArr, int i10, int i11) {
        int d10 = d(iArr, i10, i11);
        int i12 = d10 - 1;
        if (i10 < i12) {
            h(iArr, i10, i12);
        }
        if (d10 < i11) {
            h(iArr, d10, i11);
        }
    }

    @InterfaceC14443y
    public static final void i(@NotNull long[] jArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(jArr, "$v$c$kotlin-ULongArray$-array$0");
        e(jArr, i10, i11 - 1);
    }

    @InterfaceC14443y
    public static final void j(@NotNull byte[] bArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(bArr, "$v$c$kotlin-UByteArray$-array$0");
        f(bArr, i10, i11 - 1);
    }

    @InterfaceC14443y
    public static final void k(@NotNull short[] sArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(sArr, "$v$c$kotlin-UShortArray$-array$0");
        g(sArr, i10, i11 - 1);
    }

    @InterfaceC14443y
    public static final void l(@NotNull int[] iArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(iArr, "$v$c$kotlin-UIntArray$-array$0");
        h(iArr, i10, i11 - 1);
    }
}
