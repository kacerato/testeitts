package Ki;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2379k;
import Bi.r;
import Xi.C3335c;
import Xi.x0;
import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.util.q;

public class c implements InterfaceC2370b {

    public static final String f11414i = "org.bouncycastle.pkcs1.strict";

    public static final String f11415j = "org.bouncycastle.pkcs1.not_strict";

    public static final int f11416k = 10;

    public SecureRandom f11417a;

    public InterfaceC2370b f11418b;

    public boolean f11419c;

    public boolean f11420d;

    public boolean f11421e;

    public int f11422f;

    public byte[] f11423g;

    public byte[] f11424h;

    public c(InterfaceC2370b interfaceC2370b) {
        this.f11422f = -1;
        this.f11423g = null;
        this.f11418b = interfaceC2370b;
        this.f11421e = l();
    }

    public static int e(byte[] bArr) {
        int i10 = 0;
        int i11 = -((bArr[0] & 255) ^ 1);
        int i12 = 0;
        for (int i13 = 1; i13 < bArr.length; i13++) {
            int i14 = bArr[i13] & 255;
            int i15 = (i14 - 1) >> 31;
            i10 ^= ((~i12) & i13) & i15;
            i12 |= i15;
            i11 |= ~((((i14 ^ 255) - 1) >> 31) | i12);
        }
        return ((bArr.length - 1) - i10) | (((i10 - 9) | i11) >> 31);
    }

    public static int f(byte[] bArr) {
        int i10 = 0;
        int i11 = -((bArr[0] & 255) ^ 2);
        int i12 = 0;
        for (int i13 = 1; i13 < bArr.length; i13++) {
            int i14 = ((bArr[i13] & 255) - 1) >> 31;
            i10 ^= ((~i12) & i13) & i14;
            i12 |= i14;
        }
        return ((bArr.length - 1) - i10) | ((i11 | (i10 - 9)) >> 31);
    }

    public static int g(byte[] bArr, int i10) {
        int i11 = -((bArr[0] & 255) ^ 2);
        int length = (bArr.length - 1) - i10;
        int i12 = (length - 9) | i11;
        for (int i13 = 1; i13 < length; i13++) {
            i12 |= (bArr[i13] & 255) - 1;
        }
        return ((-(bArr[length] & 255)) | i12) >> 31;
    }

    private byte[] h(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        if (this.f11420d && this.f11422f != -1) {
            return i(bArr, i10, i11);
        }
        int c10 = this.f11418b.c();
        byte[] b10 = this.f11418b.b(bArr, i10, i11);
        boolean z10 = this.f11421e & (b10.length != c10);
        byte[] bArr2 = b10.length < c10 ? this.f11424h : b10;
        int f10 = this.f11420d ? f(bArr2) : e(bArr2);
        try {
            if (f10 < 0) {
                throw new InvalidCipherTextException("block incorrect");
            }
            if (z10) {
                throw new InvalidCipherTextException("block incorrect size");
            }
            byte[] bArr3 = new byte[f10];
            System.arraycopy(bArr2, bArr2.length - f10, bArr3, 0, f10);
            return bArr3;
        } finally {
            org.bouncycastle.util.a.e0(b10, (byte) 0);
            byte[] bArr4 = this.f11424h;
            org.bouncycastle.util.a.f0(bArr4, 0, Math.max(0, bArr4.length - b10.length), (byte) 0);
        }
    }

    private byte[] j(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        if (i11 > d()) {
            throw new IllegalArgumentException("input data too large");
        }
        int d10 = this.f11418b.d();
        byte[] bArr2 = new byte[d10];
        if (this.f11420d) {
            bArr2[0] = 1;
            for (int i12 = 1; i12 != (d10 - i11) - 1; i12++) {
                bArr2[i12] = -1;
            }
        } else {
            this.f11417a.nextBytes(bArr2);
            bArr2[0] = 2;
            for (int i13 = 1; i13 != (d10 - i11) - 1; i13++) {
                while (bArr2[i13] == 0) {
                    bArr2[i13] = (byte) this.f11417a.nextInt();
                }
            }
        }
        int i14 = d10 - i11;
        bArr2[i14 - 1] = 0;
        System.arraycopy(bArr, i10, bArr2, i14, i11);
        return this.f11418b.b(bArr2, 0, d10);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        C3335c c3335c;
        if (interfaceC2379k instanceof x0) {
            x0 x0Var = (x0) interfaceC2379k;
            this.f11417a = x0Var.b();
            c3335c = (C3335c) x0Var.a();
        } else {
            c3335c = (C3335c) interfaceC2379k;
            if (!c3335c.c() && z10) {
                this.f11417a = r.h();
            }
        }
        this.f11418b.a(z10, interfaceC2379k);
        this.f11420d = c3335c.c();
        this.f11419c = z10;
        this.f11424h = new byte[this.f11418b.c()];
        if (this.f11422f > 0 && this.f11423g == null && this.f11417a == null) {
            throw new IllegalArgumentException("encoder requires random");
        }
    }

    @Override
    public byte[] b(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        return this.f11419c ? j(bArr, i10, i11) : h(bArr, i10, i11);
    }

    @Override
    public int c() {
        int c10 = this.f11418b.c();
        return this.f11419c ? c10 : c10 - 10;
    }

    @Override
    public int d() {
        int d10 = this.f11418b.d();
        return this.f11419c ? d10 - 10 : d10;
    }

    public final byte[] i(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        if (!this.f11420d) {
            throw new InvalidCipherTextException("sorry, this method is only for decryption, not for signing");
        }
        int i12 = this.f11422f;
        byte[] bArr2 = this.f11423g;
        if (bArr2 == null) {
            bArr2 = new byte[i12];
            this.f11417a.nextBytes(bArr2);
        }
        int c10 = this.f11418b.c();
        byte[] b10 = this.f11418b.b(bArr, i10, i11);
        byte[] bArr3 = (b10.length == c10 || (!this.f11421e && b10.length >= c10)) ? b10 : this.f11424h;
        int g10 = g(bArr3, i12);
        int length = bArr3.length - i12;
        byte[] bArr4 = new byte[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            bArr4[i13] = (byte) ((bArr3[length + i13] & (~g10)) | (bArr2[i13] & g10));
        }
        org.bouncycastle.util.a.e0(b10, (byte) 0);
        byte[] bArr5 = this.f11424h;
        org.bouncycastle.util.a.f0(bArr5, 0, Math.max(0, bArr5.length - b10.length), (byte) 0);
        return bArr4;
    }

    public InterfaceC2370b k() {
        return this.f11418b;
    }

    public final boolean l() {
        if (q.g(f11415j, true)) {
            return false;
        }
        return !q.g(f11414i, false);
    }

    public c(InterfaceC2370b interfaceC2370b, int i10) {
        this.f11422f = -1;
        this.f11423g = null;
        this.f11418b = interfaceC2370b;
        this.f11421e = l();
        this.f11422f = i10;
    }

    public c(InterfaceC2370b interfaceC2370b, byte[] bArr) {
        this.f11422f = -1;
        this.f11423g = null;
        this.f11418b = interfaceC2370b;
        this.f11421e = l();
        this.f11423g = bArr;
        this.f11422f = bArr.length;
    }
}
