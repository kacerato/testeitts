package Li;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Ti.C3092c;
import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class C2772b0 implements Bi.Z {

    public C3092c f13849a;

    public Xi.w0 f13850b;

    public boolean f13851c;

    public SecureRandom f13852d;

    public C2772b0(InterfaceC2374f interfaceC2374f) {
        this.f13849a = new C3092c(interfaceC2374f);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f13851c = z10;
        if (interfaceC2379k instanceof Xi.x0) {
            Xi.x0 x0Var = (Xi.x0) interfaceC2379k;
            this.f13852d = x0Var.b();
            if (!(x0Var.a() instanceof Xi.w0)) {
                throw new IllegalArgumentException("RFC3211Wrap requires an IV");
            }
            this.f13850b = (Xi.w0) x0Var.a();
            return;
        }
        if (z10) {
            this.f13852d = Bi.r.h();
        }
        if (!(interfaceC2379k instanceof Xi.w0)) {
            throw new IllegalArgumentException("RFC3211Wrap requires an IV");
        }
        this.f13850b = (Xi.w0) interfaceC2379k;
    }

    @Override
    public String b() {
        return this.f13849a.d().b() + "/RFC3211Wrap";
    }

    @Override
    public byte[] c(byte[] bArr, int i10, int i11) {
        if (!this.f13851c) {
            throw new IllegalStateException("not set for wrapping");
        }
        if (i11 > 255 || i11 < 0) {
            throw new IllegalArgumentException("input must be from 0 to 255 bytes");
        }
        this.f13849a.a(true, this.f13850b);
        int c10 = this.f13849a.c();
        int i12 = i11 + 4;
        int i13 = c10 * 2;
        if (i12 >= i13) {
            i13 = i12 % c10 == 0 ? i12 : ((i12 / c10) + 1) * c10;
        }
        byte[] bArr2 = new byte[i13];
        bArr2[0] = (byte) i11;
        System.arraycopy(bArr, i10, bArr2, 4, i11);
        int length = bArr2.length - i12;
        byte[] bArr3 = new byte[length];
        this.f13852d.nextBytes(bArr3);
        System.arraycopy(bArr3, 0, bArr2, i12, length);
        bArr2[1] = (byte) (~bArr2[4]);
        bArr2[2] = (byte) (~bArr2[5]);
        bArr2[3] = (byte) (~bArr2[6]);
        for (int i14 = 0; i14 < bArr2.length; i14 += c10) {
            this.f13849a.g(bArr2, i14, bArr2, i14);
        }
        for (int i15 = 0; i15 < bArr2.length; i15 += c10) {
            this.f13849a.g(bArr2, i15, bArr2, i15);
        }
        return bArr2;
    }

    @Override
    public byte[] d(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        if (this.f13851c) {
            throw new IllegalStateException("not set for unwrapping");
        }
        int c10 = this.f13849a.c();
        if (i11 < c10 * 2) {
            throw new InvalidCipherTextException("input too short");
        }
        byte[] bArr2 = new byte[i11];
        byte[] bArr3 = new byte[c10];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        System.arraycopy(bArr, i10, bArr3, 0, c10);
        this.f13849a.a(false, new Xi.w0(this.f13850b.b(), bArr3));
        for (int i12 = c10; i12 < i11; i12 += c10) {
            this.f13849a.g(bArr2, i12, bArr2, i12);
        }
        System.arraycopy(bArr2, i11 - c10, bArr3, 0, c10);
        this.f13849a.a(false, new Xi.w0(this.f13850b.b(), bArr3));
        this.f13849a.g(bArr2, 0, bArr2, 0);
        this.f13849a.a(false, this.f13850b);
        for (int i13 = 0; i13 < i11; i13 += c10) {
            this.f13849a.g(bArr2, i13, bArr2, i13);
        }
        int i14 = bArr2[0];
        int i15 = i11 - 4;
        boolean z10 = (i14 & 255) > i15;
        byte[] bArr4 = z10 ? new byte[i15] : new byte[i14 & 255];
        System.arraycopy(bArr2, 4, bArr4, 0, bArr4.length);
        int i16 = 0;
        int i17 = 0;
        while (i16 != 3) {
            int i18 = i16 + 1;
            i17 |= bArr2[i16 + 4] ^ ((byte) (~bArr2[i18]));
            i16 = i18;
        }
        org.bouncycastle.util.a.n(bArr2);
        if (!z10 && !(i17 != 0)) {
            return bArr4;
        }
        throw new InvalidCipherTextException("wrapped key corrupted");
    }
}
