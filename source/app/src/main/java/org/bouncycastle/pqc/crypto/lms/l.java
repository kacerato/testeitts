package org.bouncycastle.pqc.crypto.lms;

import Bi.InterfaceC2392y;
import fm.C13260d;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

public class l implements org.bouncycastle.util.g {

    public final j f102197b;

    public final byte[] f102198c;

    public final int f102199d;

    public final byte[] f102200e;

    public l(j jVar, byte[] bArr, int i10, byte[] bArr2) {
        this.f102197b = jVar;
        this.f102198c = bArr;
        this.f102199d = i10;
        this.f102200e = bArr2;
    }

    public static l d(Object obj) throws Exception {
        if (obj instanceof l) {
            return (l) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            j f10 = j.f(dataInputStream.readInt());
            byte[] bArr = new byte[16];
            dataInputStream.readFully(bArr);
            int readInt = dataInputStream.readInt();
            byte[] bArr2 = new byte[f10.d()];
            dataInputStream.readFully(bArr2);
            return new l(f10, bArr, readInt, bArr2);
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return d(C13260d.e((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream2 = null;
        try {
            DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                l d10 = d(dataInputStream3);
                dataInputStream3.close();
                return d10;
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

    public o a(m mVar) {
        InterfaceC2392y c10 = C14746b.c(this.f102197b);
        C.b(this.f102198c, c10);
        C.e(this.f102199d, c10);
        C.d(B.f102143g, c10);
        C.b(mVar.a(), c10);
        return new o(this, mVar, c10);
    }

    public o b(x xVar) {
        InterfaceC2392y c10 = C14746b.c(this.f102197b);
        C.b(this.f102198c, c10);
        C.e(this.f102199d, c10);
        C.d(B.f102143g, c10);
        C.b(xVar.b().a(), c10);
        return new o(this, xVar, c10);
    }

    public byte[] c() {
        return this.f102198c;
    }

    public byte[] e() {
        return this.f102200e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return this.f102199d == lVar.f102199d && org.bouncycastle.util.o.a(this.f102197b, lVar.f102197b) && org.bouncycastle.util.a.g(this.f102198c, lVar.f102198c) && org.bouncycastle.util.a.g(this.f102200e, lVar.f102200e);
    }

    public j f() {
        return this.f102197b;
    }

    public int g() {
        return this.f102199d;
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return C14745a.i().m(this.f102197b.h()).d(this.f102198c).m(this.f102199d).d(this.f102200e).b();
    }

    public int hashCode() {
        return (((((this.f102199d * 31) + org.bouncycastle.util.o.b(this.f102197b)) * 31) + org.bouncycastle.util.a.t0(this.f102198c)) * 31) + org.bouncycastle.util.a.t0(this.f102200e);
    }
}
