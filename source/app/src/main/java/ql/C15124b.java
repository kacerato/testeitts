package ql;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import java.util.TreeMap;
import oh.C14549x;
import ql.C15132j;

public class C15124b implements Serializable {

    public static final long f108326d = -3464451825208522308L;

    public final Map<Integer, C15123a> f108327b = new TreeMap();

    public transient long f108328c;

    public C15124b(long j10) {
        this.f108328c = j10;
    }

    public C15123a a(int i10) {
        return this.f108327b.get(org.bouncycastle.util.k.j(i10));
    }

    public long b() {
        return this.f108328c;
    }

    public boolean c() {
        return this.f108327b.isEmpty();
    }

    public void d(int i10, C15123a c15123a) {
        this.f108327b.put(org.bouncycastle.util.k.j(i10), c15123a);
    }

    public final void e(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f108328c = objectInputStream.available() != 0 ? objectInputStream.readLong() : 0L;
    }

    public C15123a f(int i10, byte[] bArr, byte[] bArr2, C15132j c15132j) {
        return this.f108327b.put(org.bouncycastle.util.k.j(i10), this.f108327b.get(org.bouncycastle.util.k.j(i10)).e(bArr, bArr2, c15132j));
    }

    public void g(z zVar, long j10, byte[] bArr, byte[] bArr2) {
        H j11 = zVar.j();
        int b10 = j11.b();
        long l10 = O.l(j10, b10);
        int k10 = O.k(j10, b10);
        C15132j c15132j = (C15132j) new C15132j.b().i(l10).p(k10).e();
        int i10 = (1 << b10) - 1;
        if (k10 < i10) {
            if (a(0) == null || k10 == 0) {
                d(0, new C15123a(j11, bArr, bArr2, c15132j));
            }
            f(0, bArr, bArr2, c15132j);
        }
        for (int i11 = 1; i11 < zVar.b(); i11++) {
            int k11 = O.k(l10, b10);
            l10 = O.l(l10, b10);
            C15132j c15132j2 = (C15132j) new C15132j.b().h(i11).i(l10).p(k11).e();
            if (this.f108327b.get(Integer.valueOf(i11)) == null || O.p(j10, b10, i11)) {
                this.f108327b.put(Integer.valueOf(i11), new C15123a(j11, bArr, bArr2, c15132j2));
            }
            if (k11 < i10 && O.o(j10, b10, i11)) {
                f(i11, bArr, bArr2, c15132j2);
            }
        }
    }

    public C15124b h(C14549x c14549x) {
        C15124b c15124b = new C15124b(this.f108328c);
        for (Integer num : this.f108327b.o()) {
            c15124b.f108327b.put(num, this.f108327b.get(num).o(c14549x));
        }
        return c15124b;
    }

    public final void i(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(this.f108328c);
    }

    public C15124b(C15124b c15124b, long j10) {
        for (Integer num : c15124b.f108327b.o()) {
            this.f108327b.put(num, new C15123a(c15124b.f108327b.get(num)));
        }
        this.f108328c = j10;
    }

    public C15124b(z zVar, long j10, byte[] bArr, byte[] bArr2) {
        this.f108328c = (1 << zVar.a()) - 1;
        for (long j11 = 0; j11 < j10; j11++) {
            g(zVar, j11, bArr, bArr2);
        }
    }
}
