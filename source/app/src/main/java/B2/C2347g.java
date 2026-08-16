package B2;

import B2.EnumC2348h;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.math.RoundingMode;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@k
@InterfaceC15800a
public final class C2347g<T> implements w2.I<T>, Serializable {

    public final EnumC2348h.c f1419b;

    public final int f1420c;

    public final n<? super T> f1421d;

    public final c f1422e;

    public static class b<T> implements Serializable {

        public static final long f1423f = 1;

        public final long[] f1424b;

        public final int f1425c;

        public final n<? super T> f1426d;

        public final c f1427e;

        public b(C2347g<T> c2347g) {
            this.f1424b = EnumC2348h.c.i(c2347g.f1419b.f1429a);
            this.f1425c = c2347g.f1420c;
            this.f1426d = c2347g.f1421d;
            this.f1427e = c2347g.f1422e;
        }

        public Object a() {
            return new C2347g(new EnumC2348h.c(this.f1424b), this.f1425c, this.f1426d, this.f1427e);
        }
    }

    public interface c extends Serializable {
        <T> boolean Qb(@F T t10, n<? super T> nVar, int i10, EnumC2348h.c cVar);

        <T> boolean Qd(@F T t10, n<? super T> nVar, int i10, EnumC2348h.c cVar);

        int ordinal();
    }

    public static <T> C2347g<T> h(n<? super T> nVar, int i10) {
        return j(nVar, i10);
    }

    public static <T> C2347g<T> i(n<? super T> nVar, int i10, double d10) {
        return k(nVar, i10, d10);
    }

    public static <T> C2347g<T> j(n<? super T> nVar, long j10) {
        return k(nVar, j10, 0.03d);
    }

    public static <T> C2347g<T> k(n<? super T> nVar, long j10, double d10) {
        return l(nVar, j10, d10, EnumC2348h.MURMUR128_MITZ_64);
    }

    @v2.d
    public static <T> C2347g<T> l(n<? super T> nVar, long j10, double d10, c cVar) {
        w2.H.E(nVar);
        w2.H.p(j10 >= 0, "Expected insertions (%s) must be >= 0", j10);
        w2.H.u(d10 > 0.0d, "False positive probability (%s) must be > 0.0", Double.valueOf(d10));
        w2.H.u(d10 < 1.0d, "False positive probability (%s) must be < 1.0", Double.valueOf(d10));
        w2.H.E(cVar);
        if (j10 == 0) {
            j10 = 1;
        }
        long p10 = p(j10, d10);
        try {
            return new C2347g<>(new EnumC2348h.c(p10), q(j10, p10), nVar, cVar);
        } catch (IllegalArgumentException e10) {
            StringBuilder sb2 = new StringBuilder(57);
            sb2.append("Could not create BloomFilter of ");
            sb2.append(p10);
            sb2.append(" bits");
            throw new IllegalArgumentException(sb2.toString(), e10);
        }
    }

    @v2.d
    public static long p(long j10, double d10) {
        if (d10 == 0.0d) {
            d10 = Double.MIN_VALUE;
        }
        return (long) (((-j10) * Math.log(d10)) / (Math.log(2.0d) * Math.log(2.0d)));
    }

    @v2.d
    public static int q(long j10, long j11) {
        return Math.max(1, (int) Math.round((j11 / j10) * Math.log(2.0d)));
    }

    public static <T> C2347g<T> u(InputStream inputStream, n<? super T> nVar) throws IOException {
        int i10;
        int i11;
        w2.H.F(inputStream, "InputStream");
        w2.H.F(nVar, "Funnel");
        int i12 = -1;
        try {
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            byte readByte = dataInputStream.readByte();
            try {
                i11 = com.google.common.primitives.v.p(dataInputStream.readByte());
                try {
                    i12 = dataInputStream.readInt();
                    EnumC2348h enumC2348h = EnumC2348h.values()[readByte];
                    EnumC2348h.c cVar = new EnumC2348h.c(E2.h.d(i12, 64L));
                    for (int i13 = 0; i13 < i12; i13++) {
                        cVar.g(i13, dataInputStream.readLong());
                    }
                    return new C2347g<>(cVar, i11, nVar, enumC2348h);
                } catch (RuntimeException e10) {
                    e = e10;
                    int i14 = i12;
                    i12 = readByte;
                    i10 = i14;
                    StringBuilder sb2 = new StringBuilder(134);
                    sb2.append("Unable to deserialize BloomFilter from InputStream. strategyOrdinal: ");
                    sb2.append(i12);
                    sb2.append(" numHashFunctions: ");
                    sb2.append(i11);
                    sb2.append(" dataLength: ");
                    sb2.append(i10);
                    throw new IOException(sb2.toString(), e);
                }
            } catch (RuntimeException e11) {
                e = e11;
                i11 = -1;
                i12 = readByte;
                i10 = -1;
            }
        } catch (RuntimeException e12) {
            e = e12;
            i10 = -1;
            i11 = -1;
        }
    }

    @Override
    @Deprecated
    public boolean apply(@F T t10) {
        return o(t10);
    }

    public long e() {
        double b10 = this.f1419b.b();
        return E2.c.q(((-Math.log1p(-(this.f1419b.a() / b10))) * b10) / this.f1420c, RoundingMode.HALF_UP);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2347g)) {
            return false;
        }
        C2347g c2347g = (C2347g) obj;
        return this.f1420c == c2347g.f1420c && this.f1421d.equals(c2347g.f1421d) && this.f1419b.equals(c2347g.f1419b) && this.f1422e.equals(c2347g.f1422e);
    }

    @v2.d
    public long f() {
        return this.f1419b.b();
    }

    public C2347g<T> g() {
        return new C2347g<>(this.f1419b.c(), this.f1420c, this.f1421d, this.f1422e);
    }

    public int hashCode() {
        return w2.B.b(Integer.valueOf(this.f1420c), this.f1421d, this.f1422e, this.f1419b);
    }

    public double m() {
        return Math.pow(this.f1419b.a() / f(), this.f1420c);
    }

    public boolean n(C2347g<T> c2347g) {
        w2.H.E(c2347g);
        return this != c2347g && this.f1420c == c2347g.f1420c && f() == c2347g.f() && this.f1422e.equals(c2347g.f1422e) && this.f1421d.equals(c2347g.f1421d);
    }

    public boolean o(@F T t10) {
        return this.f1422e.Qb(t10, this.f1421d, this.f1420c, this.f1419b);
    }

    @I2.a
    public boolean r(@F T t10) {
        return this.f1422e.Qd(t10, this.f1421d, this.f1420c, this.f1419b);
    }

    public void s(C2347g<T> c2347g) {
        w2.H.E(c2347g);
        w2.H.e(this != c2347g, "Cannot combine a BloomFilter with itself.");
        int i10 = this.f1420c;
        int i11 = c2347g.f1420c;
        w2.H.m(i10 == i11, "BloomFilters must have the same number of hash functions (%s != %s)", i10, i11);
        w2.H.s(f() == c2347g.f(), "BloomFilters must have the same size underlying bit arrays (%s != %s)", f(), c2347g.f());
        w2.H.y(this.f1422e.equals(c2347g.f1422e), "BloomFilters must have equal strategies (%s != %s)", this.f1422e, c2347g.f1422e);
        w2.H.y(this.f1421d.equals(c2347g.f1421d), "BloomFilters must have equal funnels (%s != %s)", this.f1421d, c2347g.f1421d);
        this.f1419b.f(c2347g.f1419b);
    }

    public final Object v() {
        return new b(this);
    }

    public void w(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeByte(com.google.common.primitives.u.a(this.f1422e.ordinal()));
        dataOutputStream.writeByte(com.google.common.primitives.v.a(this.f1420c));
        dataOutputStream.writeInt(this.f1419b.f1429a.length());
        for (int i10 = 0; i10 < this.f1419b.f1429a.length(); i10++) {
            dataOutputStream.writeLong(this.f1419b.f1429a.get(i10));
        }
    }

    public C2347g(EnumC2348h.c cVar, int i10, n<? super T> nVar, c cVar2) {
        w2.H.k(i10 > 0, "numHashFunctions (%s) must be > 0", i10);
        w2.H.k(i10 <= 255, "numHashFunctions (%s) must be <= 255", i10);
        this.f1419b = (EnumC2348h.c) w2.H.E(cVar);
        this.f1420c = i10;
        this.f1421d = (n) w2.H.E(nVar);
        this.f1422e = (c) w2.H.E(cVar2);
    }
}
