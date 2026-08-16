package org.bouncycastle.pqc.crypto.lms;

import Bi.InterfaceC2392y;
import fm.C13260d;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.WeakHashMap;
import org.bouncycastle.pqc.crypto.ExhaustedPrivateKeyException;

public class v extends t implements p {

    public static a f102218m;

    public static a[] f102219n;

    public final byte[] f102220c;

    public final A f102221d;

    public final j f102222e;

    public final int f102223f;

    public final byte[] f102224g;

    public final Map<a, byte[]> f102225h;

    public final int f102226i;

    public final InterfaceC2392y f102227j;

    public int f102228k;

    public w f102229l;

    public static class a {

        public final int f102230a;

        public a(int i10) {
            this.f102230a = i10;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && ((a) obj).f102230a == this.f102230a;
        }

        public int hashCode() {
            return this.f102230a;
        }
    }

    static {
        a aVar = new a(1);
        f102218m = aVar;
        a[] aVarArr = new a[129];
        f102219n = aVarArr;
        aVarArr[1] = aVar;
        int i10 = 2;
        while (true) {
            a[] aVarArr2 = f102219n;
            if (i10 >= aVarArr2.length) {
                return;
            }
            aVarArr2[i10] = new a(i10);
            i10++;
        }
    }

    public v(v vVar, int i10, int i11) {
        super(true);
        A a10 = vVar.f102221d;
        this.f102221d = a10;
        this.f102222e = vVar.f102222e;
        this.f102228k = i10;
        this.f102220c = vVar.f102220c;
        this.f102223f = i11;
        this.f102224g = vVar.f102224g;
        this.f102226i = 1 << a10.c();
        this.f102225h = vVar.f102225h;
        this.f102227j = C14746b.d(a10);
        this.f102229l = vVar.f102229l;
    }

    public static v k(Object obj) throws IOException {
        DataInputStream dataInputStream;
        if (obj instanceof v) {
            return (v) obj;
        }
        if (!(obj instanceof DataInputStream)) {
            if (!(obj instanceof byte[])) {
                if (obj instanceof InputStream) {
                    return k(C13260d.e((InputStream) obj));
                }
                throw new IllegalArgumentException("cannot parse " + obj);
            }
            DataInputStream dataInputStream2 = null;
            try {
                dataInputStream = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                v k10 = k(dataInputStream);
                dataInputStream.close();
                return k10;
            } catch (Throwable th3) {
                th = th3;
                dataInputStream2 = dataInputStream;
                if (dataInputStream2 != null) {
                    dataInputStream2.close();
                }
                throw th;
            }
        }
        DataInputStream dataInputStream3 = (DataInputStream) obj;
        if (dataInputStream3.readInt() != 0) {
            throw new IllegalStateException("expected version 0 lms private key");
        }
        A e10 = A.e(dataInputStream3.readInt());
        j f10 = j.f(dataInputStream3.readInt());
        byte[] bArr = new byte[16];
        dataInputStream3.readFully(bArr);
        int readInt = dataInputStream3.readInt();
        int readInt2 = dataInputStream3.readInt();
        int readInt3 = dataInputStream3.readInt();
        if (readInt3 < 0) {
            throw new IllegalStateException("secret length less than zero");
        }
        if (readInt3 <= dataInputStream3.available()) {
            byte[] bArr2 = new byte[readInt3];
            dataInputStream3.readFully(bArr2);
            return new v(e10, f10, readInt, bArr, readInt2, bArr2);
        }
        throw new IOException("secret length exceeded " + dataInputStream3.available());
    }

    public static v l(byte[] bArr, byte[] bArr2) throws IOException {
        v k10 = k(bArr);
        k10.f102229l = w.f(bArr2);
        return k10;
    }

    @Override
    public long S0() {
        return this.f102223f - j();
    }

    @Override
    public o T0() {
        int c10 = q().c();
        int j10 = j();
        k n10 = n();
        int i10 = (1 << c10) + j10;
        byte[][] bArr = new byte[c10];
        for (int i11 = 0; i11 < c10; i11++) {
            bArr[i11] = f((i10 / (1 << i11)) ^ 1);
        }
        return n10.f(q(), bArr);
    }

    @Override
    public byte[] U0(o oVar) {
        try {
            return n.b(oVar).getEncoded();
        } catch (IOException e10) {
            throw new IllegalStateException("unable to encode signature: " + e10.getMessage(), e10);
        }
    }

    public final byte[] d(int i10) {
        int c10 = 1 << q().c();
        if (i10 >= c10) {
            C.b(i(), this.f102227j);
            C.e(i10, this.f102227j);
            C.d(n.f102204a, this.f102227j);
            C.b(B.i(o(), i(), i10 - c10, m()), this.f102227j);
            byte[] bArr = new byte[this.f102227j.f()];
            this.f102227j.c(bArr, 0);
            return bArr;
        }
        int i11 = i10 * 2;
        byte[] f10 = f(i11);
        byte[] f11 = f(i11 + 1);
        C.b(i(), this.f102227j);
        C.e(i10, this.f102227j);
        C.d(n.f102205b, this.f102227j);
        C.b(f10, this.f102227j);
        C.b(f11, this.f102227j);
        byte[] bArr2 = new byte[this.f102227j.f()];
        this.f102227j.c(bArr2, 0);
        return bArr2;
    }

    public v e(int i10) {
        v vVar;
        synchronized (this) {
            try {
                int i11 = this.f102228k;
                if (i11 + i10 >= this.f102223f) {
                    throw new IllegalArgumentException("usageCount exceeds usages remaining");
                }
                vVar = new v(this, i11, i11 + i10);
                this.f102228k += i10;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return vVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        v vVar = (v) obj;
        if (this.f102228k != vVar.f102228k || this.f102223f != vVar.f102223f || !org.bouncycastle.util.a.g(this.f102220c, vVar.f102220c)) {
            return false;
        }
        A a10 = this.f102221d;
        if (a10 == null ? vVar.f102221d != null : !a10.equals(vVar.f102221d)) {
            return false;
        }
        j jVar = this.f102222e;
        if (jVar == null ? vVar.f102222e == null : jVar.equals(vVar.f102222e)) {
            return org.bouncycastle.util.a.g(this.f102224g, vVar.f102224g);
        }
        return false;
    }

    public byte[] f(int i10) {
        if (i10 >= this.f102226i) {
            return d(i10);
        }
        a[] aVarArr = f102219n;
        return g(i10 < aVarArr.length ? aVarArr[i10] : new a(i10));
    }

    public final byte[] g(a aVar) {
        synchronized (this.f102225h) {
            try {
                byte[] bArr = this.f102225h.get(aVar);
                if (bArr != null) {
                    return bArr;
                }
                byte[] d10 = d(aVar.f102230a);
                this.f102225h.put(aVar, d10);
                return d10;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return C14745a.i().m(0).m(this.f102221d.f()).m(this.f102222e.h()).d(this.f102220c).m(this.f102228k).m(this.f102223f).m(this.f102224g.length).d(this.f102224g).b();
    }

    public k h() {
        k kVar;
        synchronized (this) {
            try {
                int i10 = this.f102228k;
                if (i10 >= this.f102223f) {
                    throw new ExhaustedPrivateKeyException("ots private keys expired");
                }
                kVar = new k(this.f102222e, this.f102220c, i10, this.f102224g);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return kVar;
    }

    public int hashCode() {
        int t02 = ((this.f102228k * 31) + org.bouncycastle.util.a.t0(this.f102220c)) * 31;
        A a10 = this.f102221d;
        int hashCode = (t02 + (a10 != null ? a10.hashCode() : 0)) * 31;
        j jVar = this.f102222e;
        return ((((hashCode + (jVar != null ? jVar.hashCode() : 0)) * 31) + this.f102223f) * 31) + org.bouncycastle.util.a.t0(this.f102224g);
    }

    public byte[] i() {
        return org.bouncycastle.util.a.p(this.f102220c);
    }

    public synchronized int j() {
        return this.f102228k;
    }

    public byte[] m() {
        return org.bouncycastle.util.a.p(this.f102224g);
    }

    public k n() {
        k kVar;
        synchronized (this) {
            try {
                int i10 = this.f102228k;
                if (i10 >= this.f102223f) {
                    throw new ExhaustedPrivateKeyException("ots private key exhausted");
                }
                kVar = new k(this.f102222e, this.f102220c, i10, this.f102224g);
                r();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return kVar;
    }

    public j o() {
        return this.f102222e;
    }

    public w p() {
        w wVar;
        synchronized (this) {
            try {
                if (this.f102229l == null) {
                    this.f102229l = new w(this.f102221d, this.f102222e, g(f102218m), this.f102220c);
                }
                wVar = this.f102229l;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return wVar;
    }

    public A q() {
        return this.f102221d;
    }

    public synchronized void r() {
        this.f102228k++;
    }

    public v(A a10, j jVar, int i10, byte[] bArr, int i11, byte[] bArr2) {
        super(true);
        this.f102221d = a10;
        this.f102222e = jVar;
        this.f102228k = i10;
        this.f102220c = org.bouncycastle.util.a.p(bArr);
        this.f102223f = i11;
        this.f102224g = org.bouncycastle.util.a.p(bArr2);
        this.f102226i = 1 << (a10.c() + 1);
        this.f102225h = new WeakHashMap();
        this.f102227j = C14746b.d(a10);
    }
}
