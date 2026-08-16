package Li;

import Bi.EnumC2383o;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class D0 implements Bi.Y, org.bouncycastle.util.n {

    public static final byte[] f13563h = {62, Opcodes.OPC_frem, 91, 71, -54, -32, 0, 51, 4, -47, Opcodes.OPC_bastore, Opcodes.OPC_dcmpg, 9, Opcodes.OPC_invokeinterface, Opcodes.OPC_ldiv, -53, 123, 27, -7, 50, Opcodes.OPC_dreturn, Opcodes.OPC_ifgt, 106, Opcodes.OPC_if_acmpeq, Opcodes.OPC_invokestatic, Opcodes.OPC_aload_3, -4, 29, 8, Opcodes.OPC_aastore, 3, Opcodes.OPC_d2f, Opcodes.OPC_astore_2, Opcodes.OPC_astore_3, Opcodes.OPC_iinc, Opcodes.OPC_ifeq, -28, -50, -39, Opcodes.OPC_i2b, -35, Opcodes.OPC_invokevirtual, Opcodes.OPC_i2l, 72, Opcodes.OPC_f2i, 41, 110, Opcodes.OPC_ireturn, -51, Opcodes.OPC_instanceof, -8, 30, Opcodes.OPC_drem, Opcodes.OPC_fstore_0, 105, Opcodes.OPC_ifnull, Opcodes.OPC_putfield, Opcodes.OPC_anewarray, -3, Opcodes.OPC_dstore, Opcodes.OPC_dadd, 32, -44, Opcodes.OPC_fstore, Opcodes.OPC_fneg, Opcodes.OPC_lushr, Opcodes.OPC_getstatic, Opcodes.OPC_goto, -49, -19, Opcodes.OPC_pop, Opcodes.OPC_multianewarray, -13, Opcodes.OPC_aload_2, Opcodes.OPC_new, 20, 33, 6, Opcodes.OPC_castore, Opcodes.OPC_iflt, -29, -17, Opcodes.OPC_dup2_x2, Opcodes.OPC_daload, Opcodes.OPC_iastore, Byte.MAX_VALUE, 90, Opcodes.OPC_if_icmple, 13, Opcodes.OPC_ixor, Opcodes.OPC_fastore, Opcodes.OPC_dstore_2, Opcodes.OPC_swap, Opcodes.OPC_invokedynamic, Opcodes.OPC_pop2, 28, Opcodes.OPC_dstore_3, 22, -43, 23, Opcodes.OPC_jsr, Opcodes.OPC_i2c, Opcodes.OPC_fload_2, 31, Opcodes.OPC_f2l, -1, -40, Opcodes.OPC_freturn, Opcodes.OPC_iaload, 1, -45, Opcodes.OPC_lreturn, Opcodes.OPC_istore_0, Opcodes.OPC_astore_0, -38, 70, -21, Opcodes.OPC_jsr_w, -34, Opcodes.OPC_ifne, Opcodes.OPC_d2l, Opcodes.OPC_i2d, -41, Opcodes.OPC_astore, Byte.MIN_VALUE, 111, Opcodes.OPC_laload, Opcodes.OPC_goto_w, Opcodes.OPC_return, Opcodes.OPC_getfield, Opcodes.OPC_lstore, -9, 10, 34, 19, 40, Opcodes.OPC_iushr, -52, 60, Opcodes.OPC_l2f, Opcodes.OPC_ifnonnull, Opcodes.OPC_monitorexit, Opcodes.OPC_fcmpg, Opcodes.OPC_sastore, 7, Opcodes.OPC_athrow, Opcodes.OPC_iand, -16, 11, Opcodes.OPC_aload_1, Opcodes.OPC_dcmpl, Opcodes.OPC_dastore, Opcodes.OPC_saload, Opcodes.OPC_lstore_2, 121, Opcodes.OPC_ladd, Opcodes.OPC_if_acmpne, Opcodes.OPC_astore_1, 16, -2, -68, 38, Opcodes.OPC_fcmpl, Opcodes.OPC_l2i, Opcodes.OPC_l2d, Opcodes.OPC_areturn, Opcodes.OPC_if_icmpgt, -5, Opcodes.OPC_checkcast, 24, Opcodes.OPC_lcmp, -14, Ti.t.f25309s, -27, -23, Opcodes.OPC_dup2_x1, -48, -36, 17, 102, 100, 92, -20, Opcodes.OPC_dup, Opcodes.OPC_lstore_3, Opcodes.OPC_lneg, 18, -11, Opcodes.OPC_ineg, Opcodes.OPC_ifge, Opcodes.OPC_tableswitch, Opcodes.OPC_fload_1, 14, Opcodes.OPC_i2f, Opcodes.OPC_lookupswitch, Opcodes.OPC_arraylength, 42, 2, -25, Opcodes.OPC_dsub, -26, Opcodes.OPC_fstore_1, Opcodes.OPC_if_icmpge, Opcodes.OPC_idiv, Opcodes.OPC_monitorenter, Opcodes.OPC_i2s, Opcodes.OPC_if_icmpeq, -15, -10, -6, 54, -46, 80, Opcodes.OPC_imul, Opcodes.OPC_ifle, Opcodes.OPC_fadd, 113, 21, 61, -42, 64, Opcodes.OPC_wide, -30, 15, Opcodes.OPC_d2i, Opcodes.OPC_lxor, Opcodes.OPC_dneg, 107, Opcodes.OPC_fload_3, 5, Opcodes.OPC_lstore_0, 12, 48, -22, 112, Opcodes.OPC_invokespecial, Opcodes.OPC_if_icmplt, -24, Opcodes.OPC_ret, 101, Opcodes.OPC_f2d, Opcodes.OPC_dload_1, 26, -37, Opcodes.OPC_lor, Opcodes.OPC_putstatic, Opcodes.OPC_if_icmpne, -12, Opcodes.OPC_fstore_2, 122, 25, -33, -18, 120, 52, 96};

    public static final byte[] f13564i = {Opcodes.OPC_castore, Opcodes.OPC_monitorenter, Opcodes.OPC_dadd, 113, Opcodes.OPC_istore_0, Opcodes.OPC_goto_w, 71, Opcodes.OPC_i2f, Opcodes.OPC_if_icmpeq, 60, -38, 91, 41, Opcodes.OPC_tableswitch, -3, Opcodes.OPC_dneg, Opcodes.OPC_f2l, Opcodes.OPC_multianewarray, Opcodes.OPC_lcmp, 12, Opcodes.OPC_if_acmpne, 26, 19, 0, -29, Opcodes.OPC_jsr, 22, Opcodes.OPC_frem, 64, -7, -8, Opcodes.OPC_lstore_3, Opcodes.OPC_fstore_1, 38, Opcodes.OPC_imul, Opcodes.OPC_fcmpg, Opcodes.OPC_lor, -39, Opcodes.OPC_fstore_2, 62, 16, Opcodes.OPC_fneg, Opcodes.OPC_ifnull, Opcodes.OPC_goto, Opcodes.OPC_f2i, Opcodes.OPC_dstore, Opcodes.OPC_fstore_0, Ti.t.f25309s, Opcodes.OPC_astore, Opcodes.OPC_putfield, Opcodes.OPC_sastore, 42, Opcodes.OPC_checkcast, Opcodes.OPC_ldiv, Opcodes.OPC_putstatic, 5, 34, 102, Opcodes.OPC_athrow, -36, 11, -6, Opcodes.OPC_fadd, 72, -35, 32, 17, 6, 54, Opcodes.OPC_jsr_w, Opcodes.OPC_instanceof, -49, -10, Opcodes.OPC_dload_1, Opcodes.OPC_dastore, Opcodes.OPC_new, 105, -11, -44, Opcodes.OPC_i2d, Byte.MAX_VALUE, Opcodes.OPC_iinc, Opcodes.OPC_astore_1, -46, Opcodes.OPC_ifge, Opcodes.OPC_pop, Opcodes.OPC_if_icmple, -68, Opcodes.OPC_iastore, Opcodes.OPC_ifne, -33, -2, -42, Opcodes.OPC_f2d, 122, -21, Opcodes.OPC_aload_1, Opcodes.OPC_aastore, -40, 92, Opcodes.OPC_if_icmplt, 20, 23, -5, Opcodes.OPC_fload_1, -43, Opcodes.OPC_lushr, 48, Opcodes.OPC_dsub, Opcodes.OPC_drem, 8, 9, -18, Opcodes.OPC_invokespecial, 112, Opcodes.OPC_lstore_0, Opcodes.OPC_ladd, Opcodes.OPC_getstatic, 25, Opcodes.OPC_d2i, Opcodes.OPC_astore_3, -27, Opcodes.OPC_astore_0, Opcodes.OPC_i2s, Opcodes.OPC_d2l, Opcodes.OPC_dup2_x1, -37, Opcodes.OPC_ret, Opcodes.OPC_lreturn, -15, Opcodes.OPC_freturn, Opcodes.OPC_iaload, -53, 13, -4, -12, Opcodes.OPC_aload_3, 70, 110, 29, Opcodes.OPC_dcmpl, -24, -47, -23, Opcodes.OPC_astore_2, Opcodes.OPC_lstore, Opcodes.OPC_if_acmpeq, Opcodes.OPC_lneg, Opcodes.OPC_dup2_x2, Opcodes.OPC_lxor, Opcodes.OPC_ifle, Opcodes.OPC_lookupswitch, Opcodes.OPC_ixor, Opcodes.OPC_ifgt, Opcodes.OPC_invokeinterface, 28, -32, -51, Opcodes.OPC_dstore_2, Opcodes.OPC_l2f, 1, Opcodes.OPC_invokevirtual, Opcodes.OPC_anewarray, Opcodes.OPC_pop2, Opcodes.OPC_fload_2, Opcodes.OPC_if_icmpge, Opcodes.OPC_swap, Opcodes.OPC_fstore, 120, Opcodes.OPC_ifeq, 21, Opcodes.OPC_d2f, 80, Opcodes.OPC_invokestatic, Opcodes.OPC_fcmpl, -28, -48, Opcodes.OPC_i2b, Opcodes.OPC_ifnonnull, -50, -19, 15, Opcodes.OPC_getfield, 111, Opcodes.OPC_if_icmpne, -52, -16, 2, Opcodes.OPC_dstore_3, 121, Opcodes.OPC_monitorexit, -34, Opcodes.OPC_if_icmpgt, -17, -22, Opcodes.OPC_fastore, -26, 107, 24, -20, 27, Opcodes.OPC_aload_2, Byte.MIN_VALUE, -9, Opcodes.OPC_ineg, -25, -1, 33, 90, 106, Opcodes.OPC_bastore, 30, Opcodes.OPC_lstore_2, Opcodes.OPC_daload, Opcodes.OPC_i2c, Opcodes.OPC_saload, Opcodes.OPC_wide, 51, 7, 10, Opcodes.OPC_invokedynamic, Opcodes.OPC_iand, 14, 52, Opcodes.OPC_l2i, Opcodes.OPC_return, Opcodes.OPC_dcmpg, Opcodes.OPC_iushr, -13, 61, 96, Opcodes.OPC_idiv, 123, -54, -45, 31, 50, 101, 4, 40, 100, Opcodes.OPC_arraylength, Opcodes.OPC_i2l, Opcodes.OPC_iflt, Opcodes.OPC_laload, Opcodes.OPC_dup, Opcodes.OPC_l2d, -41, Opcodes.OPC_areturn, Opcodes.OPC_fload_3, Opcodes.OPC_ireturn, Opcodes.OPC_dreturn, 18, 3, -30, -14};

    public static final short[] f13565j = {17623, 9916, 25195, 4958, 22409, 13794, 28981, 2479, 19832, 12051, 27588, 6897, 24102, 15437, 30874, 18348};

    public final int[] f13566a;

    public final int[] f13567b;

    public final int[] f13568c;

    public int f13569d;

    public final byte[] f13570e;

    public int f13571f;

    public D0 f13572g;

    public D0() {
        this.f13566a = new int[16];
        this.f13567b = new int[2];
        this.f13568c = new int[4];
        this.f13570e = new byte[4];
    }

    public static int k(int i10) {
        return r(i10, 24) ^ (((r(i10, 2) ^ i10) ^ r(i10, 10)) ^ r(i10, 18));
    }

    public static int l(int i10) {
        return r(i10, 30) ^ (((r(i10, 8) ^ i10) ^ r(i10, 14)) ^ r(i10, 22));
    }

    public static int o(byte b10, short s10, byte b11) {
        return ((b10 & 255) << 23) | ((s10 & 65535) << 8) | (b11 & 255);
    }

    public static int p(byte b10, byte b11, byte b12, byte b13) {
        return ((b10 & 255) << 24) | ((b11 & 255) << 16) | ((b12 & 255) << 8) | (b13 & 255);
    }

    public static int q(int i10, int i11) {
        return ((i10 >>> (31 - i11)) | (i10 << i11)) & Integer.MAX_VALUE;
    }

    public static int r(int i10, int i11) {
        return (i10 >>> (32 - i11)) | (i10 << i11);
    }

    public static void s(int i10, byte[] bArr, int i11) {
        bArr[i11] = (byte) (i10 >> 24);
        bArr[i11 + 1] = (byte) (i10 >> 16);
        bArr[i11 + 2] = (byte) (i10 >> 8);
        bArr[i11 + 3] = (byte) i10;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        InterfaceC2379k interfaceC2379k2;
        byte[] bArr;
        if (interfaceC2379k instanceof Xi.w0) {
            Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
            bArr = w0Var.a();
            interfaceC2379k2 = w0Var.b();
        } else {
            interfaceC2379k2 = interfaceC2379k;
            bArr = null;
        }
        byte[] b10 = interfaceC2379k2 instanceof C3360o0 ? ((C3360o0) interfaceC2379k2).b() : null;
        this.f13569d = 0;
        this.f13571f = 0;
        w(b10, bArr);
        Bi.r.a(new Hi.c(b(), b10.length * 8, interfaceC2379k, z10 ? EnumC2383o.ENCRYPTION : EnumC2383o.DECRYPTION));
        this.f13572g = (D0) copy();
    }

    @Override
    public String b() {
        return "Zuc-128";
    }

    public final int c(int i10, int i11) {
        int i12 = i10 + i11;
        return (Integer.MAX_VALUE & i12) + (i12 >>> 31);
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new D0(this);
    }

    public final void e() {
        int[] iArr = this.f13568c;
        int[] iArr2 = this.f13566a;
        iArr[0] = ((iArr2[15] & 2147450880) << 1) | (iArr2[14] & 65535);
        iArr[1] = ((iArr2[11] & 65535) << 16) | (iArr2[9] >>> 15);
        iArr[2] = ((iArr2[7] & 65535) << 16) | (iArr2[5] >>> 15);
        iArr[3] = (iArr2[0] >>> 15) | ((iArr2[2] & 65535) << 16);
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        if (this.f13572g == null) {
            throw new IllegalStateException(b() + " not initialised");
        }
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i12 + i11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        for (int i13 = 0; i13 < i11; i13++) {
            bArr2[i13 + i12] = i(bArr[i13 + i10]);
        }
        return i11;
    }

    public int h() {
        int[] iArr = this.f13568c;
        int i10 = iArr[0];
        int[] iArr2 = this.f13567b;
        int i11 = iArr2[0];
        int i12 = iArr2[1];
        int i13 = (i10 ^ i11) + i12;
        int i14 = i11 + iArr[1];
        int i15 = iArr[2] ^ i12;
        int k10 = k((i14 << 16) | (i15 >>> 16));
        int l10 = l((i15 << 16) | (i14 >>> 16));
        int[] iArr3 = this.f13567b;
        byte[] bArr = f13563h;
        byte b10 = bArr[k10 >>> 24];
        byte[] bArr2 = f13564i;
        iArr3[0] = p(b10, bArr2[(k10 >>> 16) & 255], bArr[(k10 >>> 8) & 255], bArr2[k10 & 255]);
        this.f13567b[1] = p(bArr[l10 >>> 24], bArr2[(l10 >>> 16) & 255], bArr[(l10 >>> 8) & 255], bArr2[l10 & 255]);
        return i13;
    }

    @Override
    public byte i(byte b10) {
        if (this.f13569d == 0) {
            u();
        }
        byte[] bArr = this.f13570e;
        int i10 = this.f13569d;
        byte b11 = (byte) (b10 ^ bArr[i10]);
        this.f13569d = (i10 + 1) % 4;
        return b11;
    }

    @Override
    public void j(org.bouncycastle.util.n nVar) {
        D0 d02 = (D0) nVar;
        int[] iArr = d02.f13566a;
        int[] iArr2 = this.f13566a;
        System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
        int[] iArr3 = d02.f13567b;
        int[] iArr4 = this.f13567b;
        System.arraycopy(iArr3, 0, iArr4, 0, iArr4.length);
        int[] iArr5 = d02.f13568c;
        int[] iArr6 = this.f13568c;
        System.arraycopy(iArr5, 0, iArr6, 0, iArr6.length);
        byte[] bArr = d02.f13570e;
        byte[] bArr2 = this.f13570e;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.f13569d = d02.f13569d;
        this.f13571f = d02.f13571f;
        this.f13572g = d02;
    }

    public final void m(int i10) {
        int i11 = this.f13566a[0];
        int c10 = c(c(c(c(c(c(i11, q(i11, 8)), q(this.f13566a[4], 20)), q(this.f13566a[10], 21)), q(this.f13566a[13], 17)), q(this.f13566a[15], 15)), i10);
        int[] iArr = this.f13566a;
        iArr[0] = iArr[1];
        iArr[1] = iArr[2];
        iArr[2] = iArr[3];
        iArr[3] = iArr[4];
        iArr[4] = iArr[5];
        iArr[5] = iArr[6];
        iArr[6] = iArr[7];
        iArr[7] = iArr[8];
        iArr[8] = iArr[9];
        iArr[9] = iArr[10];
        iArr[10] = iArr[11];
        iArr[11] = iArr[12];
        iArr[12] = iArr[13];
        iArr[13] = iArr[14];
        iArr[14] = iArr[15];
        iArr[15] = c10;
    }

    public final void n() {
        int i10 = this.f13566a[0];
        int c10 = c(c(c(c(c(i10, q(i10, 8)), q(this.f13566a[4], 20)), q(this.f13566a[10], 21)), q(this.f13566a[13], 17)), q(this.f13566a[15], 15));
        int[] iArr = this.f13566a;
        iArr[0] = iArr[1];
        iArr[1] = iArr[2];
        iArr[2] = iArr[3];
        iArr[3] = iArr[4];
        iArr[4] = iArr[5];
        iArr[5] = iArr[6];
        iArr[6] = iArr[7];
        iArr[7] = iArr[8];
        iArr[8] = iArr[9];
        iArr[9] = iArr[10];
        iArr[10] = iArr[11];
        iArr[11] = iArr[12];
        iArr[12] = iArr[13];
        iArr[13] = iArr[14];
        iArr[14] = iArr[15];
        iArr[15] = c10;
    }

    @Override
    public void reset() {
        D0 d02 = this.f13572g;
        if (d02 != null) {
            j(d02);
        }
    }

    public int t() {
        return 2047;
    }

    public final void u() {
        s(v(), this.f13570e, 0);
    }

    public int v() {
        int i10 = this.f13571f;
        this.f13571f = i10 + 1;
        if (i10 >= t()) {
            throw new IllegalStateException("Too much data processed by singleKey/IV");
        }
        e();
        int h10 = h() ^ this.f13568c[3];
        n();
        return h10;
    }

    public final void w(byte[] bArr, byte[] bArr2) {
        x(this.f13566a, bArr, bArr2);
        int[] iArr = this.f13567b;
        iArr[0] = 0;
        iArr[1] = 0;
        int i10 = 32;
        while (true) {
            e();
            if (i10 <= 0) {
                h();
                n();
                return;
            } else {
                m(h() >>> 1);
                i10--;
            }
        }
    }

    public void x(int[] iArr, byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr.length != 16) {
            throw new IllegalArgumentException("A key of 16 bytes is needed");
        }
        if (bArr2 == null || bArr2.length != 16) {
            throw new IllegalArgumentException("An IV of 16 bytes is needed");
        }
        int[] iArr2 = this.f13566a;
        byte b10 = bArr[0];
        short[] sArr = f13565j;
        iArr2[0] = o(b10, sArr[0], bArr2[0]);
        this.f13566a[1] = o(bArr[1], sArr[1], bArr2[1]);
        this.f13566a[2] = o(bArr[2], sArr[2], bArr2[2]);
        this.f13566a[3] = o(bArr[3], sArr[3], bArr2[3]);
        this.f13566a[4] = o(bArr[4], sArr[4], bArr2[4]);
        this.f13566a[5] = o(bArr[5], sArr[5], bArr2[5]);
        this.f13566a[6] = o(bArr[6], sArr[6], bArr2[6]);
        this.f13566a[7] = o(bArr[7], sArr[7], bArr2[7]);
        this.f13566a[8] = o(bArr[8], sArr[8], bArr2[8]);
        this.f13566a[9] = o(bArr[9], sArr[9], bArr2[9]);
        this.f13566a[10] = o(bArr[10], sArr[10], bArr2[10]);
        this.f13566a[11] = o(bArr[11], sArr[11], bArr2[11]);
        this.f13566a[12] = o(bArr[12], sArr[12], bArr2[12]);
        this.f13566a[13] = o(bArr[13], sArr[13], bArr2[13]);
        this.f13566a[14] = o(bArr[14], sArr[14], bArr2[14]);
        this.f13566a[15] = o(bArr[15], sArr[15], bArr2[15]);
    }

    public D0(D0 d02) {
        this.f13566a = new int[16];
        this.f13567b = new int[2];
        this.f13568c = new int[4];
        this.f13570e = new byte[4];
        j(d02);
    }
}
