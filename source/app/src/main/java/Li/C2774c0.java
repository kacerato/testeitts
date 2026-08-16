package Li;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class C2774c0 implements Bi.Z {

    public static final byte[] f13865f = {Opcodes.OPC_if_acmpne, Opcodes.OPC_if_acmpne, Opcodes.OPC_if_acmpne, Opcodes.OPC_if_acmpne, Opcodes.OPC_if_acmpne, Opcodes.OPC_if_acmpne, Opcodes.OPC_if_acmpne, Opcodes.OPC_if_acmpne};

    public final InterfaceC2374f f13866a;

    public final boolean f13867b;

    public final byte[] f13868c;

    public C3360o0 f13869d;

    public boolean f13870e;

    public C2774c0(InterfaceC2374f interfaceC2374f) {
        this(interfaceC2374f, false);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f13870e = z10;
        if (interfaceC2379k instanceof Xi.x0) {
            interfaceC2379k = ((Xi.x0) interfaceC2379k).a();
        }
        if (interfaceC2379k instanceof C3360o0) {
            this.f13869d = (C3360o0) interfaceC2379k;
            System.arraycopy(f13865f, 0, this.f13868c, 0, 8);
        } else if (interfaceC2379k instanceof Xi.w0) {
            Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
            byte[] a10 = w0Var.a();
            if (a10.length != 8) {
                throw new IllegalArgumentException("IV not equal to 8");
            }
            this.f13869d = (C3360o0) w0Var.b();
            System.arraycopy(a10, 0, this.f13868c, 0, 8);
        }
    }

    @Override
    public String b() {
        return this.f13866a.b();
    }

    @Override
    public byte[] c(byte[] bArr, int i10, int i11) {
        if (!this.f13870e) {
            throw new IllegalStateException("not set for wrapping");
        }
        if (i11 < 8) {
            throw new DataLengthException("wrap data must be at least 8 bytes");
        }
        int i12 = i11 / 8;
        if (i12 * 8 != i11) {
            throw new DataLengthException("wrap data must be a multiple of 8 bytes");
        }
        this.f13866a.a(this.f13867b, this.f13869d);
        byte[] bArr2 = this.f13868c;
        byte[] bArr3 = new byte[bArr2.length + i11];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i10, bArr3, this.f13868c.length, i11);
        if (i12 == 1) {
            this.f13866a.g(bArr3, 0, bArr3, 0);
        } else {
            byte[] bArr4 = new byte[this.f13868c.length + 8];
            for (int i13 = 0; i13 != 6; i13++) {
                for (int i14 = 1; i14 <= i12; i14++) {
                    System.arraycopy(bArr3, 0, bArr4, 0, this.f13868c.length);
                    int i15 = i14 * 8;
                    System.arraycopy(bArr3, i15, bArr4, this.f13868c.length, 8);
                    this.f13866a.g(bArr4, 0, bArr4, 0);
                    int i16 = (i12 * i13) + i14;
                    int i17 = 1;
                    while (i16 != 0) {
                        int length = this.f13868c.length - i17;
                        bArr4[length] = (byte) (((byte) i16) ^ bArr4[length]);
                        i16 >>>= 8;
                        i17++;
                    }
                    System.arraycopy(bArr4, 0, bArr3, 0, 8);
                    System.arraycopy(bArr4, 8, bArr3, i15, 8);
                }
            }
        }
        return bArr3;
    }

    @Override
    public byte[] d(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        byte[] bArr2;
        if (this.f13870e) {
            throw new IllegalStateException("not set for unwrapping");
        }
        if (i11 < 16) {
            throw new InvalidCipherTextException("unwrap data too short");
        }
        int i12 = i11 / 8;
        if (i12 * 8 != i11) {
            throw new InvalidCipherTextException("unwrap data must be a multiple of 8 bytes");
        }
        this.f13866a.a(!this.f13867b, this.f13869d);
        byte[] bArr3 = this.f13868c;
        byte[] bArr4 = new byte[i11 - bArr3.length];
        byte[] bArr5 = new byte[bArr3.length];
        int i13 = 8;
        byte[] bArr6 = new byte[bArr3.length + 8];
        int i14 = i12 - 1;
        if (i14 == 1) {
            this.f13866a.g(bArr, i10, bArr6, 0);
            System.arraycopy(bArr6, 0, bArr5, 0, this.f13868c.length);
            System.arraycopy(bArr6, this.f13868c.length, bArr4, 0, 8);
        } else {
            System.arraycopy(bArr, i10, bArr5, 0, bArr3.length);
            byte[] bArr7 = this.f13868c;
            System.arraycopy(bArr, bArr7.length + i10, bArr4, 0, i11 - bArr7.length);
            int i15 = 5;
            while (i15 >= 0) {
                int i16 = i14;
                while (i16 >= 1) {
                    System.arraycopy(bArr5, 0, bArr6, 0, this.f13868c.length);
                    int i17 = (i16 - 1) * i13;
                    System.arraycopy(bArr4, i17, bArr6, this.f13868c.length, i13);
                    int i18 = (i14 * i15) + i16;
                    int i19 = 1;
                    while (i18 != 0) {
                        int length = this.f13868c.length - i19;
                        bArr6[length] = (byte) (bArr6[length] ^ ((byte) i18));
                        i18 >>>= 8;
                        i19++;
                    }
                    this.f13866a.g(bArr6, 0, bArr6, 0);
                    System.arraycopy(bArr6, 0, bArr5, 0, 8);
                    System.arraycopy(bArr6, 8, bArr4, i17, 8);
                    i16--;
                    i13 = 8;
                }
                i15--;
                i13 = 8;
            }
        }
        if (i14 != 1) {
            if (!org.bouncycastle.util.a.I(bArr5, this.f13868c)) {
                throw new InvalidCipherTextException("checksum failed");
            }
        } else if (!org.bouncycastle.util.a.I(bArr5, this.f13868c)) {
            System.arraycopy(bArr, i10, bArr5, 0, this.f13868c.length);
            byte[] bArr8 = this.f13868c;
            System.arraycopy(bArr, i10 + bArr8.length, bArr4, 0, i11 - bArr8.length);
            int i20 = 5;
            while (true) {
                bArr2 = this.f13868c;
                if (i20 < 0) {
                    break;
                }
                System.arraycopy(bArr5, 0, bArr6, 0, bArr2.length);
                System.arraycopy(bArr4, 0, bArr6, this.f13868c.length, 8);
                int i21 = (i14 * i20) + 1;
                int i22 = 1;
                while (i21 != 0) {
                    int length2 = this.f13868c.length - i22;
                    bArr6[length2] = (byte) (((byte) i21) ^ bArr6[length2]);
                    i21 >>>= 8;
                    i22++;
                }
                this.f13866a.g(bArr6, 0, bArr6, 0);
                System.arraycopy(bArr6, 0, bArr5, 0, 8);
                System.arraycopy(bArr6, 8, bArr4, 0, 8);
                i20--;
            }
            if (!org.bouncycastle.util.a.I(bArr5, bArr2)) {
                throw new InvalidCipherTextException("checksum failed");
            }
        }
        return bArr4;
    }

    public C2774c0(InterfaceC2374f interfaceC2374f, boolean z10) {
        this.f13868c = new byte[8];
        this.f13869d = null;
        this.f13870e = true;
        this.f13866a = interfaceC2374f;
        this.f13867b = !z10;
    }
}
