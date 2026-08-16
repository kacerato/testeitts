package Li;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import android.security.keystore.KeyProperties;
import java.lang.reflect.Array;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class C2773c implements InterfaceC2374f {

    public static final byte[] f13853d = {Opcodes.OPC_dadd, Opcodes.OPC_iushr, Opcodes.OPC_dneg, 123, -14, 107, 111, Opcodes.OPC_multianewarray, 48, 1, Opcodes.OPC_dsub, Opcodes.OPC_aload_1, -2, -41, Opcodes.OPC_lookupswitch, Opcodes.OPC_fneg, -54, Opcodes.OPC_ixor, Opcodes.OPC_jsr_w, Opcodes.OPC_lushr, -6, Opcodes.OPC_dup, 71, -16, Opcodes.OPC_lreturn, -44, Opcodes.OPC_if_icmpge, Opcodes.OPC_dreturn, Opcodes.OPC_ifge, Opcodes.OPC_if_icmple, Opcodes.OPC_frem, Opcodes.OPC_checkcast, Opcodes.OPC_invokespecial, -3, Opcodes.OPC_i2s, 38, 54, Opcodes.OPC_lstore_0, -9, -52, 52, Opcodes.OPC_if_acmpeq, -27, -15, 113, -40, Opcodes.OPC_daload, 21, 4, Opcodes.OPC_ifnonnull, Opcodes.OPC_fload_1, Opcodes.OPC_monitorexit, 24, Opcodes.OPC_fcmpg, 5, Opcodes.OPC_ifne, 7, 18, Byte.MIN_VALUE, -30, -21, Opcodes.OPC_dload_1, Opcodes.OPC_getstatic, Opcodes.OPC_lneg, 9, Opcodes.OPC_lxor, Opcodes.OPC_aload_2, 26, 27, 110, 90, Opcodes.OPC_if_icmpne, Opcodes.OPC_dastore, Opcodes.OPC_istore_0, -42, Opcodes.OPC_putstatic, 41, -29, Opcodes.OPC_laload, Opcodes.OPC_iinc, Opcodes.OPC_aastore, -47, 0, -19, 32, -4, Opcodes.OPC_return, 91, 106, -53, Opcodes.OPC_arraylength, Opcodes.OPC_dstore, Opcodes.OPC_dstore_3, Opcodes.OPC_astore_1, Opcodes.OPC_pop2, -49, -48, -17, Opcodes.OPC_tableswitch, -5, Opcodes.OPC_fstore_0, Opcodes.OPC_astore_2, 51, Opcodes.OPC_i2l, Opcodes.OPC_fstore_2, -7, 2, Byte.MAX_VALUE, 80, 60, Opcodes.OPC_if_icmpeq, Opcodes.OPC_jsr, Opcodes.OPC_fastore, Opcodes.OPC_if_icmpgt, 64, Opcodes.OPC_d2l, Opcodes.OPC_i2c, Opcodes.OPC_ifgt, Opcodes.OPC_fstore, -11, -68, Opcodes.OPC_invokevirtual, -38, 33, 16, -1, -13, -46, -51, 12, 19, -20, Opcodes.OPC_swap, Opcodes.OPC_dcmpl, Opcodes.OPC_fstore_1, 23, Opcodes.OPC_wide, Opcodes.OPC_goto, Opcodes.OPC_iand, 61, 100, Opcodes.OPC_dup2_x1, 25, Opcodes.OPC_drem, 96, Opcodes.OPC_lor, Opcodes.OPC_iastore, -36, 34, 42, Opcodes.OPC_d2f, Opcodes.OPC_l2i, 70, -18, Opcodes.OPC_invokestatic, 20, -34, Opcodes.OPC_dup2_x2, 11, -37, -32, 50, Opcodes.OPC_astore, 10, Opcodes.OPC_dstore_2, 6, Opcodes.OPC_fload_2, 92, Opcodes.OPC_monitorenter, -45, Opcodes.OPC_ireturn, Opcodes.OPC_fadd, Opcodes.OPC_i2b, Opcodes.OPC_fcmpl, -28, 121, -25, Opcodes.OPC_goto_w, Opcodes.OPC_lstore, Opcodes.OPC_ldiv, Opcodes.OPC_f2d, -43, Opcodes.OPC_astore_3, Opcodes.OPC_ret, Opcodes.OPC_idiv, Opcodes.OPC_sastore, -12, -22, 101, 122, Opcodes.OPC_freturn, 8, Opcodes.OPC_invokedynamic, 120, Opcodes.OPC_fload_3, Opcodes.OPC_iaload, 28, Opcodes.OPC_if_acmpne, Opcodes.OPC_getfield, Opcodes.OPC_ifnull, -24, -35, Opcodes.OPC_ineg, 31, Opcodes.OPC_astore_0, Opcodes.OPC_anewarray, Opcodes.OPC_f2i, Opcodes.OPC_l2d, 112, 62, Opcodes.OPC_putfield, 102, 72, 3, -10, 14, Opcodes.OPC_ladd, Opcodes.OPC_saload, Opcodes.OPC_pop, Opcodes.OPC_invokeinterface, Opcodes.OPC_i2f, Opcodes.OPC_instanceof, 29, Opcodes.OPC_ifle, Ti.t.f25309s, -8, Opcodes.OPC_dcmpg, 17, 105, -39, Opcodes.OPC_d2i, Opcodes.OPC_lcmp, Opcodes.OPC_iflt, 30, Opcodes.OPC_i2d, -23, -50, Opcodes.OPC_castore, 40, -33, Opcodes.OPC_f2l, Opcodes.OPC_if_icmplt, Opcodes.OPC_l2f, 13, Opcodes.OPC_athrow, -26, Opcodes.OPC_lstore_3, Opcodes.OPC_imul, Opcodes.OPC_lstore_2, Opcodes.OPC_ifeq, Opcodes.OPC_aload_3, 15, Opcodes.OPC_areturn, Opcodes.OPC_bastore, Opcodes.OPC_new, 22};

    public static final byte[] f13854e = {Opcodes.OPC_dastore, 9, 106, -43, 48, 54, Opcodes.OPC_if_acmpeq, Opcodes.OPC_fstore, Opcodes.OPC_athrow, 64, Opcodes.OPC_if_icmpgt, Opcodes.OPC_ifle, Opcodes.OPC_lor, -13, -41, -5, Opcodes.OPC_iushr, -29, Opcodes.OPC_dstore, Opcodes.OPC_ixor, Opcodes.OPC_iflt, Opcodes.OPC_laload, -1, Opcodes.OPC_i2d, 52, Opcodes.OPC_d2i, Opcodes.OPC_fstore_0, Opcodes.OPC_fstore_1, Opcodes.OPC_wide, -34, -23, -53, Opcodes.OPC_bastore, 123, Opcodes.OPC_lcmp, 50, Opcodes.OPC_if_acmpne, Opcodes.OPC_monitorenter, Opcodes.OPC_fload_1, 61, -18, Opcodes.OPC_astore_1, Opcodes.OPC_fcmpl, 11, Opcodes.OPC_lstore_3, -6, Opcodes.OPC_monitorexit, Opcodes.OPC_astore_3, 8, Opcodes.OPC_iaload, Opcodes.OPC_if_icmplt, 102, 40, -39, Opcodes.OPC_fload_2, Opcodes.OPC_getstatic, Opcodes.OPC_fneg, 91, Opcodes.OPC_if_icmpge, Opcodes.OPC_dstore_2, Opcodes.OPC_ldiv, Opcodes.OPC_f2i, -47, Opcodes.OPC_fload_3, Opcodes.OPC_frem, -8, -10, 100, Opcodes.OPC_i2f, Opcodes.OPC_imul, Opcodes.OPC_dcmpg, 22, -44, Opcodes.OPC_if_icmple, 92, -52, Opcodes.OPC_dup2_x1, 101, Opcodes.OPC_invokevirtual, Opcodes.OPC_i2c, Opcodes.OPC_idiv, 112, 72, 80, -3, -19, Opcodes.OPC_invokeinterface, -38, Opcodes.OPC_dup2_x2, 21, 70, Opcodes.OPC_pop, Opcodes.OPC_goto, Opcodes.OPC_f2d, Opcodes.OPC_ifgt, Opcodes.OPC_iinc, Opcodes.OPC_d2f, -40, Opcodes.OPC_lookupswitch, 0, Opcodes.OPC_f2l, -68, -45, 10, -9, -28, Opcodes.OPC_pop2, 5, Opcodes.OPC_invokestatic, Opcodes.OPC_putstatic, Opcodes.OPC_fstore_2, 6, -48, Opcodes.OPC_aload_2, 30, Opcodes.OPC_d2l, -54, Opcodes.OPC_lstore_0, 15, 2, Opcodes.OPC_instanceof, Opcodes.OPC_dreturn, Opcodes.OPC_anewarray, 3, 1, 19, Opcodes.OPC_l2d, 107, Opcodes.OPC_astore, Opcodes.OPC_i2b, 17, Opcodes.OPC_lstore_2, Opcodes.OPC_iastore, Opcodes.OPC_dsub, -36, -22, Opcodes.OPC_dcmpl, -14, -49, -50, -16, Opcodes.OPC_getfield, -26, Opcodes.OPC_drem, Opcodes.OPC_fcmpg, Opcodes.OPC_ireturn, Opcodes.OPC_ineg, 34, -25, Opcodes.OPC_lreturn, Opcodes.OPC_saload, Opcodes.OPC_i2l, -30, -7, Opcodes.OPC_lstore, -24, 28, Opcodes.OPC_lneg, -33, 110, 71, -15, 26, 113, 29, 41, Opcodes.OPC_multianewarray, Opcodes.OPC_l2f, 111, Opcodes.OPC_invokespecial, Opcodes.OPC_fadd, 14, Opcodes.OPC_tableswitch, 24, Opcodes.OPC_arraylength, 27, -4, Opcodes.OPC_sastore, 62, Opcodes.OPC_astore_0, Opcodes.OPC_ifnull, -46, 121, 32, Opcodes.OPC_ifne, -37, Opcodes.OPC_checkcast, -2, 120, -51, 90, -12, 31, -35, Opcodes.OPC_jsr, 51, Opcodes.OPC_l2i, 7, Opcodes.OPC_ifnonnull, Opcodes.OPC_daload, Opcodes.OPC_return, 18, 16, Opcodes.OPC_dup, Opcodes.OPC_dload_1, Byte.MIN_VALUE, -20, Opcodes.OPC_swap, 96, Opcodes.OPC_fastore, Byte.MAX_VALUE, Opcodes.OPC_ret, 25, Opcodes.OPC_putfield, Opcodes.OPC_dstore_3, 13, Opcodes.OPC_aload_3, -27, 122, Opcodes.OPC_if_icmpeq, Opcodes.OPC_i2s, Opcodes.OPC_jsr_w, Opcodes.OPC_ifge, -17, Opcodes.OPC_if_icmpne, -32, Opcodes.OPC_istore_0, Opcodes.OPC_astore_2, Opcodes.OPC_freturn, 42, -11, Opcodes.OPC_areturn, Opcodes.OPC_goto_w, -21, Opcodes.OPC_new, 60, Opcodes.OPC_lxor, Opcodes.OPC_aastore, Opcodes.OPC_ifeq, Opcodes.OPC_ladd, 23, Opcodes.OPC_aload_1, 4, Opcodes.OPC_iand, Opcodes.OPC_invokedynamic, Opcodes.OPC_dneg, -42, 38, Ti.t.f25309s, 105, 20, Opcodes.OPC_dadd, Opcodes.OPC_castore, 33, 12, Opcodes.OPC_lushr};

    public static final int[] f13855f = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106, 212, 179, 125, 250, 239, 197, 145};

    public static final int f13856g = -2139062144;

    public static final int f13857h = 2139062143;

    public static final int f13858i = 27;

    public static final int f13859j = -1061109568;

    public static final int f13860k = 1061109567;

    public static final int f13861l = 16;

    public int f13862a;

    public int[][] f13863b = null;

    public boolean f13864c;

    public C2773c() {
        Bi.r.a(new Hi.c(b(), j()));
    }

    private static int f(int i10) {
        return (((i10 & (-2139062144)) >>> 7) * 27) ^ ((2139062143 & i10) << 1);
    }

    private static int i(int i10) {
        int i11 = (1061109567 & i10) << 2;
        int i12 = i10 & (-1061109568);
        int i13 = i12 ^ (i12 >>> 1);
        return (i13 >>> 5) ^ (i11 ^ (i13 >>> 2));
    }

    private int j() {
        if (this.f13863b == null) {
            return 256;
        }
        return (r0.length - 7) << 5;
    }

    private void k(byte[] bArr, int i10, byte[] bArr2, int i11, int[][] iArr) {
        int r10 = org.bouncycastle.util.p.r(bArr, i10);
        int r11 = org.bouncycastle.util.p.r(bArr, i10 + 4);
        int r12 = org.bouncycastle.util.p.r(bArr, i10 + 8);
        int r13 = org.bouncycastle.util.p.r(bArr, i10 + 12);
        int i12 = this.f13862a;
        int[] iArr2 = iArr[i12];
        char c10 = 0;
        int i13 = r10 ^ iArr2[0];
        int i14 = 1;
        int i15 = r11 ^ iArr2[1];
        int i16 = r12 ^ iArr2[2];
        int i17 = i12 - 1;
        int i18 = r13 ^ iArr2[3];
        while (true) {
            byte[] bArr3 = f13854e;
            if (i17 <= i14) {
                int n10 = n((((bArr3[i13 & 255] & 255) ^ ((bArr3[(i18 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i16 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i15 >> 24) & 255] << 24)) ^ iArr[i17][0];
                int n11 = n((((bArr3[i15 & 255] & 255) ^ ((bArr3[(i13 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i18 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i16 >> 24) & 255] << 24)) ^ iArr[i17][1];
                int n12 = n((((bArr3[i16 & 255] & 255) ^ ((bArr3[(i15 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i13 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i18 >> 24) & 255] << 24)) ^ iArr[i17][2];
                int n13 = n((((bArr3[i18 & 255] & 255) ^ ((bArr3[(i16 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i15 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i13 >> 24) & 255] << 24)) ^ iArr[i17][3];
                int i19 = (((bArr3[n10 & 255] & 255) ^ ((bArr3[(n13 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(n12 >> 16) & 255] & 255) << 16)) ^ (bArr3[(n11 >> 24) & 255] << 24);
                int[] iArr3 = iArr[0];
                int i20 = i19 ^ iArr3[0];
                int i21 = ((((bArr3[n11 & 255] & 255) ^ ((bArr3[(n10 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(n13 >> 16) & 255] & 255) << 16)) ^ (bArr3[(n12 >> 24) & 255] << 24)) ^ iArr3[1];
                int i22 = ((((bArr3[n12 & 255] & 255) ^ ((bArr3[(n11 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(n10 >> 16) & 255] & 255) << 16)) ^ (bArr3[(n13 >> 24) & 255] << 24)) ^ iArr3[2];
                int i23 = ((((bArr3[n13 & 255] & 255) ^ ((bArr3[(n12 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(n11 >> 16) & 255] & 255) << 16)) ^ (bArr3[(n10 >> 24) & 255] << 24)) ^ iArr3[3];
                org.bouncycastle.util.p.m(i20, bArr2, i11);
                org.bouncycastle.util.p.m(i21, bArr2, i11 + 4);
                org.bouncycastle.util.p.m(i22, bArr2, i11 + 8);
                org.bouncycastle.util.p.m(i23, bArr2, i11 + 12);
                return;
            }
            int n14 = n((((bArr3[i13 & 255] & 255) ^ ((bArr3[(i18 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i16 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i15 >> 24) & 255] << 24)) ^ iArr[i17][c10];
            int n15 = n((((bArr3[i15 & 255] & 255) ^ ((bArr3[(i13 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i18 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i16 >> 24) & 255] << 24)) ^ iArr[i17][i14];
            int n16 = n(((((bArr3[(i15 >> 8) & 255] & 255) << 8) ^ (bArr3[i16 & 255] & 255)) ^ ((bArr3[(i13 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i18 >> 24) & 255] << 24)) ^ iArr[i17][2];
            int n17 = n((((bArr3[i18 & 255] & 255) ^ ((bArr3[(i16 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i15 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i13 >> 24) & 255] << 24));
            int i24 = i17 - 1;
            int i25 = n17 ^ iArr[i17][3];
            int n18 = n((((bArr3[n14 & 255] & 255) ^ ((bArr3[(i25 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(n16 >> 16) & 255] & 255) << 16)) ^ (bArr3[(n15 >> 24) & 255] << 24)) ^ iArr[i24][c10];
            int n19 = n((((bArr3[n15 & 255] & 255) ^ ((bArr3[(n14 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i25 >> 16) & 255] & 255) << 16)) ^ (bArr3[(n16 >> 24) & 255] << 24)) ^ iArr[i24][1];
            int n20 = n(((((bArr3[(n15 >> 8) & 255] & 255) << 8) ^ (bArr3[n16 & 255] & 255)) ^ ((bArr3[(n14 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i25 >> 24) & 255] << 24)) ^ iArr[i24][2];
            i17 -= 2;
            i18 = n((((bArr3[i25 & 255] & 255) ^ ((bArr3[(n16 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(n15 >> 16) & 255] & 255) << 16)) ^ (bArr3[(n14 >> 24) & 255] << 24)) ^ iArr[i24][3];
            i13 = n18;
            i15 = n19;
            i16 = n20;
            c10 = 0;
            i14 = 1;
        }
    }

    private void l(byte[] bArr, int i10, byte[] bArr2, int i11, int[][] iArr) {
        int r10 = org.bouncycastle.util.p.r(bArr, i10);
        int r11 = org.bouncycastle.util.p.r(bArr, i10 + 4);
        int r12 = org.bouncycastle.util.p.r(bArr, i10 + 8);
        int r13 = org.bouncycastle.util.p.r(bArr, i10 + 12);
        char c10 = 0;
        int[] iArr2 = iArr[0];
        int i12 = r10 ^ iArr2[0];
        int i13 = r11 ^ iArr2[1];
        int i14 = r12 ^ iArr2[2];
        int i15 = r13 ^ iArr2[3];
        int i16 = 1;
        for (int i17 = 1; i16 < this.f13862a - i17; i17 = 1) {
            byte[] bArr3 = f13853d;
            int o10 = o((((bArr3[i12 & 255] & 255) ^ ((bArr3[(i13 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i14 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i15 >> 24) & 255] << 24)) ^ iArr[i16][c10];
            int o11 = o((((bArr3[i13 & 255] & 255) ^ ((bArr3[(i14 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i15 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i12 >> 24) & 255] << 24)) ^ iArr[i16][i17];
            int o12 = o(((((bArr3[(i15 >> 8) & 255] & 255) << 8) ^ (bArr3[i14 & 255] & 255)) ^ ((bArr3[(i12 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i13 >> 24) & 255] << 24)) ^ iArr[i16][2];
            int o13 = o((((bArr3[i15 & 255] & 255) ^ ((bArr3[(i12 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i13 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i14 >> 24) & 255] << 24));
            int i18 = i16 + 1;
            int i19 = o13 ^ iArr[i16][3];
            int o14 = o((((bArr3[o10 & 255] & 255) ^ ((bArr3[(o11 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(o12 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i19 >> 24) & 255] << 24)) ^ iArr[i18][c10];
            int o15 = o((((bArr3[o11 & 255] & 255) ^ ((bArr3[(o12 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i19 >> 16) & 255] & 255) << 16)) ^ (bArr3[(o10 >> 24) & 255] << 24)) ^ iArr[i18][1];
            int o16 = o(((((bArr3[(i19 >> 8) & 255] & 255) << 8) ^ (bArr3[o12 & 255] & 255)) ^ ((bArr3[(o10 >> 16) & 255] & 255) << 16)) ^ (bArr3[(o11 >> 24) & 255] << 24)) ^ iArr[i18][2];
            i16 += 2;
            i15 = o((((bArr3[i19 & 255] & 255) ^ ((bArr3[(o10 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(o11 >> 16) & 255] & 255) << 16)) ^ (bArr3[(o12 >> 24) & 255] << 24)) ^ iArr[i18][3];
            i12 = o14;
            i13 = o15;
            i14 = o16;
            c10 = 0;
        }
        byte[] bArr4 = f13853d;
        int o17 = o((((bArr4[i12 & 255] & 255) ^ ((bArr4[(i13 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(i14 >> 16) & 255] & 255) << 16)) ^ (bArr4[(i15 >> 24) & 255] << 24)) ^ iArr[i16][0];
        int o18 = o((((bArr4[i13 & 255] & 255) ^ ((bArr4[(i14 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(i15 >> 16) & 255] & 255) << 16)) ^ (bArr4[(i12 >> 24) & 255] << 24)) ^ iArr[i16][1];
        int o19 = o((((bArr4[i14 & 255] & 255) ^ ((bArr4[(i15 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(i12 >> 16) & 255] & 255) << 16)) ^ (bArr4[(i13 >> 24) & 255] << 24)) ^ iArr[i16][2];
        int o20 = o((((bArr4[i15 & 255] & 255) ^ ((bArr4[(i12 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(i13 >> 16) & 255] & 255) << 16)) ^ (bArr4[(i14 >> 24) & 255] << 24)) ^ iArr[i16][3];
        int i20 = (((bArr4[o17 & 255] & 255) ^ ((bArr4[(o18 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(o19 >> 16) & 255] & 255) << 16)) ^ (bArr4[(o20 >> 24) & 255] << 24);
        int[] iArr3 = iArr[i16 + 1];
        int i21 = i20 ^ iArr3[0];
        int i22 = ((((bArr4[o18 & 255] & 255) ^ ((bArr4[(o19 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(o20 >> 16) & 255] & 255) << 16)) ^ (bArr4[(o17 >> 24) & 255] << 24)) ^ iArr3[1];
        int i23 = iArr3[2] ^ ((((bArr4[o19 & 255] & 255) ^ ((bArr4[(o20 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(o17 >> 16) & 255] & 255) << 16)) ^ (bArr4[(o18 >> 24) & 255] << 24));
        int i24 = ((((bArr4[o20 & 255] & 255) ^ ((bArr4[(o17 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(o18 >> 16) & 255] & 255) << 16)) ^ (bArr4[(o19 >> 24) & 255] << 24)) ^ iArr3[3];
        org.bouncycastle.util.p.m(i21, bArr2, i11);
        org.bouncycastle.util.p.m(i22, bArr2, i11 + 4);
        org.bouncycastle.util.p.m(i23, bArr2, i11 + 8);
        org.bouncycastle.util.p.m(i24, bArr2, i11 + 12);
    }

    private int[][] m(byte[] bArr, boolean z10) {
        int length = bArr.length;
        if (length < 16 || length > 32 || (length & 7) != 0) {
            throw new IllegalArgumentException("Key length not 128/192/256 bits.");
        }
        int i10 = length >>> 2;
        this.f13862a = i10 + 6;
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, i10 + 7, 4);
        int i11 = 8;
        char c10 = 3;
        if (i10 == 4) {
            int r10 = org.bouncycastle.util.p.r(bArr, 0);
            iArr[0][0] = r10;
            int r11 = org.bouncycastle.util.p.r(bArr, 4);
            iArr[0][1] = r11;
            int r12 = org.bouncycastle.util.p.r(bArr, 8);
            iArr[0][2] = r12;
            int r13 = org.bouncycastle.util.p.r(bArr, 12);
            iArr[0][3] = r13;
            for (int i12 = 1; i12 <= 10; i12++) {
                r10 ^= q(p(r13, 8)) ^ f13855f[i12 - 1];
                int[] iArr2 = iArr[i12];
                iArr2[0] = r10;
                r11 ^= r10;
                iArr2[1] = r11;
                r12 ^= r11;
                iArr2[2] = r12;
                r13 ^= r12;
                iArr2[3] = r13;
            }
        } else if (i10 == 6) {
            int r14 = org.bouncycastle.util.p.r(bArr, 0);
            iArr[0][0] = r14;
            int r15 = org.bouncycastle.util.p.r(bArr, 4);
            iArr[0][1] = r15;
            int r16 = org.bouncycastle.util.p.r(bArr, 8);
            iArr[0][2] = r16;
            int r17 = org.bouncycastle.util.p.r(bArr, 12);
            iArr[0][3] = r17;
            int r18 = org.bouncycastle.util.p.r(bArr, 16);
            int r19 = org.bouncycastle.util.p.r(bArr, 20);
            int i13 = 1;
            int i14 = 1;
            while (true) {
                int[] iArr3 = iArr[i13];
                iArr3[0] = r18;
                iArr3[1] = r19;
                int q10 = r14 ^ (q(p(r19, 8)) ^ i14);
                int[] iArr4 = iArr[i13];
                iArr4[2] = q10;
                int i15 = r15 ^ q10;
                iArr4[3] = i15;
                int i16 = r16 ^ i15;
                int[] iArr5 = iArr[i13 + 1];
                iArr5[0] = i16;
                int i17 = r17 ^ i16;
                iArr5[1] = i17;
                int i18 = r18 ^ i17;
                iArr5[2] = i18;
                int i19 = r19 ^ i18;
                iArr5[3] = i19;
                int q11 = q(p(i19, 8)) ^ (i14 << 1);
                i14 <<= 2;
                r14 = q10 ^ q11;
                int[] iArr6 = iArr[i13 + 2];
                iArr6[0] = r14;
                r15 = i15 ^ r14;
                iArr6[1] = r15;
                r16 = i16 ^ r15;
                iArr6[2] = r16;
                r17 = i17 ^ r16;
                iArr6[3] = r17;
                i13 += 3;
                if (i13 >= 13) {
                    break;
                }
                r18 = i18 ^ r17;
                r19 = i19 ^ r18;
            }
        } else {
            if (i10 != 8) {
                throw new IllegalStateException("Should never get here");
            }
            int r20 = org.bouncycastle.util.p.r(bArr, 0);
            iArr[0][0] = r20;
            int r21 = org.bouncycastle.util.p.r(bArr, 4);
            iArr[0][1] = r21;
            int r22 = org.bouncycastle.util.p.r(bArr, 8);
            iArr[0][2] = r22;
            int r23 = org.bouncycastle.util.p.r(bArr, 12);
            iArr[0][3] = r23;
            int r24 = org.bouncycastle.util.p.r(bArr, 16);
            iArr[1][0] = r24;
            int r25 = org.bouncycastle.util.p.r(bArr, 20);
            iArr[1][1] = r25;
            int r26 = org.bouncycastle.util.p.r(bArr, 24);
            iArr[1][2] = r26;
            int r27 = org.bouncycastle.util.p.r(bArr, 28);
            iArr[1][3] = r27;
            int i20 = 2;
            int i21 = 1;
            while (true) {
                int q12 = q(p(r27, i11)) ^ i21;
                i21 <<= 1;
                r20 ^= q12;
                int[] iArr7 = iArr[i20];
                iArr7[0] = r20;
                r21 ^= r20;
                iArr7[1] = r21;
                r22 ^= r21;
                iArr7[2] = r22;
                r23 ^= r22;
                iArr7[c10] = r23;
                int i22 = i20 + 1;
                if (i22 >= 15) {
                    break;
                }
                r24 ^= q(r23);
                int[] iArr8 = iArr[i22];
                iArr8[0] = r24;
                r25 ^= r24;
                iArr8[1] = r25;
                r26 ^= r25;
                iArr8[2] = r26;
                r27 ^= r26;
                iArr8[3] = r27;
                i20 += 2;
                i11 = 8;
                c10 = 3;
            }
        }
        if (!z10) {
            for (int i23 = 1; i23 < this.f13862a; i23++) {
                for (int i24 = 0; i24 < 4; i24++) {
                    int[] iArr9 = iArr[i23];
                    iArr9[i24] = n(iArr9[i24]);
                }
            }
        }
        return iArr;
    }

    private static int n(int i10) {
        int p10 = p(i10, 8) ^ i10;
        int f10 = i10 ^ f(p10);
        int i11 = p10 ^ i(f10);
        return f10 ^ (i11 ^ p(i11, 16));
    }

    public static int o(int i10) {
        int p10 = p(i10, 8);
        int i11 = i10 ^ p10;
        return f(i11) ^ (p10 ^ p(i11, 16));
    }

    private static int p(int i10, int i11) {
        return (i10 << (-i11)) | (i10 >>> i11);
    }

    private static int q(int i10) {
        byte[] bArr = f13853d;
        return (bArr[(i10 >> 24) & 255] << 24) | (bArr[i10 & 255] & 255) | ((bArr[(i10 >> 8) & 255] & 255) << 8) | ((bArr[(i10 >> 16) & 255] & 255) << 16);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (interfaceC2379k instanceof C3360o0) {
            this.f13863b = m(((C3360o0) interfaceC2379k).b(), z10);
            this.f13864c = z10;
            Bi.r.a(new Hi.c(b(), j(), interfaceC2379k, x0.a(z10)));
        } else {
            throw new IllegalArgumentException("invalid parameter passed to AES init - " + interfaceC2379k.getClass().getName());
        }
    }

    @Override
    public String b() {
        return KeyProperties.KEY_ALGORITHM_AES;
    }

    @Override
    public int c() {
        return 16;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int[][] iArr = this.f13863b;
        if (iArr == null) {
            throw new IllegalStateException("AES engine not initialised");
        }
        if (i10 > bArr.length - 16) {
            throw new DataLengthException("input buffer too short");
        }
        if (i11 > bArr2.length - 16) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.f13864c) {
            l(bArr, i10, bArr2, i11, iArr);
        } else {
            k(bArr, i10, bArr2, i11, iArr);
        }
        return 16;
    }

    @Override
    public void reset() {
    }
}
