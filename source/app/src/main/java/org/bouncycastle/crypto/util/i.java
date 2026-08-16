package org.bouncycastle.crypto.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.SecureRandom;

public class i extends SecureRandom {

    public static byte[] f101066f = new byte[0];

    public final SecureRandom f101067b;

    public b f101068c;

    public byte[] f101069d;

    public int f101070e;

    public static class b extends ByteArrayOutputStream {
        public b() {
        }

        public void c() {
            org.bouncycastle.util.a.e0(this.buf, (byte) 0);
        }
    }

    public i() {
        this(Bi.r.h());
    }

    public void a() {
        org.bouncycastle.util.a.e0(this.f101069d, (byte) 0);
        this.f101068c.c();
    }

    public byte[] b() {
        int i10 = this.f101070e;
        byte[] bArr = this.f101069d;
        return i10 == bArr.length ? this.f101068c.toByteArray() : org.bouncycastle.util.a.p(bArr);
    }

    public byte[] c() {
        return this.f101068c.toByteArray();
    }

    public void d() {
        this.f101070e = 0;
        if (this.f101069d.length == 0) {
            this.f101069d = this.f101068c.toByteArray();
        }
        this.f101068c.reset();
    }

    @Override
    public final void nextBytes(byte[] bArr) {
        if (this.f101070e >= this.f101069d.length) {
            this.f101067b.nextBytes(bArr);
        } else {
            int i10 = 0;
            while (i10 != bArr.length) {
                int i11 = this.f101070e;
                byte[] bArr2 = this.f101069d;
                if (i11 >= bArr2.length) {
                    break;
                }
                this.f101070e = i11 + 1;
                bArr[i10] = bArr2[i11];
                i10++;
            }
            if (i10 != bArr.length) {
                int length = bArr.length - i10;
                byte[] bArr3 = new byte[length];
                this.f101067b.nextBytes(bArr3);
                System.arraycopy(bArr3, 0, bArr, i10, length);
            }
        }
        try {
            this.f101068c.write(bArr);
        } catch (IOException e10) {
            throw new IllegalStateException("unable to record transcript: " + e10.getMessage());
        }
    }

    public i(SecureRandom secureRandom) {
        this.f101068c = new b();
        this.f101070e = 0;
        this.f101067b = secureRandom;
        this.f101069d = f101066f;
    }

    public i(byte[] bArr, SecureRandom secureRandom) {
        this.f101068c = new b();
        this.f101070e = 0;
        this.f101067b = secureRandom;
        this.f101069d = org.bouncycastle.util.a.p(bArr);
    }
}
