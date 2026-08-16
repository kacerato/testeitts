package Wl;

import java.math.BigInteger;
import java.security.SecureRandom;
import mg.C14239A;
import mk.B0;
import mk.C14278b0;
import mk.C14290h0;
import mk.C14317v0;
import mk.F0;
import mk.L0;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import pk.AbstractC15010e;

public class m extends k {

    public static final long[] f27827f = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, TagBits.TypeVariablesAreConnected, TagBits.PauseHierarchyCheck, TagBits.HasNullTypeAnnotation, 2097152, TagBits.PassedBoundCheck, 8388608, 16777216, TagBits.HasUnresolvedSuperclass, TagBits.HasUnresolvedSuperinterfaces, TagBits.HasUnresolvedEnclosingType, TagBits.HasUnresolvedMemberTypes, TagBits.HasTypeVariable, TagBits.HasDirectWildcard, 2147483648L, 4294967296L, 8589934592L, 17179869184L, 34359738368L, 68719476736L, 137438953472L, 274877906944L, 549755813888L, 1099511627776L, 2199023255552L, 4398046511104L, 8796093022208L, 17592186044416L, 35184372088832L, 70368744177664L, 140737488355328L, 281474976710656L, 562949953421312L, 1125899906842624L, 2251799813685248L, 4503599627370496L, 9007199254740992L, 18014398509481984L, 36028797018963968L, 72057594037927936L, 144115188075855872L, 288230376151711744L, 576460752303423488L, 1152921504606846976L, 2305843009213693952L, 4611686018427387904L, Long.MIN_VALUE};

    public static final long[] f27828g = {1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, Sg.b.f23266s, 131071, 262143, 524287, 1048575, 2097151, 4194303, 8388607, 16777215, L0.f97219a, AbstractC15010e.f104121c, F0.f97187a, 268435455, 536870911, C14239A.f96998l, 2147483647L, 4294967295L, 8589934591L, 17179869183L, C14290h0.f97344a, 68719476735L, 137438953471L, 274877906943L, 549755813887L, 1099511627775L, C14317v0.f97428a, 4398046511103L, 8796093022207L, C14278b0.f97306b, 35184372088831L, 70368744177663L, B0.f97163a, 281474976710655L, 562949953421311L, 1125899906842623L, 2251799813685247L, E2.d.f5375a, 9007199254740991L, 18014398509481983L, C14290h0.f97345b, 72057594037927935L, 144115188075855871L, 288230376151711743L, 576460752303423487L, 1152921504606846975L, 2305843009213693951L, 4611686018427387903L, Long.MAX_VALUE, -1};

    public static final int[] f27829h = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5};

    public static final int f27830i = 64;

    public int f27831c;

    public int f27832d;

    public long[] f27833e;

    public m(m mVar) {
        l lVar = mVar.f27820a;
        this.f27820a = lVar;
        this.f27821b = lVar.d();
        this.f27831c = ((n) this.f27820a).l();
        this.f27832d = ((n) this.f27820a).k();
        this.f27833e = new long[this.f27831c];
        C(mVar.D());
    }

    public static m y(n nVar) {
        int l10 = nVar.l();
        long[] jArr = new long[l10];
        int i10 = 0;
        while (true) {
            int i11 = l10 - 1;
            if (i10 >= i11) {
                jArr[i11] = f27828g[nVar.k() - 1];
                return new m(nVar, jArr);
            }
            jArr[i10] = -1;
            i10++;
        }
    }

    public static m z(n nVar) {
        return new m(nVar, new long[nVar.l()]);
    }

    public final void A(BigInteger bigInteger) {
        B(bigInteger.toByteArray());
    }

    public final void B(byte[] bArr) {
        this.f27833e = new long[this.f27831c];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            long[] jArr = this.f27833e;
            int i11 = i10 >>> 3;
            jArr[i11] = jArr[i11] | ((bArr[(bArr.length - 1) - i10] & 255) << ((i10 & 7) << 3));
        }
    }

    public final void C(long[] jArr) {
        System.arraycopy(jArr, 0, this.f27833e, 0, this.f27831c);
    }

    public final long[] D() {
        long[] jArr = this.f27833e;
        long[] jArr2 = new long[jArr.length];
        System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
        return jArr2;
    }

    public final long[] E() {
        long[] jArr = new long[this.f27833e.length];
        int i10 = 0;
        while (true) {
            if (i10 >= this.f27821b) {
                return jArr;
            }
            if (v((r2 - i10) - 1)) {
                int i11 = i10 >>> 6;
                jArr[i11] = jArr[i11] | f27827f[i10 & 63];
            }
            i10++;
        }
    }

    public void F() throws ArithmeticException {
        if (a()) {
            throw new ArithmeticException();
        }
        int i10 = 31;
        boolean z10 = false;
        while (!z10 && i10 >= 0) {
            if (((this.f27821b - 1) & f27827f[i10]) != 0) {
                z10 = true;
            }
            i10--;
        }
        z((n) this.f27820a);
        m mVar = new m(this);
        int i11 = 1;
        while (i10 >= 0) {
            k kVar = (k) mVar.clone();
            for (int i12 = 1; i12 <= i11; i12++) {
                kVar.u();
            }
            mVar.j(kVar);
            i11 <<= 1;
            if (((this.f27821b - 1) & f27827f[i10]) != 0) {
                mVar.u();
                mVar.j(this);
                i11++;
            }
            i10--;
        }
        mVar.u();
    }

    public void G() {
        this.f27833e = E();
    }

    @Override
    public boolean a() {
        boolean z10 = true;
        for (int i10 = 0; i10 < this.f27831c && z10; i10++) {
            z10 = z10 && this.f27833e[i10] == 0;
        }
        return z10;
    }

    @Override
    public Object clone() {
        return new m(this);
    }

    @Override
    public BigInteger d() {
        return new BigInteger(1, toByteArray());
    }

    @Override
    public r e(r rVar) throws RuntimeException {
        m mVar = new m(this);
        mVar.j(rVar);
        return mVar;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        for (int i10 = 0; i10 < this.f27831c; i10++) {
            if (this.f27833e[i10] != mVar.f27833e[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void f(r rVar) throws RuntimeException {
        if (!(rVar instanceof m)) {
            throw new RuntimeException();
        }
        m mVar = (m) rVar;
        if (!this.f27820a.equals(mVar.f27820a)) {
            throw new RuntimeException();
        }
        for (int i10 = 0; i10 < this.f27831c; i10++) {
            long[] jArr = this.f27833e;
            jArr[i10] = jArr[i10] ^ mVar.f27833e[i10];
        }
    }

    @Override
    public r g(r rVar) throws RuntimeException {
        m mVar = new m(this);
        mVar.f(rVar);
        return mVar;
    }

    @Override
    public String h(int i10) {
        int length;
        StringBuilder sb2;
        long[] D10 = D();
        int i11 = this.f27832d;
        String str = "";
        if (i10 == 2) {
            while (true) {
                i11--;
                length = D10.length;
                if (i11 < 0) {
                    break;
                }
                str = (D10[length - 1] & (1 << i11)) == 0 ? str + "0" : str + "1";
            }
            for (int i12 = length - 2; i12 >= 0; i12--) {
                for (int i13 = 63; i13 >= 0; i13--) {
                    if ((D10[i12] & f27827f[i13]) == 0) {
                        sb2 = new StringBuilder();
                        sb2.append(str);
                        sb2.append("0");
                    } else {
                        sb2 = new StringBuilder();
                        sb2.append(str);
                        sb2.append("1");
                    }
                    str = sb2.toString();
                }
            }
        } else if (i10 == 16) {
            char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
            for (int length2 = D10.length - 1; length2 >= 0; length2--) {
                str = ((((((((((((((((str + cArr[((int) (D10[length2] >>> 60)) & 15]) + cArr[((int) (D10[length2] >>> 56)) & 15]) + cArr[((int) (D10[length2] >>> 52)) & 15]) + cArr[((int) (D10[length2] >>> 48)) & 15]) + cArr[((int) (D10[length2] >>> 44)) & 15]) + cArr[((int) (D10[length2] >>> 40)) & 15]) + cArr[((int) (D10[length2] >>> 36)) & 15]) + cArr[((int) (D10[length2] >>> 32)) & 15]) + cArr[((int) (D10[length2] >>> 28)) & 15]) + cArr[((int) (D10[length2] >>> 24)) & 15]) + cArr[((int) (D10[length2] >>> 20)) & 15]) + cArr[((int) (D10[length2] >>> 16)) & 15]) + cArr[((int) (D10[length2] >>> 12)) & 15]) + cArr[((int) (D10[length2] >>> 8)) & 15]) + cArr[((int) (D10[length2] >>> 4)) & 15]) + cArr[((int) D10[length2]) & 15]) + " ";
            }
        }
        return str;
    }

    @Override
    public int hashCode() {
        return org.bouncycastle.util.a.y0(this.f27833e);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
    
        if ((r3 & r2[r5 - 1]) == r2[r5 - 1]) goto L18;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean i() {
        int i10;
        boolean z10 = true;
        boolean z11 = true;
        int i11 = 0;
        while (true) {
            i10 = this.f27831c;
            if (i11 >= i10 - 1 || !z11) {
                break;
            }
            z11 = z11 && this.f27833e[i11] == -1;
            i11++;
        }
        if (!z11) {
            return z11;
        }
        if (z11) {
            long j10 = this.f27833e[i10 - 1];
            long[] jArr = f27828g;
            int i12 = this.f27832d;
        }
        z10 = false;
        return z10;
    }

    @Override
    public r invert() throws ArithmeticException {
        m mVar = new m(this);
        mVar.F();
        return mVar;
    }

    @Override
    public void j(r rVar) throws RuntimeException {
        boolean z10;
        char c10;
        boolean z11;
        char c11;
        if (!(rVar instanceof m)) {
            throw new RuntimeException("The elements have different representation: not yet implemented");
        }
        m mVar = (m) rVar;
        if (!this.f27820a.equals(mVar.f27820a)) {
            throw new RuntimeException();
        }
        if (equals(rVar)) {
            u();
            return;
        }
        long[] jArr = this.f27833e;
        long[] jArr2 = mVar.f27833e;
        int i10 = this.f27831c;
        long[] jArr3 = new long[i10];
        int[][] iArr = ((n) this.f27820a).f27838i;
        int i11 = i10 - 1;
        int i12 = this.f27832d - 1;
        long[] jArr4 = f27827f;
        long j10 = jArr4[63];
        long j11 = jArr4[i12];
        int i13 = 0;
        for (int i14 = 0; i14 < this.f27821b; i14++) {
            int i15 = i13;
            int i16 = i15;
            while (i15 < this.f27821b) {
                int[] iArr2 = f27829h;
                int i17 = iArr2[i15];
                int[] iArr3 = iArr[i15];
                int i18 = iArr3[i13];
                int i19 = iArr2[i18];
                int i20 = i18 & 63;
                long j12 = jArr[i17];
                long[] jArr5 = f27827f;
                if ((j12 & jArr5[i15 & 63]) != 0) {
                    if ((jArr2[i19] & jArr5[i20]) != 0) {
                        i16 ^= 1;
                    }
                    int i21 = iArr3[1];
                    if (i21 != -1) {
                        if ((jArr2[iArr2[i21]] & jArr5[i21 & 63]) != 0) {
                            i16 ^= 1;
                        }
                    }
                }
                i15++;
                i13 = 0;
            }
            int i22 = f27829h[i14];
            int i23 = i14 & 63;
            if (i16 != 0) {
                jArr3[i22] = jArr3[i22] ^ f27827f[i23];
            }
            if (this.f27831c > 1) {
                boolean z12 = (jArr[i11] & 1) == 1;
                int i24 = i10 - 2;
                int i25 = i24;
                while (i25 >= 0) {
                    long j13 = jArr[i25];
                    boolean z13 = (j13 & 1) != 0;
                    long j14 = j13 >>> 1;
                    jArr[i25] = j14;
                    if (z12) {
                        jArr[i25] = j14 ^ j10;
                    }
                    i25--;
                    z12 = z13;
                }
                long j15 = jArr[i11] >>> 1;
                jArr[i11] = j15;
                if (z12) {
                    jArr[i11] = j15 ^ j11;
                }
                boolean z14 = (jArr2[i11] & 1) == 1;
                while (i24 >= 0) {
                    long j16 = jArr2[i24];
                    boolean z15 = (j16 & 1) != 0;
                    long j17 = j16 >>> 1;
                    jArr2[i24] = j17;
                    if (z14) {
                        jArr2[i24] = j17 ^ j10;
                    }
                    i24--;
                    z14 = z15;
                }
                long j18 = jArr2[i11] >>> 1;
                jArr2[i11] = j18;
                if (z14) {
                    jArr2[i11] = j18 ^ j11;
                }
                i13 = 0;
            } else {
                i13 = 0;
                long j19 = jArr[0];
                if ((j19 & 1) == 1) {
                    c10 = 1;
                    z10 = true;
                } else {
                    z10 = false;
                    c10 = 1;
                }
                long j20 = j19 >>> c10;
                jArr[0] = j20;
                if (z10) {
                    jArr[0] = j20 ^ j11;
                }
                long j21 = jArr2[0];
                if ((j21 & 1) == 1) {
                    c11 = 1;
                    z11 = true;
                } else {
                    z11 = false;
                    c11 = 1;
                }
                long j22 = j21 >>> c11;
                jArr2[0] = j22;
                if (z11) {
                    jArr2[0] = j22 ^ j11;
                }
            }
        }
        C(jArr3);
    }

    @Override
    public void k() {
        int i10 = 0;
        while (true) {
            int i11 = this.f27831c;
            if (i10 >= i11 - 1) {
                this.f27833e[i11 - 1] = f27828g[this.f27832d - 1];
                return;
            } else {
                this.f27833e[i10] = -1;
                i10++;
            }
        }
    }

    @Override
    public void l() {
        this.f27833e = new long[this.f27831c];
    }

    @Override
    public k o() {
        m mVar = new m(this);
        mVar.p();
        return mVar;
    }

    @Override
    public void p() {
        f(y((n) this.f27820a));
    }

    @Override
    public k q() throws RuntimeException {
        int i10;
        if (x() == 1) {
            throw new RuntimeException();
        }
        long j10 = f27827f[63];
        long[] jArr = new long[this.f27831c];
        int i11 = 0;
        long j11 = 0;
        while (true) {
            i10 = this.f27831c;
            if (i11 >= i10 - 1) {
                break;
            }
            for (int i12 = 1; i12 < 64; i12++) {
                long[] jArr2 = f27827f;
                long j12 = jArr2[i12];
                long j13 = this.f27833e[i11];
                if (((j12 & j13) == 0 || (j11 & jArr2[i12 - 1]) == 0) && ((j13 & j12) != 0 || (jArr2[i12 - 1] & j11) != 0)) {
                    j11 ^= j12;
                }
            }
            jArr[i11] = j11;
            long j14 = j11 & j10;
            j11 = ((j14 == 0 || (1 & this.f27833e[i11 + 1]) != 1) && !(j14 == 0 && (this.f27833e[i11 + 1] & 1) == 0)) ? 1L : 0L;
            i11++;
        }
        int i13 = 63 & this.f27821b;
        long j15 = this.f27833e[i10 - 1];
        for (int i14 = 1; i14 < i13; i14++) {
            long[] jArr3 = f27827f;
            long j16 = jArr3[i14];
            if (((j16 & j15) == 0 || (jArr3[i14 - 1] & j11) == 0) && ((j16 & j15) != 0 || (jArr3[i14 - 1] & j11) != 0)) {
                j11 ^= j16;
            }
        }
        jArr[this.f27831c - 1] = j11;
        return new m((n) this.f27820a, jArr);
    }

    @Override
    public k r() {
        m mVar = new m(this);
        mVar.u();
        return mVar;
    }

    @Override
    public k s() {
        m mVar = new m(this);
        mVar.t();
        return mVar;
    }

    @Override
    public void t() {
        long[] D10 = D();
        int i10 = this.f27831c - 1;
        int i11 = this.f27832d - 1;
        long j10 = f27827f[63];
        boolean z10 = (D10[0] & 1) != 0;
        int i12 = i10;
        while (i12 >= 0) {
            long j11 = D10[i12];
            boolean z11 = (j11 & 1) != 0;
            long j12 = j11 >>> 1;
            D10[i12] = j12;
            if (z10) {
                if (i12 == i10) {
                    D10[i12] = j12 ^ f27827f[i11];
                } else {
                    D10[i12] = j12 ^ j10;
                }
            }
            i12--;
            z10 = z11;
        }
        C(D10);
    }

    @Override
    public byte[] toByteArray() {
        int i10 = ((this.f27821b - 1) >> 3) + 1;
        byte[] bArr = new byte[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = (i11 & 7) << 3;
            bArr[(i10 - i11) - 1] = (byte) ((this.f27833e[i11 >>> 3] & (255 << i12)) >>> i12);
        }
        return bArr;
    }

    @Override
    public String toString() {
        return h(16);
    }

    @Override
    public void u() {
        long[] D10 = D();
        int i10 = this.f27831c - 1;
        int i11 = this.f27832d;
        int i12 = i11 - 1;
        long[] jArr = f27827f;
        long j10 = jArr[63];
        boolean z10 = (D10[i10] & jArr[i12]) != 0;
        int i13 = 0;
        while (i13 < i10) {
            long j11 = D10[i13];
            boolean z11 = (j11 & j10) != 0;
            long j12 = j11 << 1;
            D10[i13] = j12;
            if (z10) {
                D10[i13] = 1 ^ j12;
            }
            i13++;
            z10 = z11;
        }
        long j13 = D10[i10];
        long[] jArr2 = f27827f;
        boolean z12 = (jArr2[i12] & j13) != 0;
        long j14 = j13 << 1;
        D10[i10] = j14;
        if (z10) {
            D10[i10] = j14 ^ 1;
        }
        if (z12) {
            D10[i10] = jArr2[i11] ^ D10[i10];
        }
        C(D10);
    }

    @Override
    public boolean v(int i10) {
        return i10 >= 0 && i10 <= this.f27821b && (this.f27833e[i10 >>> 6] & f27827f[i10 & 63]) != 0;
    }

    @Override
    public boolean w() {
        return (this.f27833e[this.f27831c - 1] & f27827f[this.f27832d - 1]) != 0;
    }

    @Override
    public int x() {
        int i10 = this.f27831c - 1;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            for (int i13 = 0; i13 < 64; i13++) {
                if ((this.f27833e[i12] & f27827f[i13]) != 0) {
                    i11 ^= 1;
                }
            }
        }
        int i14 = this.f27832d;
        for (int i15 = 0; i15 < i14; i15++) {
            if ((this.f27833e[i10] & f27827f[i15]) != 0) {
                i11 ^= 1;
            }
        }
        return i11;
    }

    public m(n nVar, BigInteger bigInteger) {
        this.f27820a = nVar;
        this.f27821b = nVar.d();
        this.f27831c = nVar.l();
        this.f27832d = nVar.k();
        this.f27833e = new long[this.f27831c];
        A(bigInteger);
    }

    public m(n nVar, SecureRandom secureRandom) {
        this.f27820a = nVar;
        this.f27821b = nVar.d();
        this.f27831c = nVar.l();
        this.f27832d = nVar.k();
        int i10 = this.f27831c;
        long[] jArr = new long[i10];
        this.f27833e = jArr;
        if (i10 <= 1) {
            jArr[0] = secureRandom.nextLong();
            long[] jArr2 = this.f27833e;
            jArr2[0] = jArr2[0] >>> (64 - this.f27832d);
        } else {
            for (int i11 = 0; i11 < this.f27831c - 1; i11++) {
                this.f27833e[i11] = secureRandom.nextLong();
            }
            this.f27833e[this.f27831c - 1] = secureRandom.nextLong() >>> (64 - this.f27832d);
        }
    }

    public m(n nVar, byte[] bArr) {
        this.f27820a = nVar;
        this.f27821b = nVar.d();
        this.f27831c = nVar.l();
        this.f27832d = nVar.k();
        this.f27833e = new long[this.f27831c];
        B(bArr);
    }

    public m(n nVar, long[] jArr) {
        this.f27820a = nVar;
        this.f27821b = nVar.d();
        this.f27831c = nVar.l();
        this.f27832d = nVar.k();
        this.f27833e = jArr;
    }
}
