package jk;

import java.math.BigInteger;

public abstract class B {

    public static final String f93833a = "bc_wnaf";

    public static final int f93835c = 16;

    public static final int[] f93834b = {13, 41, 121, 337, 897, 2305};

    public static final byte[] f93836d = new byte[0];

    public static final int[] f93837e = new int[0];

    public static final i[] f93838f = new i[0];

    public class a implements p {

        public final int f93839a;

        public a(int i10) {
            this.f93839a = i10;
        }

        @Override
        public q a(q qVar) {
            C13870A c13870a = qVar instanceof C13870A ? (C13870A) qVar : null;
            if (c13870a != null && c13870a.b() == this.f93839a) {
                c13870a.l(0);
                return c13870a;
            }
            C13870A c13870a2 = new C13870A();
            c13870a2.l(0);
            c13870a2.i(this.f93839a);
            if (c13870a != null) {
                c13870a2.j(c13870a.c());
                c13870a2.k(c13870a.d());
                c13870a2.m(c13870a.f());
                c13870a2.n(c13870a.g());
            }
            return c13870a2;
        }
    }

    public class b implements p {

        public final int f93840a;

        public final boolean f93841b;

        public final i f93842c;

        public final AbstractC13875e f93843d;

        public b(int i10, boolean z10, i iVar, AbstractC13875e abstractC13875e) {
            this.f93840a = i10;
            this.f93841b = z10;
            this.f93842c = iVar;
            this.f93843d = abstractC13875e;
        }

        /* JADX WARN: Removed duplicated region for block: B:43:0x00f2 A[LOOP:0: B:42:0x00f0->B:43:0x00f2, LOOP_END] */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public q a(q qVar) {
            i iVar;
            i[] iVarArr;
            i[] iVarArr2;
            int length;
            int i10;
            i iVar2;
            int t10;
            f fVar = null;
            C13870A c13870a = qVar instanceof C13870A ? (C13870A) qVar : null;
            int max = Math.max(2, Math.min(16, this.f93840a));
            if (b(c13870a, max, 1 << (max - 2), this.f93841b)) {
                c13870a.a();
                return c13870a;
            }
            C13870A c13870a2 = new C13870A();
            if (c13870a != null) {
                c13870a2.l(c13870a.a());
                c13870a2.i(c13870a.b());
                iVarArr = c13870a.c();
                iVarArr2 = c13870a.d();
                iVar = c13870a.f();
            } else {
                iVar = null;
                iVarArr = null;
                iVarArr2 = null;
            }
            int min = Math.min(16, Math.max(c13870a2.b(), max));
            int i11 = 1 << (min - 2);
            int i12 = 0;
            if (iVarArr == null) {
                iVarArr = B.f93838f;
                length = 0;
            } else {
                length = iVarArr.length;
            }
            if (length < i11) {
                iVarArr = B.r(iVarArr, i11);
                if (i11 == 1) {
                    iVarArr[0] = this.f93842c.B();
                } else {
                    if (length == 0) {
                        iVarArr[0] = this.f93842c;
                        i10 = 1;
                    } else {
                        i10 = length;
                    }
                    if (i11 == 2) {
                        iVarArr[1] = this.f93842c.K();
                    } else {
                        i iVar3 = iVarArr[i10 - 1];
                        if (iVar == null) {
                            iVar = iVarArr[0].M();
                            if (!iVar.v() && C13873c.o(this.f93843d) && this.f93843d.w() >= 64 && ((t10 = this.f93843d.t()) == 2 || t10 == 3 || t10 == 4)) {
                                fVar = iVar.s(0);
                                iVar2 = this.f93843d.i(iVar.q().v(), iVar.r().v());
                                f p10 = fVar.p();
                                iVar3 = iVar3.F(p10).H(p10.k(fVar));
                                if (length == 0) {
                                    iVarArr[0] = iVar3;
                                }
                                while (i10 < i11) {
                                    iVar3 = iVar3.a(iVar2);
                                    iVarArr[i10] = iVar3;
                                    i10++;
                                }
                            }
                        }
                        iVar2 = iVar;
                        while (i10 < i11) {
                        }
                    }
                    this.f93843d.F(iVarArr, length, i11 - length, fVar);
                }
            }
            if (this.f93841b) {
                if (iVarArr2 == null) {
                    iVarArr2 = new i[i11];
                } else {
                    i12 = iVarArr2.length;
                    if (i12 < i11) {
                        iVarArr2 = B.r(iVarArr2, i11);
                    }
                }
                while (i12 < i11) {
                    iVarArr2[i12] = iVarArr[i12].A();
                    i12++;
                }
            }
            c13870a2.j(iVarArr);
            c13870a2.k(iVarArr2);
            c13870a2.m(iVar);
            c13870a2.n(min);
            return c13870a2;
        }

        public final boolean b(C13870A c13870a, int i10, int i11, boolean z10) {
            return c13870a != null && c13870a.g() >= Math.max(c13870a.b(), i10) && c(c13870a.c(), i11) && (!z10 || c(c13870a.d(), i11));
        }

        public final boolean c(i[] iVarArr, int i10) {
            return iVarArr != null && iVarArr.length >= i10;
        }
    }

    public class c implements p {

        public final C13870A f93844a;

        public final boolean f93845b;

        public final j f93846c;

        public c(C13870A c13870a, boolean z10, j jVar) {
            this.f93844a = c13870a;
            this.f93845b = z10;
            this.f93846c = jVar;
        }

        private boolean b(C13870A c13870a, int i10, int i11, boolean z10) {
            return c13870a != null && c13870a.g() >= i10 && c(c13870a.c(), i11) && (!z10 || c(c13870a.d(), i11));
        }

        private boolean c(i[] iVarArr, int i10) {
            return iVarArr != null && iVarArr.length >= i10;
        }

        @Override
        public q a(q qVar) {
            C13870A c13870a = qVar instanceof C13870A ? (C13870A) qVar : null;
            int g10 = this.f93844a.g();
            if (b(c13870a, g10, this.f93844a.c().length, this.f93845b)) {
                c13870a.a();
                return c13870a;
            }
            C13870A c13870a2 = new C13870A();
            c13870a2.l(this.f93844a.e());
            i f10 = this.f93844a.f();
            if (f10 != null) {
                c13870a2.m(this.f93846c.a(f10));
            }
            i[] c10 = this.f93844a.c();
            int length = c10.length;
            i[] iVarArr = new i[length];
            for (int i10 = 0; i10 < c10.length; i10++) {
                iVarArr[i10] = this.f93846c.a(c10[i10]);
            }
            c13870a2.j(iVarArr);
            c13870a2.n(g10);
            if (this.f93845b) {
                i[] iVarArr2 = new i[length];
                for (int i11 = 0; i11 < length; i11++) {
                    iVarArr2[i11] = iVarArr[i11].A();
                }
                c13870a2.k(iVarArr2);
            }
            return c13870a2;
        }
    }

    public static void c(i iVar) {
        AbstractC13875e i10 = iVar.i();
        if (i10 == null) {
            return;
        }
        BigInteger A10 = i10.A();
        i10.G(iVar, f93833a, new a(Math.min(16, l(A10 == null ? i10.w() + 1 : A10.bitLength()) + 3)));
    }

    public static int[] d(BigInteger bigInteger) {
        if ((bigInteger.bitLength() >>> 16) != 0) {
            throw new IllegalArgumentException("'k' must have bitlength < 2^16");
        }
        if (bigInteger.signum() == 0) {
            return f93837e;
        }
        BigInteger add = bigInteger.shiftLeft(1).add(bigInteger);
        int bitLength = add.bitLength();
        int i10 = bitLength >> 1;
        int[] iArr = new int[i10];
        BigInteger xor = add.xor(bigInteger);
        int i11 = bitLength - 1;
        int i12 = 0;
        int i13 = 1;
        int i14 = 0;
        while (i13 < i11) {
            if (xor.testBit(i13)) {
                iArr[i12] = i14 | ((bigInteger.testBit(i13) ? -1 : 1) << 16);
                i13++;
                i14 = 1;
                i12++;
            } else {
                i14++;
            }
            i13++;
        }
        int i15 = i12 + 1;
        iArr[i12] = 65536 | i14;
        return i10 > i15 ? t(iArr, i15) : iArr;
    }

    public static int[] e(int i10, BigInteger bigInteger) {
        if (i10 == 2) {
            return d(bigInteger);
        }
        if (i10 < 2 || i10 > 16) {
            throw new IllegalArgumentException("'width' must be in the range [2, 16]");
        }
        if ((bigInteger.bitLength() >>> 16) != 0) {
            throw new IllegalArgumentException("'k' must have bitlength < 2^16");
        }
        if (bigInteger.signum() == 0) {
            return f93837e;
        }
        int bitLength = (bigInteger.bitLength() / i10) + 1;
        int[] iArr = new int[bitLength];
        int i11 = 1 << i10;
        int i12 = i11 - 1;
        int i13 = i11 >>> 1;
        int i14 = 0;
        int i15 = 0;
        boolean z10 = false;
        while (i14 <= bigInteger.bitLength()) {
            if (bigInteger.testBit(i14) == z10) {
                i14++;
            } else {
                bigInteger = bigInteger.shiftRight(i14);
                int intValue = bigInteger.intValue() & i12;
                if (z10) {
                    intValue++;
                }
                z10 = (intValue & i13) != 0;
                if (z10) {
                    intValue -= i11;
                }
                if (i15 > 0) {
                    i14--;
                }
                iArr[i15] = i14 | (intValue << 16);
                i14 = i10;
                i15++;
            }
        }
        return bitLength > i15 ? t(iArr, i15) : iArr;
    }

    public static byte[] f(BigInteger bigInteger, BigInteger bigInteger2) {
        int max = Math.max(bigInteger.bitLength(), bigInteger2.bitLength()) + 1;
        byte[] bArr = new byte[max];
        BigInteger bigInteger3 = bigInteger;
        BigInteger bigInteger4 = bigInteger2;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            if ((i10 | i11) == 0 && bigInteger3.bitLength() <= i12 && bigInteger4.bitLength() <= i12) {
                break;
            }
            int intValue = (bigInteger3.intValue() >>> i12) + i10;
            int i14 = intValue & 7;
            int intValue2 = (bigInteger4.intValue() >>> i12) + i11;
            int i15 = intValue2 & 7;
            int i16 = intValue & 1;
            if (i16 != 0) {
                i16 -= intValue & 2;
                if (i14 + i16 == 4 && (intValue2 & 3) == 2) {
                    i16 = -i16;
                }
            }
            int i17 = intValue2 & 1;
            if (i17 != 0) {
                i17 -= intValue2 & 2;
                if (i15 + i17 == 4 && (intValue & 3) == 2) {
                    i17 = -i17;
                }
            }
            if ((i10 << 1) == i16 + 1) {
                i10 ^= 1;
            }
            if ((i11 << 1) == i17 + 1) {
                i11 ^= 1;
            }
            i12++;
            if (i12 == 30) {
                bigInteger3 = bigInteger3.shiftRight(30);
                bigInteger4 = bigInteger4.shiftRight(30);
                i12 = 0;
            }
            bArr[i13] = (byte) ((i17 & 15) | (i16 << 4));
            i13++;
        }
        return max > i13 ? s(bArr, i13) : bArr;
    }

    public static byte[] g(BigInteger bigInteger) {
        if (bigInteger.signum() == 0) {
            return f93836d;
        }
        BigInteger add = bigInteger.shiftLeft(1).add(bigInteger);
        int bitLength = add.bitLength();
        int i10 = bitLength - 1;
        byte[] bArr = new byte[i10];
        BigInteger xor = add.xor(bigInteger);
        int i11 = 1;
        while (i11 < i10) {
            if (xor.testBit(i11)) {
                bArr[i11 - 1] = (byte) (bigInteger.testBit(i11) ? -1 : 1);
                i11++;
            }
            i11++;
        }
        bArr[bitLength - 2] = 1;
        return bArr;
    }

    public static byte[] h(int i10, BigInteger bigInteger) {
        if (i10 == 2) {
            return g(bigInteger);
        }
        if (i10 < 2 || i10 > 8) {
            throw new IllegalArgumentException("'width' must be in the range [2, 8]");
        }
        if (bigInteger.signum() == 0) {
            return f93836d;
        }
        int bitLength = bigInteger.bitLength() + 1;
        byte[] bArr = new byte[bitLength];
        int i11 = 1 << i10;
        int i12 = i11 - 1;
        int i13 = i11 >>> 1;
        int i14 = 0;
        int i15 = 0;
        boolean z10 = false;
        while (i14 <= bigInteger.bitLength()) {
            if (bigInteger.testBit(i14) == z10) {
                i14++;
            } else {
                bigInteger = bigInteger.shiftRight(i14);
                int intValue = bigInteger.intValue() & i12;
                if (z10) {
                    intValue++;
                }
                z10 = (intValue & i13) != 0;
                if (z10) {
                    intValue -= i11;
                }
                if (i15 > 0) {
                    i14--;
                }
                int i16 = i15 + i14;
                bArr[i16] = (byte) intValue;
                i15 = i16 + 1;
                i14 = i10;
            }
        }
        return bitLength > i15 ? s(bArr, i15) : bArr;
    }

    public static int i(BigInteger bigInteger) {
        if (bigInteger.signum() == 0) {
            return 0;
        }
        return bigInteger.shiftLeft(1).add(bigInteger).xor(bigInteger).bitCount();
    }

    public static C13870A j(i iVar) {
        return k(iVar.i().B(iVar, f93833a));
    }

    public static C13870A k(q qVar) {
        if (qVar instanceof C13870A) {
            return (C13870A) qVar;
        }
        return null;
    }

    public static int l(int i10) {
        return o(i10, f93834b, 16);
    }

    public static int m(int i10, int i11) {
        return o(i10, f93834b, i11);
    }

    public static int n(int i10, int[] iArr) {
        return o(i10, iArr, 16);
    }

    public static int o(int i10, int[] iArr, int i11) {
        int i12 = 0;
        while (i12 < iArr.length && i10 >= iArr[i12]) {
            i12++;
        }
        return Math.max(2, Math.min(i11, i12 + 2));
    }

    public static C13870A p(i iVar, int i10, boolean z10) {
        AbstractC13875e i11 = iVar.i();
        return (C13870A) i11.G(iVar, f93833a, new b(i10, z10, iVar, i11));
    }

    public static C13870A q(i iVar, j jVar, C13870A c13870a, boolean z10) {
        return (C13870A) iVar.i().G(iVar, f93833a, new c(c13870a, z10, jVar));
    }

    public static i[] r(i[] iVarArr, int i10) {
        i[] iVarArr2 = new i[i10];
        System.arraycopy(iVarArr, 0, iVarArr2, 0, iVarArr.length);
        return iVarArr2;
    }

    public static byte[] s(byte[] bArr, int i10) {
        byte[] bArr2 = new byte[i10];
        System.arraycopy(bArr, 0, bArr2, 0, i10);
        return bArr2;
    }

    public static int[] t(int[] iArr, int i10) {
        int[] iArr2 = new int[i10];
        System.arraycopy(iArr, 0, iArr2, 0, i10);
        return iArr2;
    }
}
