package Li;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class V implements InterfaceC2374f {

    public static byte[] f13781c = {-39, 120, -7, Opcodes.OPC_wide, 25, -35, Opcodes.OPC_putfield, -19, 40, -23, -3, 121, Opcodes.OPC_dstore_3, Opcodes.OPC_if_icmpne, -40, Opcodes.OPC_ifgt, Opcodes.OPC_ifnull, Opcodes.OPC_iand, Opcodes.OPC_lstore, Opcodes.OPC_lxor, Opcodes.OPC_aload_1, Opcodes.OPC_fneg, Opcodes.OPC_aastore, Opcodes.OPC_d2i, Opcodes.OPC_fadd, Opcodes.OPC_astore_1, 100, Opcodes.OPC_l2i, Opcodes.OPC_fstore_1, Opcodes.OPC_f2i, -5, Opcodes.OPC_if_icmpge, 23, Opcodes.OPC_ifne, Opcodes.OPC_dup, -11, Opcodes.OPC_i2d, Opcodes.OPC_putstatic, Opcodes.OPC_iastore, 19, Opcodes.OPC_ladd, Opcodes.OPC_fstore_2, Opcodes.OPC_ldiv, Opcodes.OPC_f2d, 9, Opcodes.OPC_lor, Opcodes.OPC_lushr, 50, Opcodes.OPC_anewarray, Opcodes.OPC_d2l, 64, -21, Opcodes.OPC_i2f, Opcodes.OPC_invokespecial, 123, 11, -16, Opcodes.OPC_fcmpl, 33, 34, 92, 107, Opcodes.OPC_astore_3, Opcodes.OPC_ixor, Opcodes.OPC_bastore, -42, 101, Opcodes.OPC_i2s, -50, 96, Opcodes.OPC_getstatic, 28, Opcodes.OPC_drem, Opcodes.OPC_sastore, Opcodes.OPC_checkcast, 20, Opcodes.OPC_goto, Opcodes.OPC_f2l, -15, -36, 18, Opcodes.OPC_lneg, -54, 31, Opcodes.OPC_istore_0, Opcodes.OPC_arraylength, -28, -47, Opcodes.OPC_lstore_3, 61, -44, 48, Opcodes.OPC_if_icmpgt, 60, Opcodes.OPC_invokevirtual, 38, 111, Opcodes.OPC_athrow, 14, -38, 70, 105, 7, Opcodes.OPC_pop, Opcodes.OPC_dload_1, -14, 29, Opcodes.OPC_iflt, -68, Opcodes.OPC_lcmp, Opcodes.OPC_fstore_0, 3, -8, 17, Opcodes.OPC_ifnonnull, -10, Opcodes.OPC_d2f, -17, 62, -25, 6, Opcodes.OPC_monitorexit, -43, Opcodes.OPC_laload, Opcodes.OPC_goto_w, 102, 30, -41, 8, -24, -22, -34, Byte.MIN_VALUE, Opcodes.OPC_dastore, -18, -9, Opcodes.OPC_iinc, Opcodes.OPC_tableswitch, Opcodes.OPC_frem, Opcodes.OPC_ireturn, Opcodes.OPC_saload, Opcodes.OPC_astore_2, 106, 42, Opcodes.OPC_fcmpg, 26, -46, 113, 90, 21, Opcodes.OPC_dstore_2, Opcodes.OPC_ineg, Opcodes.OPC_astore_0, Opcodes.OPC_if_icmpeq, -48, Opcodes.OPC_dup2_x2, 4, 24, Opcodes.OPC_if_icmple, -20, Opcodes.OPC_monitorenter, -32, Opcodes.OPC_lstore_2, 110, 15, Opcodes.OPC_fastore, -53, -52, Opcodes.OPC_fload_2, Opcodes.OPC_i2b, Opcodes.OPC_dreturn, 80, Opcodes.OPC_if_icmplt, -12, 112, Opcodes.OPC_dstore, Opcodes.OPC_ifeq, Opcodes.OPC_iushr, Opcodes.OPC_astore, Opcodes.OPC_i2l, Opcodes.OPC_fload_1, Opcodes.OPC_invokestatic, Opcodes.OPC_getfield, 122, -4, 2, 54, 91, Opcodes.OPC_fload_3, Opcodes.OPC_castore, Opcodes.OPC_dcmpl, Opcodes.OPC_daload, Opcodes.OPC_aload_3, Opcodes.OPC_dup2_x1, -6, Opcodes.OPC_dcmpg, -29, Opcodes.OPC_l2d, Opcodes.OPC_i2c, Opcodes.OPC_freturn, 5, -33, 41, 16, Opcodes.OPC_dsub, Opcodes.OPC_idiv, Opcodes.OPC_invokedynamic, Opcodes.OPC_jsr_w, -45, 0, -26, -49, Ti.t.f25309s, Opcodes.OPC_ifle, Opcodes.OPC_jsr, Opcodes.OPC_aload_2, Opcodes.OPC_dadd, 22, 1, Opcodes.OPC_lstore_0, Opcodes.OPC_pop2, -30, Opcodes.OPC_l2f, Opcodes.OPC_ret, 13, Opcodes.OPC_fstore, 52, 27, Opcodes.OPC_lookupswitch, 51, -1, Opcodes.OPC_areturn, Opcodes.OPC_new, 72, 12, Opcodes.OPC_swap, Opcodes.OPC_invokeinterface, Opcodes.OPC_return, -51, Opcodes.OPC_iaload, Opcodes.OPC_multianewarray, -13, -37, 71, -27, Opcodes.OPC_if_acmpeq, Opcodes.OPC_ifge, Opcodes.OPC_dneg, 10, Opcodes.OPC_if_acmpne, 32, Opcodes.OPC_imul, -2, Byte.MAX_VALUE, Opcodes.OPC_instanceof, Opcodes.OPC_lreturn};

    public static final int f13782d = 8;

    public int[] f13783a;

    public boolean f13784b;

    private void f(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int i12 = ((bArr[i10 + 7] & 255) << 8) + (bArr[i10 + 6] & 255);
        int i13 = ((bArr[i10 + 5] & 255) << 8) + (bArr[i10 + 4] & 255);
        int i14 = ((bArr[i10 + 3] & 255) << 8) + (bArr[i10 + 2] & 255);
        int i15 = ((bArr[i10 + 1] & 255) << 8) + (bArr[i10] & 255);
        for (int i16 = 60; i16 >= 44; i16 -= 4) {
            i12 = k(i12, 11) - ((((~i13) & i15) + (i14 & i13)) + this.f13783a[i16 + 3]);
            i13 = k(i13, 13) - ((((~i14) & i12) + (i15 & i14)) + this.f13783a[i16 + 2]);
            i14 = k(i14, 14) - ((((~i15) & i13) + (i12 & i15)) + this.f13783a[i16 + 1]);
            i15 = k(i15, 15) - ((((~i12) & i14) + (i13 & i12)) + this.f13783a[i16]);
        }
        int[] iArr = this.f13783a;
        int i17 = i12 - iArr[i13 & 63];
        int i18 = i13 - iArr[i14 & 63];
        int i19 = i14 - iArr[i15 & 63];
        int i20 = i15 - iArr[i17 & 63];
        for (int i21 = 40; i21 >= 20; i21 -= 4) {
            i17 = k(i17, 11) - ((((~i18) & i20) + (i19 & i18)) + this.f13783a[i21 + 3]);
            i18 = k(i18, 13) - ((((~i19) & i17) + (i20 & i19)) + this.f13783a[i21 + 2]);
            i19 = k(i19, 14) - ((((~i20) & i18) + (i17 & i20)) + this.f13783a[i21 + 1]);
            i20 = k(i20, 15) - ((((~i17) & i19) + (i18 & i17)) + this.f13783a[i21]);
        }
        int[] iArr2 = this.f13783a;
        int i22 = i17 - iArr2[i18 & 63];
        int i23 = i18 - iArr2[i19 & 63];
        int i24 = i19 - iArr2[i20 & 63];
        int i25 = i20 - iArr2[i22 & 63];
        for (int i26 = 16; i26 >= 0; i26 -= 4) {
            i22 = k(i22, 11) - ((((~i23) & i25) + (i24 & i23)) + this.f13783a[i26 + 3]);
            i23 = k(i23, 13) - ((((~i24) & i22) + (i25 & i24)) + this.f13783a[i26 + 2]);
            i24 = k(i24, 14) - ((((~i25) & i23) + (i22 & i25)) + this.f13783a[i26 + 1]);
            i25 = k(i25, 15) - ((((~i22) & i24) + (i23 & i22)) + this.f13783a[i26]);
        }
        bArr2[i11] = (byte) i25;
        bArr2[i11 + 1] = (byte) (i25 >> 8);
        bArr2[i11 + 2] = (byte) i24;
        bArr2[i11 + 3] = (byte) (i24 >> 8);
        bArr2[i11 + 4] = (byte) i23;
        bArr2[i11 + 5] = (byte) (i23 >> 8);
        bArr2[i11 + 6] = (byte) i22;
        bArr2[i11 + 7] = (byte) (i22 >> 8);
    }

    private void i(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int i12 = ((bArr[i10 + 7] & 255) << 8) + (bArr[i10 + 6] & 255);
        int i13 = ((bArr[i10 + 5] & 255) << 8) + (bArr[i10 + 4] & 255);
        int i14 = ((bArr[i10 + 3] & 255) << 8) + (bArr[i10 + 2] & 255);
        int i15 = ((bArr[i10 + 1] & 255) << 8) + (bArr[i10] & 255);
        for (int i16 = 0; i16 <= 16; i16 += 4) {
            i15 = k(i15 + ((~i12) & i14) + (i13 & i12) + this.f13783a[i16], 1);
            i14 = k(i14 + ((~i15) & i13) + (i12 & i15) + this.f13783a[i16 + 1], 2);
            i13 = k(i13 + ((~i14) & i12) + (i15 & i14) + this.f13783a[i16 + 2], 3);
            i12 = k(i12 + ((~i13) & i15) + (i14 & i13) + this.f13783a[i16 + 3], 5);
        }
        int[] iArr = this.f13783a;
        int i17 = i15 + iArr[i12 & 63];
        int i18 = i14 + iArr[i17 & 63];
        int i19 = i13 + iArr[i18 & 63];
        int i20 = i12 + iArr[i19 & 63];
        for (int i21 = 20; i21 <= 40; i21 += 4) {
            i17 = k(i17 + ((~i20) & i18) + (i19 & i20) + this.f13783a[i21], 1);
            i18 = k(i18 + ((~i17) & i19) + (i20 & i17) + this.f13783a[i21 + 1], 2);
            i19 = k(i19 + ((~i18) & i20) + (i17 & i18) + this.f13783a[i21 + 2], 3);
            i20 = k(i20 + ((~i19) & i17) + (i18 & i19) + this.f13783a[i21 + 3], 5);
        }
        int[] iArr2 = this.f13783a;
        int i22 = i17 + iArr2[i20 & 63];
        int i23 = i18 + iArr2[i22 & 63];
        int i24 = i19 + iArr2[i23 & 63];
        int i25 = i20 + iArr2[i24 & 63];
        for (int i26 = 44; i26 < 64; i26 += 4) {
            i22 = k(i22 + ((~i25) & i23) + (i24 & i25) + this.f13783a[i26], 1);
            i23 = k(i23 + ((~i22) & i24) + (i25 & i22) + this.f13783a[i26 + 1], 2);
            i24 = k(i24 + ((~i23) & i25) + (i22 & i23) + this.f13783a[i26 + 2], 3);
            i25 = k(i25 + ((~i24) & i22) + (i23 & i24) + this.f13783a[i26 + 3], 5);
        }
        bArr2[i11] = (byte) i22;
        bArr2[i11 + 1] = (byte) (i22 >> 8);
        bArr2[i11 + 2] = (byte) i23;
        bArr2[i11 + 3] = (byte) (i23 >> 8);
        bArr2[i11 + 4] = (byte) i24;
        bArr2[i11 + 5] = (byte) (i24 >> 8);
        bArr2[i11 + 6] = (byte) i25;
        bArr2[i11 + 7] = (byte) (i25 >> 8);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        byte[] b10;
        this.f13784b = z10;
        if (interfaceC2379k instanceof Xi.B0) {
            Xi.B0 b02 = (Xi.B0) interfaceC2379k;
            this.f13783a = j(b02.b(), b02.e());
            b10 = b02.b();
        } else {
            if (!(interfaceC2379k instanceof C3360o0)) {
                throw new IllegalArgumentException("invalid parameter passed to RC2 init - " + interfaceC2379k.getClass().getName());
            }
            b10 = ((C3360o0) interfaceC2379k).b();
            this.f13783a = j(b10, b10.length * 8);
        }
        Bi.r.a(new Hi.c(b(), b10.length * 8, interfaceC2379k, x0.a(z10)));
    }

    @Override
    public String b() {
        return "RC2";
    }

    @Override
    public int c() {
        return 8;
    }

    @Override
    public final int g(byte[] bArr, int i10, byte[] bArr2, int i11) {
        if (this.f13783a == null) {
            throw new IllegalStateException("RC2 engine not initialised");
        }
        if (i10 + 8 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i11 + 8 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.f13784b) {
            i(bArr, i10, bArr2, i11);
            return 8;
        }
        f(bArr, i10, bArr2, i11);
        return 8;
    }

    public final int[] j(byte[] bArr, int i10) {
        int[] iArr = new int[128];
        for (int i11 = 0; i11 != bArr.length; i11++) {
            iArr[i11] = bArr[i11] & 255;
        }
        int length = bArr.length;
        if (length < 128) {
            int i12 = iArr[length - 1];
            int i13 = 0;
            while (true) {
                int i14 = i13 + 1;
                i12 = f13781c[(i12 + iArr[i13]) & 255] & 255;
                int i15 = length + 1;
                iArr[length] = i12;
                if (i15 >= 128) {
                    break;
                }
                length = i15;
                i13 = i14;
            }
        }
        int i16 = (i10 + 7) >> 3;
        int i17 = 128 - i16;
        int i18 = f13781c[(255 >> ((-i10) & 7)) & iArr[i17]] & 255;
        iArr[i17] = i18;
        for (int i19 = 127 - i16; i19 >= 0; i19--) {
            i18 = f13781c[i18 ^ iArr[i19 + i16]] & 255;
            iArr[i19] = i18;
        }
        int[] iArr2 = new int[64];
        for (int i20 = 0; i20 != 64; i20++) {
            int i21 = i20 * 2;
            iArr2[i20] = iArr[i21] + (iArr[i21 + 1] << 8);
        }
        return iArr2;
    }

    public final int k(int i10, int i11) {
        int i12 = i10 & 65535;
        return (i12 >> (16 - i11)) | (i12 << i11);
    }

    @Override
    public void reset() {
    }
}
