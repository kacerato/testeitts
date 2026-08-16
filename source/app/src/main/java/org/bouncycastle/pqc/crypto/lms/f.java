package org.bouncycastle.pqc.crypto.lms;

import fm.C13260d;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class f extends t implements p {

    public final int f102154c;

    public final boolean f102155d;

    public List<v> f102156e;

    public List<x> f102157f;

    public final long f102158g;

    public long f102159h;

    public g f102160i;

    public f(int i10, List<v> list, List<x> list2, long j10, long j11) {
        super(true);
        this.f102159h = 0L;
        this.f102154c = i10;
        this.f102156e = Collections.unmodifiableList(list);
        this.f102157f = Collections.unmodifiableList(list2);
        this.f102159h = j10;
        this.f102158g = j11;
        this.f102155d = false;
        s();
    }

    public static f g(Object obj) throws IOException {
        if (obj instanceof f) {
            return (f) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            if (dataInputStream.readInt() != 0) {
                throw new IllegalStateException("unknown version for hss private key");
            }
            int readInt = dataInputStream.readInt();
            long readLong = dataInputStream.readLong();
            long readLong2 = dataInputStream.readLong();
            boolean readBoolean = dataInputStream.readBoolean();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i10 = 0; i10 < readInt; i10++) {
                arrayList.add(v.k(obj));
            }
            for (int i11 = 0; i11 < readInt - 1; i11++) {
                arrayList2.add(x.a(obj));
            }
            return new f(readInt, arrayList, arrayList2, readLong, readLong2, readBoolean);
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return g(C13260d.e((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream2 = null;
        try {
            DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                f g10 = g(dataInputStream3);
                dataInputStream3.close();
                return g10;
            } catch (Throwable th2) {
                th = th2;
                dataInputStream2 = dataInputStream3;
                if (dataInputStream2 != null) {
                    dataInputStream2.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static f h(byte[] bArr, byte[] bArr2) throws IOException {
        f g10 = g(bArr);
        g10.f102160i = g.d(bArr2);
        return g10;
    }

    public static f q(f fVar) {
        try {
            return g(fVar.getEncoded());
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    @Override
    public long S0() {
        return this.f102158g - this.f102159h;
    }

    @Override
    public o T0() {
        v vVar;
        y[] yVarArr;
        int j10 = j();
        synchronized (this) {
            try {
                C14747c.e(this);
                List<v> i10 = i();
                List<x> n10 = n();
                int i11 = j10 - 1;
                vVar = i().get(i11);
                yVarArr = new y[i11];
                int i12 = 0;
                while (i12 < i11) {
                    int i13 = i12 + 1;
                    yVarArr[i12] = new y(n10.get(i12), i10.get(i13).p());
                    i12 = i13;
                }
                o();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return vVar.T0().o(yVarArr);
    }

    @Override
    public byte[] U0(o oVar) {
        try {
            return C14747c.b(j(), oVar).getEncoded();
        } catch (IOException e10) {
            throw new IllegalStateException("unable to encode signature: " + e10.getMessage(), e10);
        }
    }

    public Object clone() throws CloneNotSupportedException {
        return q(this);
    }

    public f d(int i10) {
        f q10;
        synchronized (this) {
            try {
                long j10 = i10;
                if (S0() < j10) {
                    throw new IllegalArgumentException("usageCount exceeds usages remaining in current leaf");
                }
                long j11 = this.f102159h;
                this.f102159h = j10 + j11;
                q10 = q(new f(this.f102154c, new ArrayList(i()), new ArrayList(n()), j11, j11 + j10, true));
                s();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return q10;
    }

    public synchronized long e() {
        return this.f102159h;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f102154c == fVar.f102154c && this.f102155d == fVar.f102155d && this.f102158g == fVar.f102158g && this.f102159h == fVar.f102159h && this.f102156e.equals(fVar.f102156e)) {
            return this.f102157f.equals(fVar.f102157f);
        }
        return false;
    }

    public long f() {
        return this.f102158g;
    }

    @Override
    public synchronized byte[] getEncoded() throws IOException {
        C14745a a10;
        try {
            a10 = C14745a.i().m(0).m(this.f102154c).n(this.f102159h).n(this.f102158g).a(this.f102155d);
            Iterator<v> it = this.f102156e.iterator();
            while (it.hasNext()) {
                a10.c(it.next());
            }
            Iterator<x> it2 = this.f102157f.iterator();
            while (it2.hasNext()) {
                a10.c(it2.next());
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return a10.b();
    }

    public int hashCode() {
        int hashCode = ((((((this.f102154c * 31) + (this.f102155d ? 1 : 0)) * 31) + this.f102156e.hashCode()) * 31) + this.f102157f.hashCode()) * 31;
        long j10 = this.f102158g;
        int i10 = (hashCode + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.f102159h;
        return i10 + ((int) (j11 ^ (j11 >>> 32)));
    }

    public synchronized List<v> i() {
        return this.f102156e;
    }

    public int j() {
        return this.f102154c;
    }

    public synchronized u[] k() {
        u[] uVarArr;
        int size = this.f102156e.size();
        uVarArr = new u[size];
        for (int i10 = 0; i10 < size; i10++) {
            v vVar = this.f102156e.get(i10);
            uVarArr[i10] = new u(vVar.q(), vVar.o());
        }
        return uVarArr;
    }

    public synchronized g l() {
        return new g(this.f102154c, m().p());
    }

    public v m() {
        return this.f102156e.get(0);
    }

    public synchronized List<x> n() {
        return this.f102157f;
    }

    public synchronized void o() {
        this.f102159h++;
    }

    public boolean p() {
        return this.f102155d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void r(int i10) {
        int i11 = i10 - 1;
        k h10 = this.f102156e.get(i11).h();
        int d10 = h10.d().d();
        D a10 = h10.a();
        a10.h(-2);
        byte[] bArr = new byte[d10];
        a10.a(bArr, true);
        byte[] bArr2 = new byte[d10];
        a10.a(bArr2, false);
        byte[] bArr3 = new byte[16];
        System.arraycopy(bArr2, 0, bArr3, 0, 16);
        ArrayList arrayList = new ArrayList(this.f102156e);
        v vVar = this.f102156e.get(i10);
        arrayList.set(i10, n.a(vVar.q(), vVar.o(), 0, bArr3, bArr));
        ArrayList arrayList2 = new ArrayList(this.f102157f);
        arrayList2.set(i11, n.c((v) arrayList.get(i11), ((v) arrayList.get(i10)).p().toByteArray()));
        this.f102156e = Collections.unmodifiableList(arrayList);
        this.f102157f = Collections.unmodifiableList(arrayList2);
    }

    public void s() {
        boolean z10;
        List<v> i10 = i();
        int size = i10.size();
        long[] jArr = new long[size];
        long e10 = e();
        for (int size2 = i10.size() - 1; size2 >= 0; size2--) {
            A q10 = i10.get(size2).q();
            jArr[size2] = ((1 << q10.c()) - 1) & e10;
            e10 >>>= q10.c();
        }
        v[] vVarArr = (v[]) i10.toArray(new v[i10.size()]);
        List<x> list = this.f102157f;
        x[] xVarArr = (x[]) list.toArray(new x[list.size()]);
        v m10 = m();
        if (vVarArr[0].j() - 1 != jArr[0]) {
            vVarArr[0] = n.a(m10.q(), m10.o(), (int) jArr[0], m10.i(), m10.m());
            z10 = true;
        } else {
            z10 = false;
        }
        int i11 = 1;
        while (i11 < size) {
            int i12 = i11 - 1;
            v vVar = vVarArr[i12];
            int d10 = vVar.o().d();
            byte[] bArr = new byte[16];
            byte[] bArr2 = new byte[d10];
            D d11 = new D(vVar.i(), vVar.m(), C14746b.c(vVar.o()));
            d11.i((int) jArr[i12]);
            d11.h(-2);
            d11.a(bArr2, true);
            byte[] bArr3 = new byte[d10];
            d11.a(bArr3, false);
            System.arraycopy(bArr3, 0, bArr, 0, 16);
            boolean z11 = i11 >= size + (-1) ? jArr[i11] == ((long) vVarArr[i11].j()) : jArr[i11] == ((long) (vVarArr[i11].j() - 1));
            if (!org.bouncycastle.util.a.g(bArr, vVarArr[i11].i()) || !org.bouncycastle.util.a.g(bArr2, vVarArr[i11].m())) {
                v a10 = n.a(i10.get(i11).q(), i10.get(i11).o(), (int) jArr[i11], bArr, bArr2);
                vVarArr[i11] = a10;
                xVarArr[i12] = n.c(vVarArr[i12], a10.p().toByteArray());
            } else if (z11) {
                i11++;
            } else {
                vVarArr[i11] = n.a(i10.get(i11).q(), i10.get(i11).o(), (int) jArr[i11], bArr, bArr2);
            }
            z10 = true;
            i11++;
        }
        if (z10) {
            t(vVarArr, xVarArr);
        }
    }

    public void t(v[] vVarArr, x[] xVarArr) {
        synchronized (this) {
            this.f102156e = Collections.unmodifiableList(Arrays.asList(vVarArr));
            this.f102157f = Collections.unmodifiableList(Arrays.asList(xVarArr));
        }
    }

    public f(int i10, List<v> list, List<x> list2, long j10, long j11, boolean z10) {
        super(true);
        this.f102159h = 0L;
        this.f102154c = i10;
        this.f102156e = Collections.unmodifiableList(list);
        this.f102157f = Collections.unmodifiableList(list2);
        this.f102159h = j10;
        this.f102158g = j11;
        this.f102155d = z10;
    }
}
