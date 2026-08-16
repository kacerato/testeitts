package org.bouncycastle.pqc.crypto.lms;

import fm.C13260d;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

public class w extends t implements q {

    public final A f102231c;

    public final j f102232d;

    public final byte[] f102233e;

    public final byte[] f102234f;

    public w(A a10, j jVar, byte[] bArr, byte[] bArr2) {
        super(false);
        this.f102231c = a10;
        this.f102232d = jVar;
        this.f102233e = org.bouncycastle.util.a.p(bArr2);
        this.f102234f = org.bouncycastle.util.a.p(bArr);
    }

    public static w f(Object obj) throws IOException {
        if (obj instanceof w) {
            return (w) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            A e10 = A.e(dataInputStream.readInt());
            j f10 = j.f(dataInputStream.readInt());
            byte[] bArr = new byte[16];
            dataInputStream.readFully(bArr);
            byte[] bArr2 = new byte[e10.d()];
            dataInputStream.readFully(bArr2);
            return new w(e10, f10, bArr2, bArr);
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return f(C13260d.e((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream2 = null;
        try {
            DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                w f11 = f(dataInputStream3);
                dataInputStream3.close();
                return f11;
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

    @Override
    public boolean a(o oVar) {
        return n.d(this, oVar);
    }

    @Override
    public o b(byte[] bArr) {
        try {
            return d(x.a(bArr));
        } catch (IOException e10) {
            throw new IllegalStateException("cannot parse signature: " + e10.getMessage());
        }
    }

    public o d(x xVar) {
        int h10 = h().h();
        if (xVar.b().c().h() == h10) {
            return new l(j.f(h10), this.f102233e, xVar.d(), null).b(xVar);
        }
        throw new IllegalArgumentException("ots type from lsm signature does not match ots signature type from embedded ots signature");
    }

    public byte[] e() {
        return org.bouncycastle.util.a.p(this.f102233e);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        w wVar = (w) obj;
        if (this.f102231c.equals(wVar.f102231c) && this.f102232d.equals(wVar.f102232d) && org.bouncycastle.util.a.g(this.f102233e, wVar.f102233e)) {
            return org.bouncycastle.util.a.g(this.f102234f, wVar.f102234f);
        }
        return false;
    }

    public u g() {
        return new u(i(), h());
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return toByteArray();
    }

    public j h() {
        return this.f102232d;
    }

    public int hashCode() {
        return (((((this.f102231c.hashCode() * 31) + this.f102232d.hashCode()) * 31) + org.bouncycastle.util.a.t0(this.f102233e)) * 31) + org.bouncycastle.util.a.t0(this.f102234f);
    }

    public A i() {
        return this.f102231c;
    }

    public byte[] j() {
        return org.bouncycastle.util.a.p(this.f102234f);
    }

    public boolean k(byte[] bArr) {
        return org.bouncycastle.util.a.I(this.f102234f, bArr);
    }

    public byte[] l() {
        return this.f102233e;
    }

    public byte[] toByteArray() {
        return C14745a.i().m(this.f102231c.f()).m(this.f102232d.h()).d(this.f102233e).d(this.f102234f).b();
    }
}
