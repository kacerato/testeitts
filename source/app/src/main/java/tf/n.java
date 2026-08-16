package tf;

import kotlin.jvm.internal.M;
import nf.C0;
import nf.G0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14443y;
import nf.M0;
import nf.y0;
import org.jetbrains.annotations.NotNull;

public class n {
    @InterfaceC14422l0(version = "1.5")
    public static final short a(short s10, short s11) {
        return M.t(s10 & 65535, 65535 & s11) >= 0 ? s10 : s11;
    }

    @InterfaceC14422l0(version = "1.5")
    public static int b(int i10, int i11) {
        return Integer.compareUnsigned(i10, i11) >= 0 ? i10 : i11;
    }

    @InterfaceC14422l0(version = "1.5")
    public static final byte c(byte b10, byte b11) {
        return M.t(b10 & 255, b11 & 255) >= 0 ? b10 : b11;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final int d(int i10, @NotNull int... iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-other$0");
        int v10 = C0.v(iArr);
        for (int i11 = 0; i11 < v10; i11++) {
            i10 = b(i10, C0.t(iArr, i11));
        }
        return i10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final long e(long j10, @NotNull long... jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-other$0");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            j10 = j(j10, G0.r(jArr, i10));
        }
        return j10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final short f(short s10, short s11, short s12) {
        return a(s10, a(s11, s12));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final int g(int i10, int i11, int i12) {
        return b(i10, b(i11, i12));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final byte h(byte b10, @NotNull byte... bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-other$0");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            b10 = c(b10, y0.r(bArr, i10));
        }
        return b10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final byte i(byte b10, byte b11, byte b12) {
        return c(b10, c(b11, b12));
    }

    @InterfaceC14422l0(version = "1.5")
    public static long j(long j10, long j11) {
        return Long.compareUnsigned(j10, j11) >= 0 ? j10 : j11;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final long k(long j10, long j11, long j12) {
        return j(j10, j(j11, j12));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final short l(short s10, @NotNull short... sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-other$0");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            s10 = a(s10, M0.r(sArr, i10));
        }
        return s10;
    }

    @InterfaceC14422l0(version = "1.5")
    public static final short m(short s10, short s11) {
        return M.t(s10 & 65535, 65535 & s11) <= 0 ? s10 : s11;
    }

    @InterfaceC14422l0(version = "1.5")
    public static int n(int i10, int i11) {
        return Integer.compareUnsigned(i10, i11) <= 0 ? i10 : i11;
    }

    @InterfaceC14422l0(version = "1.5")
    public static final byte o(byte b10, byte b11) {
        return M.t(b10 & 255, b11 & 255) <= 0 ? b10 : b11;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final int p(int i10, @NotNull int... iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-other$0");
        int v10 = C0.v(iArr);
        for (int i11 = 0; i11 < v10; i11++) {
            i10 = n(i10, C0.t(iArr, i11));
        }
        return i10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final long q(long j10, @NotNull long... jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-other$0");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            j10 = v(j10, G0.r(jArr, i10));
        }
        return j10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final short r(short s10, short s11, short s12) {
        return m(s10, m(s11, s12));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final int s(int i10, int i11, int i12) {
        return n(i10, n(i11, i12));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final byte t(byte b10, @NotNull byte... bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-other$0");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            b10 = o(b10, y0.r(bArr, i10));
        }
        return b10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final byte u(byte b10, byte b11, byte b12) {
        return o(b10, o(b11, b12));
    }

    @InterfaceC14422l0(version = "1.5")
    public static long v(long j10, long j11) {
        return Long.compareUnsigned(j10, j11) <= 0 ? j10 : j11;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final long w(long j10, long j11, long j12) {
        return v(j10, v(j11, j12));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final short x(short s10, @NotNull short... sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-other$0");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            s10 = m(s10, M0.r(sArr, i10));
        }
        return s10;
    }
}
