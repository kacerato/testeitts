package org.bouncycastle.pqc.crypto.lms;

import fm.C13260d;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

public class h implements org.bouncycastle.util.g {

    public final int f102163b;

    public final y[] f102164c;

    public final x f102165d;

    public h(int i10, y[] yVarArr, x xVar) {
        this.f102163b = i10;
        this.f102164c = yVarArr;
        this.f102165d = xVar;
    }

    public static h a(Object obj, int i10) throws IOException {
        if (obj instanceof h) {
            return (h) obj;
        }
        if (obj instanceof DataInputStream) {
            int readInt = ((DataInputStream) obj).readInt();
            if (readInt != i10 - 1) {
                throw new IllegalStateException("nspk exceeded maxNspk");
            }
            y[] yVarArr = new y[readInt];
            if (readInt != 0) {
                for (int i11 = 0; i11 < readInt; i11++) {
                    yVarArr[i11] = new y(x.a(obj), w.f(obj));
                }
            }
            return new h(readInt, yVarArr, x.a(obj));
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return a(C13260d.e((InputStream) obj), i10);
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream = null;
        try {
            DataInputStream dataInputStream2 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                h a10 = a(dataInputStream2, i10);
                dataInputStream2.close();
                return a10;
            } catch (Throwable th2) {
                th = th2;
                dataInputStream = dataInputStream2;
                if (dataInputStream != null) {
                    dataInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public x b() {
        return this.f102165d;
    }

    public y[] c() {
        return this.f102164c;
    }

    public int d() {
        return this.f102163b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        h hVar = (h) obj;
        return this.f102163b == hVar.f102163b && org.bouncycastle.util.a.k(this.f102164c, hVar.f102164c) && org.bouncycastle.util.o.a(this.f102165d, hVar.f102165d);
    }

    @Override
    public byte[] getEncoded() throws IOException {
        C14745a i10 = C14745a.i();
        i10.m(this.f102163b);
        y[] yVarArr = this.f102164c;
        if (yVarArr != null) {
            for (y yVar : yVarArr) {
                i10.c(yVar);
            }
        }
        i10.c(this.f102165d);
        return i10.b();
    }

    public int hashCode() {
        return (((this.f102163b * 31) + org.bouncycastle.util.a.A0(this.f102164c)) * 31) + org.bouncycastle.util.o.b(this.f102165d);
    }
}
