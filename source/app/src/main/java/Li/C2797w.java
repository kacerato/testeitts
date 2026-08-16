package Li;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Ti.C3092c;
import Xi.C3360o0;
import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class C2797w implements Bi.Z {

    public static final byte[] f14271h = {Opcodes.OPC_dstore_3, -35, Opcodes.OPC_if_icmpge, Opcodes.OPC_aload_2, 121, -24, 33, 5};

    public C3092c f14272a;

    public C3360o0 f14273b;

    public Xi.w0 f14274c;

    public byte[] f14275d;

    public boolean f14276e;

    public InterfaceC2392y f14277f = org.bouncycastle.crypto.util.g.d();

    public byte[] f14278g = new byte[20];

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        SecureRandom h10;
        this.f14276e = z10;
        this.f14272a = new C3092c(new C2796v());
        if (interfaceC2379k instanceof Xi.x0) {
            Xi.x0 x0Var = (Xi.x0) interfaceC2379k;
            InterfaceC2379k a10 = x0Var.a();
            SecureRandom b10 = x0Var.b();
            interfaceC2379k = a10;
            h10 = b10;
        } else {
            h10 = Bi.r.h();
        }
        if (interfaceC2379k instanceof C3360o0) {
            this.f14273b = (C3360o0) interfaceC2379k;
            if (this.f14276e) {
                byte[] bArr = new byte[8];
                this.f14275d = bArr;
                h10.nextBytes(bArr);
                this.f14274c = new Xi.w0(this.f14273b, this.f14275d);
                return;
            }
            return;
        }
        if (interfaceC2379k instanceof Xi.w0) {
            Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
            this.f14274c = w0Var;
            this.f14275d = w0Var.a();
            this.f14273b = (C3360o0) this.f14274c.b();
            if (!this.f14276e) {
                throw new IllegalArgumentException("You should not supply an IV for unwrapping");
            }
            byte[] bArr2 = this.f14275d;
            if (bArr2 == null || bArr2.length != 8) {
                throw new IllegalArgumentException("IV is not 8 octets");
            }
        }
    }

    @Override
    public String b() {
        return "DESede";
    }

    @Override
    public byte[] c(byte[] bArr, int i10, int i11) {
        if (!this.f14276e) {
            throw new IllegalStateException("Not initialized for wrapping");
        }
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        byte[] e10 = e(bArr2);
        int length = e10.length + i11;
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArr2, 0, bArr3, 0, i11);
        System.arraycopy(e10, 0, bArr3, i11, e10.length);
        int c10 = this.f14272a.c();
        if (length % c10 != 0) {
            throw new IllegalStateException("Not multiple of block length");
        }
        this.f14272a.a(true, this.f14274c);
        byte[] bArr4 = new byte[length];
        for (int i12 = 0; i12 != length; i12 += c10) {
            this.f14272a.g(bArr3, i12, bArr4, i12);
        }
        byte[] bArr5 = this.f14275d;
        int length2 = bArr5.length + length;
        byte[] bArr6 = new byte[length2];
        System.arraycopy(bArr5, 0, bArr6, 0, bArr5.length);
        System.arraycopy(bArr4, 0, bArr6, this.f14275d.length, length);
        org.bouncycastle.util.a.Q0(bArr6);
        this.f14272a.a(true, new Xi.w0(this.f14273b, f14271h));
        for (int i13 = 0; i13 != length2; i13 += c10) {
            this.f14272a.g(bArr6, i13, bArr6, i13);
        }
        return bArr6;
    }

    @Override
    public byte[] d(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        if (this.f14276e) {
            throw new IllegalStateException("Not set for unwrapping");
        }
        if (bArr == null) {
            throw new InvalidCipherTextException("Null pointer as ciphertext");
        }
        int c10 = this.f14272a.c();
        if (i11 % c10 != 0) {
            throw new InvalidCipherTextException("Ciphertext not multiple of " + c10);
        }
        this.f14272a.a(false, new Xi.w0(this.f14273b, f14271h));
        byte[] bArr2 = new byte[i11];
        for (int i12 = 0; i12 != i11; i12 += c10) {
            this.f14272a.g(bArr, i10 + i12, bArr2, i12);
        }
        org.bouncycastle.util.a.Q0(bArr2);
        byte[] bArr3 = new byte[8];
        this.f14275d = bArr3;
        int i13 = i11 - 8;
        byte[] bArr4 = new byte[i13];
        System.arraycopy(bArr2, 0, bArr3, 0, 8);
        System.arraycopy(bArr2, 8, bArr4, 0, i13);
        Xi.w0 w0Var = new Xi.w0(this.f14273b, this.f14275d);
        this.f14274c = w0Var;
        this.f14272a.a(false, w0Var);
        byte[] bArr5 = new byte[i13];
        for (int i14 = 0; i14 != i13; i14 += c10) {
            this.f14272a.g(bArr4, i14, bArr5, i14);
        }
        int i15 = i11 - 16;
        byte[] bArr6 = new byte[i15];
        byte[] bArr7 = new byte[8];
        System.arraycopy(bArr5, 0, bArr6, 0, i15);
        System.arraycopy(bArr5, i15, bArr7, 0, 8);
        if (f(bArr6, bArr7)) {
            return bArr6;
        }
        throw new InvalidCipherTextException("Checksum inside ciphertext is corrupted");
    }

    public final byte[] e(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        this.f14277f.update(bArr, 0, bArr.length);
        this.f14277f.c(this.f14278g, 0);
        System.arraycopy(this.f14278g, 0, bArr2, 0, 8);
        return bArr2;
    }

    public final boolean f(byte[] bArr, byte[] bArr2) {
        return org.bouncycastle.util.a.I(e(bArr), bArr2);
    }
}
