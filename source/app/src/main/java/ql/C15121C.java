package ql;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ql.K;

public final class C15121C implements N, org.bouncycastle.util.g {

    public final z f108240b;

    public final long f108241c;

    public final byte[] f108242d;

    public final List<K> f108243e;

    public static class b {

        public final z f108244a;

        public long f108245b = 0;

        public byte[] f108246c = null;

        public List<K> f108247d = null;

        public byte[] f108248e = null;

        public b(z zVar) {
            this.f108244a = zVar;
        }

        public C15121C f() {
            return new C15121C(this);
        }

        public b g(long j10) {
            this.f108245b = j10;
            return this;
        }

        public b h(byte[] bArr) {
            this.f108246c = O.d(bArr);
            return this;
        }

        public b i(List<K> list) {
            this.f108247d = list;
            return this;
        }

        public b j(byte[] bArr) {
            this.f108248e = org.bouncycastle.util.a.p(bArr);
            return this;
        }
    }

    public C15121C(b bVar) {
        z zVar = bVar.f108244a;
        this.f108240b = zVar;
        if (zVar == null) {
            throw new NullPointerException("params == null");
        }
        int g10 = zVar.g();
        byte[] bArr = bVar.f108248e;
        if (bArr == null) {
            this.f108241c = bVar.f108245b;
            byte[] bArr2 = bVar.f108246c;
            if (bArr2 == null) {
                this.f108242d = new byte[g10];
            } else {
                if (bArr2.length != g10) {
                    throw new IllegalArgumentException("size of random needs to be equal to size of digest");
                }
                this.f108242d = bArr2;
            }
            List<K> list = bVar.f108247d;
            this.f108243e = list == null ? new ArrayList<>() : list;
            return;
        }
        int a10 = zVar.h().e().a();
        int ceil = (int) Math.ceil(zVar.a() / 8.0d);
        int a11 = ((zVar.a() / zVar.b()) + a10) * g10;
        if (bArr.length != ceil + g10 + (zVar.b() * a11)) {
            throw new IllegalArgumentException("signature has wrong size");
        }
        long b10 = O.b(bArr, 0, ceil);
        this.f108241c = b10;
        if (!O.n(zVar.a(), b10)) {
            throw new IllegalArgumentException("index out of bounds");
        }
        this.f108242d = O.i(bArr, ceil, g10);
        this.f108243e = new ArrayList();
        for (int i10 = ceil + g10; i10 < bArr.length; i10 += a11) {
            this.f108243e.add(new K.a(this.f108240b.j()).g(O.i(bArr, i10, a11)).e());
        }
    }

    public long a() {
        return this.f108241c;
    }

    public byte[] b() {
        return O.d(this.f108242d);
    }

    public List<K> c() {
        return this.f108243e;
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return toByteArray();
    }

    @Override
    public byte[] toByteArray() {
        int g10 = this.f108240b.g();
        int a10 = this.f108240b.h().e().a();
        int ceil = (int) Math.ceil(this.f108240b.a() / 8.0d);
        int a11 = ((this.f108240b.a() / this.f108240b.b()) + a10) * g10;
        byte[] bArr = new byte[ceil + g10 + (this.f108240b.b() * a11)];
        O.f(bArr, O.t(this.f108241c, ceil), 0);
        O.f(bArr, this.f108242d, ceil);
        int i10 = ceil + g10;
        Iterator<K> it = this.f108243e.iterator();
        while (it.hasNext()) {
            O.f(bArr, it.next().toByteArray(), i10);
            i10 += a11;
        }
        return bArr;
    }
}
