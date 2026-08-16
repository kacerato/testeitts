package org.bouncycastle.pqc.crypto.lms;

import java.io.ByteArrayOutputStream;

public class C14745a {

    public final ByteArrayOutputStream f102149a = new ByteArrayOutputStream();

    public static C14745a i() {
        return new C14745a();
    }

    public C14745a a(boolean z10) {
        this.f102149a.write(z10 ? 1 : 0);
        return this;
    }

    public byte[] b() {
        return this.f102149a.toByteArray();
    }

    public C14745a c(org.bouncycastle.util.g gVar) {
        try {
            this.f102149a.write(gVar.getEncoded());
            return this;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public C14745a d(byte[] bArr) {
        try {
            this.f102149a.write(bArr);
            return this;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public C14745a e(byte[] bArr, int i10, int i11) {
        try {
            this.f102149a.write(bArr, i10, i11);
            return this;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public C14745a f(org.bouncycastle.util.g[] gVarArr) {
        try {
            for (org.bouncycastle.util.g gVar : gVarArr) {
                this.f102149a.write(gVar.getEncoded());
            }
            return this;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public C14745a g(byte[][] bArr) {
        try {
            for (byte[] bArr2 : bArr) {
                this.f102149a.write(bArr2);
            }
            return this;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public C14745a h(byte[][] bArr, int i10, int i11) {
        while (i10 != i11) {
            try {
                this.f102149a.write(bArr[i10]);
                i10++;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage(), e10);
            }
        }
        return this;
    }

    public C14745a j(int i10, int i11) {
        while (i11 >= 0) {
            try {
                this.f102149a.write(i10);
                i11--;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage(), e10);
            }
        }
        return this;
    }

    public C14745a k(int i10, int i11) {
        while (this.f102149a.size() < i11) {
            this.f102149a.write(i10);
        }
        return this;
    }

    public C14745a l(int i10) {
        int i11 = i10 & 65535;
        this.f102149a.write((byte) (i11 >>> 8));
        this.f102149a.write((byte) i11);
        return this;
    }

    public C14745a m(int i10) {
        this.f102149a.write((byte) (i10 >>> 24));
        this.f102149a.write((byte) (i10 >>> 16));
        this.f102149a.write((byte) (i10 >>> 8));
        this.f102149a.write((byte) i10);
        return this;
    }

    public C14745a n(long j10) {
        m((int) (j10 >>> 32));
        m((int) j10);
        return this;
    }
}
