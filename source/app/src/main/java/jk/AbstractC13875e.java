package jk;

import android.bluetooth.le.AdvertisingSetParameters;
import ik.AbstractC13753a;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Random;
import java.util.Set;
import jk.f;
import jk.i;
import nk.InterfaceC14455a;
import org.bouncycastle.util.b;
import rk.AbstractC15192c;
import rk.InterfaceC15191b;
import sk.AbstractC15329o;

public abstract class AbstractC13875e {

    public static final int f93859i = 0;

    public static final int f93860j = 1;

    public static final int f93861k = 2;

    public static final int f93862l = 3;

    public static final int f93863m = 4;

    public static final int f93864n = 5;

    public static final int f93865o = 6;

    public static final int f93866p = 7;

    public InterfaceC15191b f93867a;

    public jk.f f93868b;

    public jk.f f93869c;

    public BigInteger f93870d;

    public BigInteger f93871e;

    public int f93872f = 0;

    public InterfaceC14455a f93873g = null;

    public h f93874h = null;

    public class a extends AbstractC13871a {

        public final int f93875a;

        public final int f93876b;

        public final byte[] f93877c;

        public a(int i10, int i11, byte[] bArr) {
            this.f93875a = i10;
            this.f93876b = i11;
            this.f93877c = bArr;
        }

        @Override
        public i a(int i10) {
            int i11;
            int i12 = this.f93876b;
            byte[] bArr = new byte[i12];
            byte[] bArr2 = new byte[i12];
            int i13 = 0;
            for (int i14 = 0; i14 < this.f93875a; i14++) {
                int i15 = ((i14 ^ i10) - 1) >> 31;
                int i16 = 0;
                while (true) {
                    i11 = this.f93876b;
                    if (i16 < i11) {
                        byte b10 = bArr[i16];
                        byte[] bArr3 = this.f93877c;
                        bArr[i16] = (byte) (b10 ^ (bArr3[i13 + i16] & i15));
                        bArr2[i16] = (byte) ((bArr3[(i11 + i13) + i16] & i15) ^ bArr2[i16]);
                        i16++;
                    }
                }
                i13 += i11 * 2;
            }
            return c(bArr, bArr2);
        }

        @Override
        public i b(int i10) {
            int i11 = this.f93876b;
            byte[] bArr = new byte[i11];
            byte[] bArr2 = new byte[i11];
            int i12 = i10 * i11 * 2;
            int i13 = 0;
            while (true) {
                int i14 = this.f93876b;
                if (i13 >= i14) {
                    return c(bArr, bArr2);
                }
                byte[] bArr3 = this.f93877c;
                bArr[i13] = bArr3[i12 + i13];
                bArr2[i13] = bArr3[i14 + i12 + i13];
                i13++;
            }
        }

        public final i c(byte[] bArr, byte[] bArr2) {
            AbstractC13875e abstractC13875e = AbstractC13875e.this;
            return abstractC13875e.j(abstractC13875e.o(new BigInteger(1, bArr)), AbstractC13875e.this.o(new BigInteger(1, bArr2)));
        }

        @Override
        public int getSize() {
            return this.f93875a;
        }
    }

    public static abstract class b extends AbstractC13875e {

        public BigInteger[] f93879q;

        public b(int i10, int i11, int i12, int i13) {
            super(L(i10, i11, i12, i13));
            this.f93879q = null;
            if (org.bouncycastle.util.q.f("org.bouncycastle.ec.disable")) {
                throw new UnsupportedOperationException("F2M disabled by \"org.bouncycastle.ec.disable\"");
            }
            if (org.bouncycastle.util.q.f("org.bouncycastle.ec.disable_f2m")) {
                throw new UnsupportedOperationException("F2M disabled by \"org.bouncycastle.ec.disable_f2m\"");
            }
        }

        public static InterfaceC15191b L(int i10, int i11, int i12, int i13) {
            if (i10 <= org.bouncycastle.util.q.b("org.bouncycastle.ec.max_f2m_field_size", 1142)) {
                return AbstractC15192c.a((i12 | i13) == 0 ? new int[]{0, i11, i10} : new int[]{0, i11, i12, i13, i10});
            }
            throw new IllegalArgumentException("field size out of range: " + i10);
        }

        public static BigInteger N(SecureRandom secureRandom, int i10) {
            BigInteger f10;
            do {
                f10 = org.bouncycastle.util.b.f(i10, secureRandom);
            } while (f10.signum() <= 0);
            return f10;
        }

        public static BigInteger O(int i10, int[] iArr, BigInteger bigInteger) {
            return new o(bigInteger).I(i10, iArr).i0();
        }

        @Override
        public boolean D(BigInteger bigInteger) {
            return bigInteger != null && bigInteger.signum() >= 0 && bigInteger.bitLength() <= w();
        }

        @Override
        public jk.f H(SecureRandom secureRandom) {
            return o(org.bouncycastle.util.b.f(w(), secureRandom));
        }

        @Override
        public jk.f I(SecureRandom secureRandom) {
            int w10 = w();
            return o(N(secureRandom, w10)).k(o(N(secureRandom, w10)));
        }

        public synchronized BigInteger[] M() {
            try {
                if (this.f93879q == null) {
                    this.f93879q = x.i(this);
                }
            } catch (Throwable th2) {
                throw th2;
            }
            return this.f93879q;
        }

        public boolean P() {
            return this.f93870d != null && this.f93871e != null && this.f93869c.i() && (this.f93868b.j() || this.f93868b.i());
        }

        public jk.f Q(jk.f fVar) {
            jk.f fVar2;
            f.a aVar = (f.a) fVar;
            boolean x10 = aVar.x();
            if (x10 && aVar.y() != 0) {
                return null;
            }
            int w10 = w();
            if ((w10 & 1) != 0) {
                jk.f w11 = aVar.w();
                if (x10 || w11.p().a(w11).a(fVar).j()) {
                    return w11;
                }
                return null;
            }
            if (fVar.j()) {
                return fVar;
            }
            jk.f o10 = o(InterfaceC13874d.f93853a);
            Random random = new Random();
            do {
                jk.f o11 = o(new BigInteger(w10, random));
                jk.f fVar3 = fVar;
                fVar2 = o10;
                for (int i10 = 1; i10 < w10; i10++) {
                    jk.f p10 = fVar3.p();
                    fVar2 = fVar2.p().a(p10.k(o11));
                    fVar3 = p10.a(fVar);
                }
                if (!fVar3.j()) {
                    return null;
                }
            } while (fVar2.p().a(fVar2).j());
            return fVar2;
        }

        @Override
        public i i(BigInteger bigInteger, BigInteger bigInteger2) {
            jk.f o10 = o(bigInteger);
            jk.f o11 = o(bigInteger2);
            int t10 = t();
            if (t10 == 5 || t10 == 6) {
                if (!o10.j()) {
                    o11 = o11.d(o10).a(o10);
                } else if (!o11.p().equals(r())) {
                    throw new IllegalArgumentException();
                }
            }
            return j(o10, o11);
        }

        @Override
        public i m(int i10, BigInteger bigInteger) {
            jk.f fVar;
            jk.f o10 = o(bigInteger);
            if (o10.j()) {
                fVar = r().o();
            } else {
                jk.f Q10 = Q(o10.p().h().k(r()).a(p()).a(o10));
                if (Q10 != null) {
                    if (Q10.u() != (i10 == 1)) {
                        Q10 = Q10.b();
                    }
                    int t10 = t();
                    fVar = (t10 == 5 || t10 == 6) ? Q10.a(o10) : Q10.k(o10);
                } else {
                    fVar = null;
                }
            }
            if (fVar != null) {
                return j(o10, fVar);
            }
            throw new IllegalArgumentException("Invalid point compression");
        }
    }

    public static abstract class c extends AbstractC13875e {
        public c(BigInteger bigInteger) {
            super(AbstractC15192c.b(bigInteger));
        }

        public static BigInteger L(SecureRandom secureRandom, BigInteger bigInteger) {
            BigInteger f10;
            do {
                f10 = org.bouncycastle.util.b.f(bigInteger.bitLength(), secureRandom);
            } while (f10.compareTo(bigInteger) >= 0);
            return f10;
        }

        public static BigInteger M(SecureRandom secureRandom, BigInteger bigInteger) {
            while (true) {
                BigInteger f10 = org.bouncycastle.util.b.f(bigInteger.bitLength(), secureRandom);
                if (f10.signum() > 0 && f10.compareTo(bigInteger) < 0) {
                    return f10;
                }
            }
        }

        @Override
        public boolean D(BigInteger bigInteger) {
            return bigInteger != null && bigInteger.signum() >= 0 && bigInteger.compareTo(v().b()) < 0;
        }

        @Override
        public jk.f H(SecureRandom secureRandom) {
            BigInteger b10 = v().b();
            return o(L(secureRandom, b10)).k(o(L(secureRandom, b10)));
        }

        @Override
        public jk.f I(SecureRandom secureRandom) {
            BigInteger b10 = v().b();
            return o(M(secureRandom, b10)).k(o(M(secureRandom, b10)));
        }

        @Override
        public i m(int i10, BigInteger bigInteger) {
            jk.f o10 = o(bigInteger);
            jk.f o11 = o10.p().a(this.f93868b).k(o10).a(this.f93869c).o();
            if (o11 == null) {
                throw new IllegalArgumentException("Invalid point compression");
            }
            if (o11.u() != (i10 == 1)) {
                o11 = o11.n();
            }
            return j(o10, o11);
        }
    }

    public class d {

        public int f93880a;

        public InterfaceC14455a f93881b;

        public h f93882c;

        public d(int i10, InterfaceC14455a interfaceC14455a, h hVar) {
            this.f93880a = i10;
            this.f93881b = interfaceC14455a;
            this.f93882c = hVar;
        }

        public AbstractC13875e a() {
            if (!AbstractC13875e.this.J(this.f93880a)) {
                throw new IllegalStateException("unsupported coordinate system");
            }
            AbstractC13875e e10 = AbstractC13875e.this.e();
            if (e10 == AbstractC13875e.this) {
                throw new IllegalStateException("implementation returned current curve");
            }
            synchronized (e10) {
                e10.f93872f = this.f93880a;
                e10.f93873g = this.f93881b;
                e10.f93874h = this.f93882c;
            }
            return e10;
        }

        public d b(int i10) {
            this.f93880a = i10;
            return this;
        }

        public d c(InterfaceC14455a interfaceC14455a) {
            this.f93881b = interfaceC14455a;
            return this;
        }

        public d d(h hVar) {
            this.f93882c = hVar;
            return this;
        }
    }

    public static class C1828e extends b {

        public static final int f93884w = 6;

        public int f93885r;

        public int f93886s;

        public int f93887t;

        public int f93888u;

        public i.d f93889v;

        public class a extends AbstractC13871a {

            public final int f93890a;

            public final int f93891b;

            public final long[] f93892c;

            public final int[] f93893d;

            public a(int i10, int i11, long[] jArr, int[] iArr) {
                this.f93890a = i10;
                this.f93891b = i11;
                this.f93892c = jArr;
                this.f93893d = iArr;
            }

            @Override
            public i a(int i10) {
                int i11;
                long[] F10 = AbstractC15329o.F(this.f93891b);
                long[] F11 = AbstractC15329o.F(this.f93891b);
                int i12 = 0;
                for (int i13 = 0; i13 < this.f93890a; i13++) {
                    long j10 = ((i13 ^ i10) - 1) >> 31;
                    int i14 = 0;
                    while (true) {
                        i11 = this.f93891b;
                        if (i14 < i11) {
                            long j11 = F10[i14];
                            long[] jArr = this.f93892c;
                            F10[i14] = j11 ^ (jArr[i12 + i14] & j10);
                            F11[i14] = F11[i14] ^ (jArr[(i11 + i12) + i14] & j10);
                            i14++;
                        }
                    }
                    i12 += i11 * 2;
                }
                return c(F10, F11);
            }

            @Override
            public i b(int i10) {
                long[] F10 = AbstractC15329o.F(this.f93891b);
                long[] F11 = AbstractC15329o.F(this.f93891b);
                int i11 = i10 * this.f93891b * 2;
                int i12 = 0;
                while (true) {
                    int i13 = this.f93891b;
                    if (i12 >= i13) {
                        return c(F10, F11);
                    }
                    long[] jArr = this.f93892c;
                    F10[i12] = jArr[i11 + i12];
                    F11[i12] = jArr[i13 + i11 + i12];
                    i12++;
                }
            }

            public final i c(long[] jArr, long[] jArr2) {
                return C1828e.this.j(new f.c(C1828e.this.f93885r, this.f93893d, new o(jArr)), new f.c(C1828e.this.f93885r, this.f93893d, new o(jArr2)));
            }

            @Override
            public int getSize() {
                return this.f93890a;
            }
        }

        public C1828e(int i10, int i11, int i12, int i13, BigInteger bigInteger, BigInteger bigInteger2) {
            this(i10, i11, i12, i13, bigInteger, bigInteger2, (BigInteger) null, (BigInteger) null);
        }

        @Override
        public boolean J(int i10) {
            return i10 == 0 || i10 == 1 || i10 == 6;
        }

        public int S() {
            return this.f93886s;
        }

        public int T() {
            return this.f93887t;
        }

        public int U() {
            return this.f93888u;
        }

        public int V() {
            return this.f93885r;
        }

        public boolean W() {
            return this.f93887t == 0 && this.f93888u == 0;
        }

        @Override
        public AbstractC13875e e() {
            return new C1828e(this.f93885r, this.f93886s, this.f93887t, this.f93888u, this.f93868b, this.f93869c, this.f93870d, this.f93871e);
        }

        @Override
        public g g(i[] iVarArr, int i10, int i11) {
            int i12 = (this.f93885r + 63) >>> 6;
            int[] iArr = W() ? new int[]{this.f93886s} : new int[]{this.f93886s, this.f93887t, this.f93888u};
            long[] jArr = new long[i11 * i12 * 2];
            int i13 = 0;
            for (int i14 = 0; i14 < i11; i14++) {
                i iVar = iVarArr[i10 + i14];
                ((f.c) iVar.n()).f93907j.j(jArr, i13);
                int i15 = i13 + i12;
                ((f.c) iVar.o()).f93907j.j(jArr, i15);
                i13 = i15 + i12;
            }
            return new a(i11, i12, jArr, iArr);
        }

        @Override
        public h h() {
            return P() ? new C() : super.h();
        }

        @Override
        public i j(jk.f fVar, jk.f fVar2) {
            return new i.d(this, fVar, fVar2);
        }

        @Override
        public i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
            return new i.d(this, fVar, fVar2, fVarArr);
        }

        @Override
        public jk.f o(BigInteger bigInteger) {
            if (bigInteger != null && bigInteger.signum() >= 0) {
                int bitLength = bigInteger.bitLength();
                int i10 = this.f93885r;
                if (bitLength <= i10) {
                    int i11 = this.f93887t;
                    int i12 = this.f93888u;
                    return new f.c(i10, (i11 | i12) == 0 ? new int[]{this.f93886s} : new int[]{this.f93886s, i11, i12}, new o(bigInteger));
                }
            }
            throw new IllegalArgumentException("x value invalid in F2m field element");
        }

        @Override
        public int w() {
            return this.f93885r;
        }

        @Override
        public i x() {
            return this.f93889v;
        }

        public C1828e(int i10, int i11, int i12, int i13, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            super(i10, i11, i12, i13);
            this.f93885r = i10;
            this.f93886s = i11;
            this.f93887t = i12;
            this.f93888u = i13;
            this.f93870d = bigInteger3;
            this.f93871e = bigInteger4;
            this.f93889v = new i.d(this, null, null);
            this.f93868b = o(bigInteger);
            this.f93869c = o(bigInteger2);
            this.f93872f = 6;
        }

        public C1828e(int i10, int i11, int i12, int i13, jk.f fVar, jk.f fVar2, BigInteger bigInteger, BigInteger bigInteger2) {
            super(i10, i11, i12, i13);
            this.f93885r = i10;
            this.f93886s = i11;
            this.f93887t = i12;
            this.f93888u = i13;
            this.f93870d = bigInteger;
            this.f93871e = bigInteger2;
            this.f93889v = new i.d(this, null, null);
            this.f93868b = fVar;
            this.f93869c = fVar2;
            this.f93872f = 6;
        }

        public C1828e(int i10, int i11, BigInteger bigInteger, BigInteger bigInteger2) {
            this(i10, i11, 0, 0, bigInteger, bigInteger2, (BigInteger) null, (BigInteger) null);
        }

        public C1828e(int i10, int i11, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            this(i10, i11, 0, 0, bigInteger, bigInteger2, bigInteger3, bigInteger4);
        }
    }

    public static class f extends c {

        public static final int f93895t = 4;

        public static final Set<BigInteger> f93896u = Collections.synchronizedSet(new HashSet());

        public static final b.a f93897v = new b.a();

        public BigInteger f93898q;

        public BigInteger f93899r;

        public i.e f93900s;

        public f(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            this(bigInteger, bigInteger2, bigInteger3, null, null);
        }

        @Override
        public i C(i iVar) {
            int t10;
            return (this == iVar.i() || t() != 2 || iVar.v() || !((t10 = iVar.i().t()) == 2 || t10 == 3 || t10 == 4)) ? super.C(iVar) : new i.e(this, o(iVar.f93913b.v()), o(iVar.f93914c.v()), new jk.f[]{o(iVar.f93915d[0].v())});
        }

        @Override
        public boolean J(int i10) {
            return i10 == 0 || i10 == 1 || i10 == 2 || i10 == 4;
        }

        public BigInteger N() {
            return this.f93898q;
        }

        @Override
        public AbstractC13875e e() {
            return new f(this.f93898q, this.f93899r, this.f93868b, this.f93869c, this.f93870d, this.f93871e);
        }

        @Override
        public i j(jk.f fVar, jk.f fVar2) {
            return new i.e(this, fVar, fVar2);
        }

        @Override
        public i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
            return new i.e(this, fVar, fVar2, fVarArr);
        }

        @Override
        public jk.f o(BigInteger bigInteger) {
            if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(this.f93898q) >= 0) {
                throw new IllegalArgumentException("x value invalid for Fp field element");
            }
            return new f.d(this.f93898q, this.f93899r, bigInteger);
        }

        @Override
        public int w() {
            return this.f93898q.bitLength();
        }

        @Override
        public i x() {
            return this.f93900s;
        }

        public f(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5) {
            this(bigInteger, bigInteger2, bigInteger3, bigInteger4, bigInteger5, false);
        }

        public f(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, boolean z10) {
            super(bigInteger);
            if (z10) {
                this.f93898q = bigInteger;
                f93896u.add(bigInteger);
            } else {
                if (!f93896u.contains(bigInteger)) {
                    b.a aVar = f93897v;
                    if (!aVar.c(bigInteger)) {
                        int b10 = org.bouncycastle.util.q.b("org.bouncycastle.ec.fp_max_size", 1042);
                        int b11 = org.bouncycastle.util.q.b("org.bouncycastle.ec.fp_certainty", 100);
                        int bitLength = bigInteger.bitLength();
                        if (b10 < bitLength) {
                            throw new IllegalArgumentException("Fp q value out of range");
                        }
                        if (AbstractC13753a.e(bigInteger) || !AbstractC13753a.l(bigInteger, Bi.r.h(), AbstractC13875e.z(bitLength, b11))) {
                            throw new IllegalArgumentException("Fp q value not prime");
                        }
                        aVar.a(bigInteger);
                    }
                }
                this.f93898q = bigInteger;
            }
            this.f93899r = f.d.w(bigInteger);
            this.f93900s = new i.e(this, null, null);
            this.f93868b = o(bigInteger2);
            this.f93869c = o(bigInteger3);
            this.f93870d = bigInteger4;
            this.f93871e = bigInteger5;
            this.f93872f = 4;
        }

        public f(BigInteger bigInteger, BigInteger bigInteger2, jk.f fVar, jk.f fVar2, BigInteger bigInteger3, BigInteger bigInteger4) {
            super(bigInteger);
            this.f93898q = bigInteger;
            this.f93899r = bigInteger2;
            this.f93900s = new i.e(this, null, null);
            this.f93868b = fVar;
            this.f93869c = fVar2;
            this.f93870d = bigInteger3;
            this.f93871e = bigInteger4;
            this.f93872f = 4;
        }
    }

    public AbstractC13875e(InterfaceC15191b interfaceC15191b) {
        this.f93867a = interfaceC15191b;
    }

    public static int[] q() {
        return new int[]{0, 1, 2, 3, 4, 5, 6, 7};
    }

    public static int z(int i10, int i11) {
        if (i10 >= 1536) {
            if (i11 <= 100) {
                return 3;
            }
            if (i11 <= 128) {
                return 4;
            }
            return 4 + ((i11 + AdvertisingSetParameters.TX_POWER_MIN) / 2);
        }
        if (i10 >= 1024) {
            if (i11 <= 100) {
                return 4;
            }
            if (i11 <= 112) {
                return 5;
            }
            return ((i11 - 111) / 2) + 5;
        }
        if (i10 < 512) {
            if (i11 <= 80) {
                return 40;
            }
            return 40 + ((i11 - 79) / 2);
        }
        if (i11 <= 80) {
            return 5;
        }
        if (i11 <= 100) {
            return 7;
        }
        return 7 + ((i11 - 99) / 2);
    }

    public BigInteger A() {
        return this.f93870d;
    }

    public q B(i iVar, String str) {
        Hashtable hashtable;
        q qVar;
        b(iVar);
        synchronized (iVar) {
            hashtable = iVar.f93916e;
        }
        if (hashtable == null) {
            return null;
        }
        synchronized (hashtable) {
            qVar = (q) hashtable.get(str);
        }
        return qVar;
    }

    public i C(i iVar) {
        if (this == iVar.i()) {
            return iVar;
        }
        if (iVar.v()) {
            return x();
        }
        i B10 = iVar.B();
        return i(B10.q().v(), B10.r().v());
    }

    public abstract boolean D(BigInteger bigInteger);

    public void E(i[] iVarArr) {
        F(iVarArr, 0, iVarArr.length, null);
    }

    public void F(i[] iVarArr, int i10, int i11, jk.f fVar) {
        d(iVarArr, i10, i11);
        int t10 = t();
        if (t10 == 0 || t10 == 5) {
            if (fVar != null) {
                throw new IllegalArgumentException("'iso' not valid for affine coordinates");
            }
            return;
        }
        jk.f[] fVarArr = new jk.f[i11];
        int[] iArr = new int[i11];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i10 + i13;
            i iVar = iVarArr[i14];
            if (iVar != null && (fVar != null || !iVar.w())) {
                fVarArr[i12] = iVar.s(0);
                iArr[i12] = i14;
                i12++;
            }
        }
        if (i12 == 0) {
            return;
        }
        C13873c.r(fVarArr, 0, i12, fVar);
        for (int i15 = 0; i15 < i12; i15++) {
            int i16 = iArr[i15];
            iVarArr[i16] = iVarArr[i16].C(fVarArr[i15]);
        }
    }

    public q G(i iVar, String str, p pVar) {
        Hashtable hashtable;
        q a10;
        b(iVar);
        synchronized (iVar) {
            try {
                hashtable = iVar.f93916e;
                if (hashtable == null) {
                    hashtable = new Hashtable(4);
                    iVar.f93916e = hashtable;
                }
            } finally {
            }
        }
        synchronized (hashtable) {
            try {
                q qVar = (q) hashtable.get(str);
                a10 = pVar.a(qVar);
                if (a10 != qVar) {
                    hashtable.put(str, a10);
                }
            } finally {
            }
        }
        return a10;
    }

    public abstract jk.f H(SecureRandom secureRandom);

    public abstract jk.f I(SecureRandom secureRandom);

    public boolean J(int i10) {
        return i10 == 0;
    }

    public i K(BigInteger bigInteger, BigInteger bigInteger2) {
        i i10 = i(bigInteger, bigInteger2);
        if (i10.x()) {
            return i10;
        }
        throw new IllegalArgumentException("Invalid point coordinates");
    }

    public void b(i iVar) {
        if (iVar == null || this != iVar.i()) {
            throw new IllegalArgumentException("'point' must be non-null and on this curve");
        }
    }

    public void c(i[] iVarArr) {
        d(iVarArr, 0, iVarArr.length);
    }

    public void d(i[] iVarArr, int i10, int i11) {
        if (iVarArr == null) {
            throw new IllegalArgumentException("'points' cannot be null");
        }
        if (i10 < 0 || i11 < 0 || i10 > iVarArr.length - i11) {
            throw new IllegalArgumentException("invalid range specified for 'points'");
        }
        for (int i12 = 0; i12 < i11; i12++) {
            i iVar = iVarArr[i10 + i12];
            if (iVar != null && this != iVar.i()) {
                throw new IllegalArgumentException("'points' entries must be null or on this curve");
            }
        }
    }

    public abstract AbstractC13875e e();

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof AbstractC13875e) && n((AbstractC13875e) obj));
    }

    public synchronized d f() {
        return new d(this.f93872f, this.f93873g, this.f93874h);
    }

    public g g(i[] iVarArr, int i10, int i11) {
        int w10 = (w() + 7) >>> 3;
        byte[] bArr = new byte[i11 * w10 * 2];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            i iVar = iVarArr[i10 + i13];
            byte[] byteArray = iVar.n().v().toByteArray();
            byte[] byteArray2 = iVar.o().v().toByteArray();
            int i14 = 1;
            int i15 = byteArray.length > w10 ? 1 : 0;
            int length = byteArray.length - i15;
            if (byteArray2.length <= w10) {
                i14 = 0;
            }
            int length2 = byteArray2.length - i14;
            int i16 = i12 + w10;
            System.arraycopy(byteArray, i15, bArr, i16 - length, length);
            i12 = i16 + w10;
            System.arraycopy(byteArray2, i14, bArr, i12 - length2, length2);
        }
        return new a(i11, w10, bArr);
    }

    public h h() {
        InterfaceC14455a interfaceC14455a = this.f93873g;
        return interfaceC14455a instanceof nk.d ? new n(this, (nk.d) interfaceC14455a) : new z();
    }

    public int hashCode() {
        return (v().hashCode() ^ org.bouncycastle.util.k.h(p().v().hashCode(), 8)) ^ org.bouncycastle.util.k.h(r().v().hashCode(), 16);
    }

    public i i(BigInteger bigInteger, BigInteger bigInteger2) {
        return j(o(bigInteger), o(bigInteger2));
    }

    public abstract i j(jk.f fVar, jk.f fVar2);

    public abstract i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr);

    public i l(byte[] bArr) {
        i x10;
        int w10 = (w() + 7) / 8;
        byte b10 = bArr[0];
        if (b10 != 0) {
            if (b10 == 2 || b10 == 3) {
                if (bArr.length != w10 + 1) {
                    throw new IllegalArgumentException("Incorrect length for compressed encoding");
                }
                x10 = m(b10 & 1, org.bouncycastle.util.b.j(bArr, 1, w10));
                if (!x10.u(true, true)) {
                    throw new IllegalArgumentException("Invalid point");
                }
            } else if (b10 != 4) {
                if (b10 != 6 && b10 != 7) {
                    throw new IllegalArgumentException("Invalid point encoding 0x" + Integer.toString(b10, 16));
                }
                if (bArr.length != (w10 * 2) + 1) {
                    throw new IllegalArgumentException("Incorrect length for hybrid encoding");
                }
                BigInteger j10 = org.bouncycastle.util.b.j(bArr, 1, w10);
                BigInteger j11 = org.bouncycastle.util.b.j(bArr, w10 + 1, w10);
                if (j11.testBit(0) != (b10 == 7)) {
                    throw new IllegalArgumentException("Inconsistent Y coordinate in hybrid encoding");
                }
                x10 = K(j10, j11);
            } else {
                if (bArr.length != (w10 * 2) + 1) {
                    throw new IllegalArgumentException("Incorrect length for uncompressed encoding");
                }
                x10 = K(org.bouncycastle.util.b.j(bArr, 1, w10), org.bouncycastle.util.b.j(bArr, w10 + 1, w10));
            }
        } else {
            if (bArr.length != 1) {
                throw new IllegalArgumentException("Incorrect length for infinity encoding");
            }
            x10 = x();
        }
        if (b10 == 0 || !x10.v()) {
            return x10;
        }
        throw new IllegalArgumentException("Invalid infinity encoding");
    }

    public abstract i m(int i10, BigInteger bigInteger);

    public boolean n(AbstractC13875e abstractC13875e) {
        return this == abstractC13875e || (abstractC13875e != null && v().equals(abstractC13875e.v()) && p().v().equals(abstractC13875e.p().v()) && r().v().equals(abstractC13875e.r().v()));
    }

    public abstract jk.f o(BigInteger bigInteger);

    public jk.f p() {
        return this.f93868b;
    }

    public jk.f r() {
        return this.f93869c;
    }

    public BigInteger s() {
        return this.f93871e;
    }

    public int t() {
        return this.f93872f;
    }

    public InterfaceC14455a u() {
        return this.f93873g;
    }

    public InterfaceC15191b v() {
        return this.f93867a;
    }

    public abstract int w();

    public abstract i x();

    public h y() {
        if (this.f93874h == null) {
            this.f93874h = h();
        }
        return this.f93874h;
    }
}
