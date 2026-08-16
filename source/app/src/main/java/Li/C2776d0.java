package Li;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class C2776d0 implements Bi.Z {

    public static final byte[] f13871e = {Opcodes.OPC_if_acmpne, Opcodes.OPC_dup, Opcodes.OPC_dup, Opcodes.OPC_if_acmpne};

    public final InterfaceC2374f f13872a;

    public final byte[] f13873b = new byte[4];

    public C3360o0 f13874c = null;

    public boolean f13875d = true;

    public C2776d0(InterfaceC2374f interfaceC2374f) {
        this.f13872a = interfaceC2374f;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f13875d = z10;
        if (interfaceC2379k instanceof Xi.x0) {
            interfaceC2379k = ((Xi.x0) interfaceC2379k).a();
        }
        if (interfaceC2379k instanceof C3360o0) {
            this.f13874c = (C3360o0) interfaceC2379k;
            System.arraycopy(f13871e, 0, this.f13873b, 0, 4);
        } else if (interfaceC2379k instanceof Xi.w0) {
            Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
            byte[] a10 = w0Var.a();
            if (a10.length != 4) {
                throw new IllegalArgumentException("IV length not equal to 4");
            }
            this.f13874c = (C3360o0) w0Var.b();
            System.arraycopy(a10, 0, this.f13873b, 0, 4);
        }
    }

    @Override
    public String b() {
        return this.f13872a.b();
    }

    @Override
    public byte[] c(byte[] bArr, int i10, int i11) {
        if (!this.f13875d) {
            throw new IllegalStateException("not set for wrapping");
        }
        byte[] bArr2 = new byte[8];
        System.arraycopy(this.f13873b, 0, bArr2, 0, 4);
        org.bouncycastle.util.p.h(i11, bArr2, 4);
        byte[] bArr3 = new byte[i11];
        System.arraycopy(bArr, i10, bArr3, 0, i11);
        byte[] e10 = e(bArr3);
        if (e10.length != 8) {
            C2774c0 c2774c0 = new C2774c0(this.f13872a);
            c2774c0.a(true, new Xi.w0(this.f13874c, bArr2));
            return c2774c0.c(e10, 0, e10.length);
        }
        int length = e10.length + 8;
        byte[] bArr4 = new byte[length];
        System.arraycopy(bArr2, 0, bArr4, 0, 8);
        System.arraycopy(e10, 0, bArr4, 8, e10.length);
        this.f13872a.a(true, this.f13874c);
        int c10 = this.f13872a.c();
        for (int i12 = 0; i12 < length; i12 += c10) {
            this.f13872a.g(bArr4, i12, bArr4, i12);
        }
        return bArr4;
    }

    @Override
    public byte[] d(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        byte[] f10;
        if (this.f13875d) {
            throw new IllegalStateException("not set for unwrapping");
        }
        int i12 = i11 / 8;
        if (i12 * 8 != i11) {
            throw new InvalidCipherTextException("unwrap data must be a multiple of 8 bytes");
        }
        if (i12 <= 1) {
            throw new InvalidCipherTextException("unwrap data must be at least 16 bytes");
        }
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        byte[] bArr3 = new byte[i11];
        byte[] bArr4 = new byte[8];
        if (i12 == 2) {
            this.f13872a.a(false, this.f13874c);
            int c10 = this.f13872a.c();
            for (int i13 = 0; i13 < i11; i13 += c10) {
                this.f13872a.g(bArr2, i13, bArr3, i13);
            }
            System.arraycopy(bArr3, 0, bArr4, 0, 8);
            int i14 = i11 - 8;
            f10 = new byte[i14];
            System.arraycopy(bArr3, 8, f10, 0, i14);
        } else {
            f10 = f(bArr, i10, i11, bArr4);
        }
        int i15 = 4;
        byte[] bArr5 = new byte[4];
        System.arraycopy(bArr4, 0, bArr5, 0, 4);
        int a10 = org.bouncycastle.util.p.a(bArr4, 4);
        boolean I10 = org.bouncycastle.util.a.I(bArr5, this.f13873b);
        int length = f10.length;
        if (a10 <= length - 8) {
            I10 = false;
        }
        if (a10 > length) {
            I10 = false;
        }
        int i16 = length - a10;
        if (i16 >= 8 || i16 < 0) {
            I10 = false;
        } else {
            i15 = i16;
        }
        byte[] bArr6 = new byte[i15];
        System.arraycopy(f10, f10.length - i15, bArr6, 0, i15);
        if (!org.bouncycastle.util.a.I(bArr6, new byte[i15])) {
            I10 = false;
        }
        if (!I10) {
            throw new InvalidCipherTextException("checksum failed");
        }
        byte[] bArr7 = new byte[a10];
        System.arraycopy(f10, 0, bArr7, 0, a10);
        return bArr7;
    }

    public final byte[] e(byte[] bArr) {
        int length = bArr.length;
        int i10 = (8 - (length % 8)) % 8;
        byte[] bArr2 = new byte[length + i10];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        if (i10 != 0) {
            System.arraycopy(new byte[i10], 0, bArr2, length, i10);
        }
        return bArr2;
    }

    public final byte[] f(byte[] bArr, int i10, int i11, byte[] bArr2) {
        int i12 = i11 - 8;
        byte[] bArr3 = new byte[i12];
        byte[] bArr4 = new byte[16];
        System.arraycopy(bArr, i10, bArr4, 0, 8);
        System.arraycopy(bArr, i10 + 8, bArr3, 0, i12);
        this.f13872a.a(false, this.f13874c);
        int i13 = (i11 / 8) - 1;
        for (int i14 = 5; i14 >= 0; i14--) {
            for (int i15 = i13; i15 >= 1; i15--) {
                int i16 = (i15 - 1) * 8;
                System.arraycopy(bArr3, i16, bArr4, 8, 8);
                int i17 = (i13 * i14) + i15;
                int i18 = 1;
                while (i17 != 0) {
                    int i19 = 8 - i18;
                    bArr4[i19] = (byte) (bArr4[i19] ^ ((byte) i17));
                    i17 >>>= 8;
                    i18++;
                }
                this.f13872a.g(bArr4, 0, bArr4, 0);
                System.arraycopy(bArr4, 8, bArr3, i16, 8);
            }
        }
        System.arraycopy(bArr4, 0, bArr2, 0, 8);
        return bArr3;
    }
}
