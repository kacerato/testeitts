package org.bouncycastle.pqc.crypto.lms;

import fm.C13260d;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

public class x implements org.bouncycastle.util.g {

    public final int f102235b;

    public final m f102236c;

    public final A f102237d;

    public final byte[][] f102238e;

    public x(int i10, m mVar, A a10, byte[][] bArr) {
        this.f102235b = i10;
        this.f102236c = mVar;
        this.f102237d = a10;
        this.f102238e = bArr;
    }

    public static x a(Object obj) throws IOException {
        if (obj instanceof x) {
            return (x) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            int readInt = dataInputStream.readInt();
            m b10 = m.b(obj);
            A e10 = A.e(dataInputStream.readInt());
            int c10 = e10.c();
            byte[][] bArr = new byte[c10];
            for (int i10 = 0; i10 < c10; i10++) {
                byte[] bArr2 = new byte[e10.d()];
                bArr[i10] = bArr2;
                dataInputStream.readFully(bArr2);
            }
            return new x(readInt, b10, e10, bArr);
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return a(C13260d.e((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream2 = null;
        try {
            DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                x a10 = a(dataInputStream3);
                dataInputStream3.close();
                return a10;
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

    public m b() {
        return this.f102236c;
    }

    public A c() {
        return this.f102237d;
    }

    public int d() {
        return this.f102235b;
    }

    public byte[][] e() {
        return this.f102238e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        x xVar = (x) obj;
        if (this.f102235b != xVar.f102235b) {
            return false;
        }
        m mVar = this.f102236c;
        if (mVar == null ? xVar.f102236c != null : !mVar.equals(xVar.f102236c)) {
            return false;
        }
        A a10 = this.f102237d;
        if (a10 == null ? xVar.f102237d == null : a10.equals(xVar.f102237d)) {
            return Arrays.deepEquals(this.f102238e, xVar.f102238e);
        }
        return false;
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return C14745a.i().m(this.f102235b).d(this.f102236c.getEncoded()).m(this.f102237d.f()).g(this.f102238e).b();
    }

    public int hashCode() {
        int i10 = this.f102235b * 31;
        m mVar = this.f102236c;
        int hashCode = (i10 + (mVar != null ? mVar.hashCode() : 0)) * 31;
        A a10 = this.f102237d;
        return ((hashCode + (a10 != null ? a10.hashCode() : 0)) * 31) + Arrays.deepHashCode(this.f102238e);
    }
}
