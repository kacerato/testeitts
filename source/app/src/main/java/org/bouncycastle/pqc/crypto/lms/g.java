package org.bouncycastle.pqc.crypto.lms;

import fm.C13260d;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

public class g extends t implements q {

    public final int f102161c;

    public final w f102162d;

    public g(int i10, w wVar) {
        super(false);
        if (wVar == null) {
            throw new NullPointerException("lmsPublicKey");
        }
        this.f102161c = i10;
        this.f102162d = wVar;
    }

    public static g d(Object obj) throws IOException {
        if (obj instanceof g) {
            return (g) obj;
        }
        if (obj instanceof DataInputStream) {
            return new g(((DataInputStream) obj).readInt(), w.f(obj));
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return d(C13260d.e((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream = null;
        try {
            DataInputStream dataInputStream2 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                g d10 = d(dataInputStream2);
                dataInputStream2.close();
                return d10;
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

    @Override
    public boolean a(o oVar) {
        y[] n10 = oVar.n();
        if (n10.length != e() - 1) {
            return false;
        }
        w f10 = f();
        boolean z10 = false;
        for (int i10 = 0; i10 < n10.length; i10++) {
            if (!n.e(f10, n10[i10].b(), n10[i10].a().toByteArray())) {
                z10 = true;
            }
            f10 = n10[i10].a();
        }
        return f10.a(oVar) & (!z10);
    }

    @Override
    public o b(byte[] bArr) {
        try {
            h a10 = h.a(bArr, e());
            y[] c10 = a10.c();
            return (c10.length != 0 ? c10[c10.length - 1].a() : f()).d(a10.b()).o(c10);
        } catch (IOException e10) {
            throw new IllegalStateException("cannot parse signature: " + e10.getMessage());
        }
    }

    public int e() {
        return this.f102161c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f102161c != gVar.f102161c) {
            return false;
        }
        return this.f102162d.equals(gVar.f102162d);
    }

    public w f() {
        return this.f102162d;
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return C14745a.i().m(this.f102161c).d(this.f102162d.getEncoded()).b();
    }

    public int hashCode() {
        return (this.f102161c * 31) + this.f102162d.hashCode();
    }
}
