package B2;

import android.security.keystore.KeyProperties;
import java.security.Key;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.zip.Adler32;
import java.util.zip.CRC32;
import java.util.zip.Checksum;
import javax.annotation.CheckForNull;
import javax.crypto.spec.SecretKeySpec;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

@k
public final class s {

    public static final int f1468a = (int) System.currentTimeMillis();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @I2.j
    public static abstract class b implements v<Checksum> {
        public final q hashFunction;
        public static final b CRC_32 = new a("CRC_32", 0, "Hashing.crc32()");
        public static final b ADLER_32 = new C0025b("ADLER_32", 1, "Hashing.adler32()");
        private static final b[] $VALUES = a();

        public enum a extends b {
            public a(String str, int i10, String str2) {
                super(str, i10, str2);
            }

            @Override
            public Checksum get() {
                return new CRC32();
            }
        }

        public enum C0025b extends b {
            public C0025b(String str, int i10, String str2) {
                super(str, i10, str2);
            }

            @Override
            public Checksum get() {
                return new Adler32();
            }
        }

        public static b[] a() {
            return new b[]{CRC_32, ADLER_32};
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }

        public b(String str, int i10, String str2) {
            this.hashFunction = new C2349i(this, 32, str2);
        }
    }

    public static final class c extends AbstractC2342b {
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof c) {
                return Arrays.equals(this.f1411b, ((c) obj).f1411b);
            }
            return false;
        }

        @Override
        public int h() {
            int i10 = 0;
            for (q qVar : this.f1411b) {
                i10 += qVar.h();
            }
            return i10;
        }

        public int hashCode() {
            return Arrays.hashCode(this.f1411b);
        }

        @Override
        public p m(r[] rVarArr) {
            byte[] bArr = new byte[h() / 8];
            int i10 = 0;
            for (r rVar : rVarArr) {
                p h10 = rVar.h();
                i10 += h10.n(bArr, i10, h10.d() / 8);
            }
            return p.h(bArr);
        }

        public c(q... qVarArr) {
            super(qVarArr);
            for (q qVar : qVarArr) {
                w2.H.o(qVar.h() % 8 == 0, "the number of bits (%s) in hashFunction (%s) must be divisible by 8", qVar.h(), qVar);
            }
        }
    }

    public static final class d {

        public long f1469a;

        public d(long j10) {
            this.f1469a = j10;
        }

        public double a() {
            this.f1469a = (this.f1469a * 2862933555777941757L) + 1;
            return (((int) (r2 >>> 33)) + 1) / 2.147483648E9d;
        }
    }

    public static class e {

        public static final q f1470a = new C(KeyProperties.DIGEST_MD5, "Hashing.md5()");
    }

    public static class f {

        public static final q f1471a = new C("SHA-1", "Hashing.sha1()");
    }

    public static class g {

        public static final q f1472a = new C("SHA-256", "Hashing.sha256()");
    }

    public static class h {

        public static final q f1473a = new C("SHA-384", "Hashing.sha384()");
    }

    public static class i {

        public static final q f1474a = new C("SHA-512", "Hashing.sha512()");
    }

    @Deprecated
    public static q A(int i10) {
        return new E(i10, false);
    }

    public static q B() {
        return E.f1355e;
    }

    public static q C(int i10) {
        return new E(i10, true);
    }

    @Deprecated
    public static q D() {
        return f.f1471a;
    }

    public static q E() {
        return g.f1472a;
    }

    public static q F() {
        return h.f1473a;
    }

    public static q G() {
        return i.f1474a;
    }

    public static q H() {
        return H.f1368f;
    }

    public static q I(long j10, long j11) {
        return new H(2, 4, j10, j11);
    }

    public static q a() {
        return b.ADLER_32.hashFunction;
    }

    public static int b(int i10) {
        w2.H.e(i10 > 0, "Number of bits must be positive");
        return (i10 + 31) & (-32);
    }

    public static p c(Iterable<p> iterable) {
        Iterator<p> it = iterable.iterator();
        w2.H.e(it.hasNext(), "Must be at least 1 hash code to combine.");
        int d10 = it.next().d() / 8;
        byte[] bArr = new byte[d10];
        Iterator<p> it2 = iterable.iterator();
        while (it2.hasNext()) {
            byte[] a10 = it2.next().a();
            w2.H.e(a10.length == d10, "All hashcodes must have the same bit length.");
            for (int i10 = 0; i10 < a10.length; i10++) {
                bArr[i10] = (byte) ((bArr[i10] * Opcodes.OPC_fload_3) ^ a10[i10]);
            }
        }
        return p.h(bArr);
    }

    public static p d(Iterable<p> iterable) {
        Iterator<p> it = iterable.iterator();
        w2.H.e(it.hasNext(), "Must be at least 1 hash code to combine.");
        int d10 = it.next().d() / 8;
        byte[] bArr = new byte[d10];
        Iterator<p> it2 = iterable.iterator();
        while (it2.hasNext()) {
            byte[] a10 = it2.next().a();
            w2.H.e(a10.length == d10, "All hashcodes must have the same bit length.");
            for (int i10 = 0; i10 < a10.length; i10++) {
                bArr[i10] = (byte) (bArr[i10] + a10[i10]);
            }
        }
        return p.h(bArr);
    }

    public static q e(q qVar, q qVar2, q... qVarArr) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(qVar);
        arrayList.add(qVar2);
        Collections.addAll(arrayList, qVarArr);
        return new c((q[]) arrayList.toArray(new q[0]));
    }

    public static q f(Iterable<q> iterable) {
        w2.H.E(iterable);
        ArrayList arrayList = new ArrayList();
        Iterator<q> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        w2.H.k(!arrayList.isEmpty(), "number of hash functions (%s) must be > 0", arrayList.size());
        return new c((q[]) arrayList.toArray(new q[0]));
    }

    public static int g(long j10, int i10) {
        int i11 = 0;
        w2.H.k(i10 > 0, "buckets must be positive: %s", i10);
        d dVar = new d(j10);
        while (true) {
            int a10 = (int) ((i11 + 1) / dVar.a());
            if (a10 < 0 || a10 >= i10) {
                break;
            }
            i11 = a10;
        }
        return i11;
    }

    public static int h(p pVar, int i10) {
        return g(pVar.m(), i10);
    }

    public static q i() {
        return b.CRC_32.hashFunction;
    }

    public static q j() {
        return C2350j.f1437b;
    }

    public static q k() {
        return l.f1447b;
    }

    public static q l() {
        return m.f1451b;
    }

    public static q m(int i10) {
        int b10 = b(i10);
        if (b10 == 32) {
            return E.f1356f;
        }
        if (b10 <= 128) {
            return D.f1345d;
        }
        int i11 = (b10 + 127) / 128;
        q[] qVarArr = new q[i11];
        qVarArr[0] = D.f1345d;
        int i12 = f1468a;
        for (int i13 = 1; i13 < i11; i13++) {
            i12 += 1500450271;
            qVarArr[i13] = y(i12);
        }
        return new c(qVarArr);
    }

    public static q n(Key key) {
        return new B("HmacMD5", key, v("hmacMd5", key));
    }

    public static q o(byte[] bArr) {
        return n(new SecretKeySpec((byte[]) w2.H.E(bArr), "HmacMD5"));
    }

    public static q p(Key key) {
        return new B("HmacSHA1", key, v("hmacSha1", key));
    }

    public static q q(byte[] bArr) {
        return p(new SecretKeySpec((byte[]) w2.H.E(bArr), "HmacSHA1"));
    }

    public static q r(Key key) {
        return new B(KeyProperties.KEY_ALGORITHM_HMAC_SHA256, key, v("hmacSha256", key));
    }

    public static q s(byte[] bArr) {
        return r(new SecretKeySpec((byte[]) w2.H.E(bArr), KeyProperties.KEY_ALGORITHM_HMAC_SHA256));
    }

    public static q t(Key key) {
        return new B(KeyProperties.KEY_ALGORITHM_HMAC_SHA512, key, v("hmacSha512", key));
    }

    public static q u(byte[] bArr) {
        return t(new SecretKeySpec((byte[]) w2.H.E(bArr), KeyProperties.KEY_ALGORITHM_HMAC_SHA512));
    }

    public static String v(String str, Key key) {
        return String.format("Hashing.%s(Key[algorithm=%s, format=%s])", str, key.getAlgorithm(), key.getFormat());
    }

    @Deprecated
    public static q w() {
        return e.f1470a;
    }

    public static q x() {
        return D.f1344c;
    }

    public static q y(int i10) {
        return new D(i10);
    }

    @Deprecated
    public static q z() {
        return E.f1354d;
    }
}
