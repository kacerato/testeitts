package Sj;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2379k;
import Bi.r;
import Xi.C3335c;
import Xi.x0;
import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.util.q;

public class f implements InterfaceC2370b {

    public static final int f23565g = 10;

    public SecureRandom f23566a;

    public InterfaceC2370b f23567b;

    public boolean f23568c;

    public boolean f23569d;

    public boolean f23570e = j();

    public byte[] f23571f;

    public f(InterfaceC2370b interfaceC2370b) {
        this.f23567b = interfaceC2370b;
    }

    private static int e(byte[] bArr) {
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

    private static int f(byte[] bArr) {
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

    private byte[] g(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        int c10 = this.f23567b.c();
        byte[] b10 = this.f23567b.b(bArr, i10, i11);
        boolean z10 = this.f23570e & (b10.length != c10);
        byte[] bArr2 = b10.length < c10 ? this.f23571f : b10;
        int f10 = this.f23569d ? f(bArr2) : e(bArr2);
        if (z10 || (f10 < 0)) {
            org.bouncycastle.util.a.e0(b10, (byte) 0);
            byte[] bArr3 = this.f23571f;
            org.bouncycastle.util.a.f0(bArr3, 0, Math.max(0, bArr3.length - b10.length), (byte) 0);
            return null;
        }
        try {
            byte[] bArr4 = new byte[f10];
            System.arraycopy(bArr2, bArr2.length - f10, bArr4, 0, f10);
            return bArr4;
        } finally {
            org.bouncycastle.util.a.e0(b10, (byte) 0);
            byte[] bArr5 = this.f23571f;
            org.bouncycastle.util.a.f0(bArr5, 0, Math.max(0, bArr5.length - b10.length), (byte) 0);
        }
    }

    private byte[] h(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        if (i11 > d()) {
            throw new IllegalArgumentException("input data too large");
        }
        int d10 = this.f23567b.d();
        byte[] bArr2 = new byte[d10];
        if (this.f23569d) {
            bArr2[0] = 1;
            for (int i12 = 1; i12 != (d10 - i11) - 1; i12++) {
                bArr2[i12] = -1;
            }
        } else {
            this.f23566a.nextBytes(bArr2);
            bArr2[0] = 2;
            for (int i13 = 1; i13 != (d10 - i11) - 1; i13++) {
                while (bArr2[i13] == 0) {
                    bArr2[i13] = (byte) this.f23566a.nextInt();
                }
            }
        }
        int i14 = d10 - i11;
        bArr2[i14 - 1] = 0;
        System.arraycopy(bArr, i10, bArr2, i14, i11);
        return this.f23567b.b(bArr2, 0, d10);
    }

    private boolean j() {
        if (q.g(Ki.c.f11415j, true)) {
            return false;
        }
        return !q.g(Ki.c.f11414i, false);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        C3335c c3335c;
        if (interfaceC2379k instanceof x0) {
            x0 x0Var = (x0) interfaceC2379k;
            this.f23566a = x0Var.b();
            c3335c = (C3335c) x0Var.a();
        } else {
            c3335c = (C3335c) interfaceC2379k;
            if (!c3335c.c() && z10) {
                this.f23566a = r.h();
            }
        }
        this.f23567b.a(z10, interfaceC2379k);
        this.f23569d = c3335c.c();
        this.f23568c = z10;
        this.f23571f = new byte[this.f23567b.c()];
    }

    @Override
    public byte[] b(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        return this.f23568c ? h(bArr, i10, i11) : g(bArr, i10, i11);
    }

    @Override
    public int c() {
        int c10 = this.f23567b.c();
        return this.f23568c ? c10 : c10 - 10;
    }

    @Override
    public int d() {
        int d10 = this.f23567b.d();
        return this.f23568c ? d10 - 10 : d10;
    }

    public InterfaceC2370b i() {
        return this.f23567b;
    }
}
