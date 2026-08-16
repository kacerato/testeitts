package Li;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Ti.C3092c;
import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class W implements Bi.Z {

    public static final byte[] f13785i = {Opcodes.OPC_dstore_3, -35, Opcodes.OPC_if_icmpge, Opcodes.OPC_aload_2, 121, -24, 33, 5};

    public C3092c f13786a;

    public InterfaceC2379k f13787b;

    public Xi.w0 f13788c;

    public byte[] f13789d;

    public boolean f13790e;

    public SecureRandom f13791f;

    public InterfaceC2392y f13792g = org.bouncycastle.crypto.util.g.d();

    public byte[] f13793h = new byte[20];

    private byte[] e(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        this.f13792g.update(bArr, 0, bArr.length);
        this.f13792g.c(this.f13793h, 0);
        System.arraycopy(this.f13793h, 0, bArr2, 0, 8);
        return bArr2;
    }

    private boolean f(byte[] bArr, byte[] bArr2) {
        return org.bouncycastle.util.a.I(e(bArr), bArr2);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f13790e = z10;
        this.f13786a = new C3092c(new V());
        if (interfaceC2379k instanceof Xi.x0) {
            Xi.x0 x0Var = (Xi.x0) interfaceC2379k;
            this.f13791f = x0Var.b();
            interfaceC2379k = x0Var.a();
        } else {
            this.f13791f = Bi.r.h();
        }
        if (!(interfaceC2379k instanceof Xi.w0)) {
            this.f13787b = interfaceC2379k;
            if (this.f13790e) {
                byte[] bArr = new byte[8];
                this.f13789d = bArr;
                this.f13791f.nextBytes(bArr);
                this.f13788c = new Xi.w0(this.f13787b, this.f13789d);
                return;
            }
            return;
        }
        Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
        this.f13788c = w0Var;
        this.f13789d = w0Var.a();
        this.f13787b = this.f13788c.b();
        if (!this.f13790e) {
            throw new IllegalArgumentException("You should not supply an IV for unwrapping");
        }
        byte[] bArr2 = this.f13789d;
        if (bArr2 == null || bArr2.length != 8) {
            throw new IllegalArgumentException("IV is not 8 octets");
        }
    }

    @Override
    public String b() {
        return "RC2";
    }

    @Override
    public byte[] c(byte[] bArr, int i10, int i11) {
        if (!this.f13790e) {
            throw new IllegalStateException("Not initialized for wrapping");
        }
        int i12 = i11 + 1;
        int i13 = i12 % 8;
        int i14 = i13 != 0 ? (8 - i13) + i12 : i12;
        byte[] bArr2 = new byte[i14];
        bArr2[0] = (byte) i11;
        System.arraycopy(bArr, i10, bArr2, 1, i11);
        int i15 = (i14 - i11) - 1;
        byte[] bArr3 = new byte[i15];
        if (i15 > 0) {
            this.f13791f.nextBytes(bArr3);
            System.arraycopy(bArr3, 0, bArr2, i12, i15);
        }
        byte[] e10 = e(bArr2);
        int length = e10.length + i14;
        byte[] bArr4 = new byte[length];
        System.arraycopy(bArr2, 0, bArr4, 0, i14);
        System.arraycopy(e10, 0, bArr4, i14, e10.length);
        byte[] bArr5 = new byte[length];
        System.arraycopy(bArr4, 0, bArr5, 0, length);
        int c10 = length / this.f13786a.c();
        if (length % this.f13786a.c() != 0) {
            throw new IllegalStateException("Not multiple of block length");
        }
        this.f13786a.a(true, this.f13788c);
        for (int i16 = 0; i16 < c10; i16++) {
            int c11 = this.f13786a.c() * i16;
            this.f13786a.g(bArr5, c11, bArr5, c11);
        }
        byte[] bArr6 = this.f13789d;
        int length2 = bArr6.length + length;
        byte[] bArr7 = new byte[length2];
        System.arraycopy(bArr6, 0, bArr7, 0, bArr6.length);
        System.arraycopy(bArr5, 0, bArr7, this.f13789d.length, length);
        byte[] bArr8 = new byte[length2];
        int i17 = 0;
        while (i17 < length2) {
            int i18 = i17 + 1;
            bArr8[i17] = bArr7[length2 - i18];
            i17 = i18;
        }
        this.f13786a.a(true, new Xi.w0(this.f13787b, f13785i));
        for (int i19 = 0; i19 < c10 + 1; i19++) {
            int c12 = this.f13786a.c() * i19;
            this.f13786a.g(bArr8, c12, bArr8, c12);
        }
        return bArr8;
    }

    @Override
    public byte[] d(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        if (this.f13790e) {
            throw new IllegalStateException("Not set for unwrapping");
        }
        if (bArr == null) {
            throw new InvalidCipherTextException("Null pointer as ciphertext");
        }
        if (i11 % this.f13786a.c() != 0) {
            throw new InvalidCipherTextException("Ciphertext not multiple of " + this.f13786a.c());
        }
        this.f13786a.a(false, new Xi.w0(this.f13787b, f13785i));
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        for (int i12 = 0; i12 < i11 / this.f13786a.c(); i12++) {
            int c10 = this.f13786a.c() * i12;
            this.f13786a.g(bArr2, c10, bArr2, c10);
        }
        byte[] bArr3 = new byte[i11];
        int i13 = 0;
        while (i13 < i11) {
            int i14 = i13 + 1;
            bArr3[i13] = bArr2[i11 - i14];
            i13 = i14;
        }
        byte[] bArr4 = new byte[8];
        this.f13789d = bArr4;
        int i15 = i11 - 8;
        byte[] bArr5 = new byte[i15];
        System.arraycopy(bArr3, 0, bArr4, 0, 8);
        System.arraycopy(bArr3, 8, bArr5, 0, i15);
        Xi.w0 w0Var = new Xi.w0(this.f13787b, this.f13789d);
        this.f13788c = w0Var;
        this.f13786a.a(false, w0Var);
        byte[] bArr6 = new byte[i15];
        System.arraycopy(bArr5, 0, bArr6, 0, i15);
        for (int i16 = 0; i16 < i15 / this.f13786a.c(); i16++) {
            int c11 = this.f13786a.c() * i16;
            this.f13786a.g(bArr6, c11, bArr6, c11);
        }
        int i17 = i11 - 16;
        byte[] bArr7 = new byte[i17];
        byte[] bArr8 = new byte[8];
        System.arraycopy(bArr6, 0, bArr7, 0, i17);
        System.arraycopy(bArr6, i17, bArr8, 0, 8);
        if (!f(bArr7, bArr8)) {
            throw new InvalidCipherTextException("Checksum inside ciphertext is corrupted");
        }
        int i18 = bArr7[0];
        if (i17 - ((i18 & 255) + 1) <= 7) {
            byte[] bArr9 = new byte[i18];
            System.arraycopy(bArr7, 1, bArr9, 0, i18);
            return bArr9;
        }
        throw new InvalidCipherTextException("too many pad bytes (" + (i17 - ((bArr7[0] & 255) + 1)) + ")");
    }
}
