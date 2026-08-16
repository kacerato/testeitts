package org.bouncycastle.pqc.crypto.lms;

import fm.C13260d;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

public class m implements org.bouncycastle.util.g {

    public final j f102201b;

    public final byte[] f102202c;

    public final byte[] f102203d;

    public m(j jVar, byte[] bArr, byte[] bArr2) {
        this.f102201b = jVar;
        this.f102202c = bArr;
        this.f102203d = bArr2;
    }

    public static m b(Object obj) throws IOException {
        if (obj instanceof m) {
            return (m) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            j f10 = j.f(dataInputStream.readInt());
            byte[] bArr = new byte[f10.d()];
            dataInputStream.readFully(bArr);
            byte[] bArr2 = new byte[f10.e() * f10.d()];
            dataInputStream.readFully(bArr2);
            return new m(f10, bArr, bArr2);
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return b(C13260d.e((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream2 = null;
        try {
            DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                m b10 = b(dataInputStream3);
                dataInputStream3.close();
                return b10;
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

    public byte[] a() {
        return this.f102202c;
    }

    public j c() {
        return this.f102201b;
    }

    public byte[] d() {
        return this.f102203d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        j jVar = this.f102201b;
        if (jVar == null ? mVar.f102201b != null : !jVar.equals(mVar.f102201b)) {
            return false;
        }
        if (Arrays.equals(this.f102202c, mVar.f102202c)) {
            return Arrays.equals(this.f102203d, mVar.f102203d);
        }
        return false;
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return C14745a.i().m(this.f102201b.h()).d(this.f102202c).d(this.f102203d).b();
    }

    public int hashCode() {
        j jVar = this.f102201b;
        return ((((jVar != null ? jVar.hashCode() : 0) * 31) + Arrays.hashCode(this.f102202c)) * 31) + Arrays.hashCode(this.f102203d);
    }
}
