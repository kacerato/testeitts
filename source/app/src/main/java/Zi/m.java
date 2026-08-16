package Zi;

import Ti.t;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class m implements h {

    public byte f31358a = 0;

    public byte[] f31359b = {Opcodes.OPC_new, Opcodes.OPC_aload_2, Opcodes.OPC_fadd, Byte.MAX_VALUE, Opcodes.OPC_putfield, Opcodes.OPC_tableswitch, -44, 13, Opcodes.OPC_lor, -2, Opcodes.OPC_getstatic, Opcodes.OPC_ixor, -53, Opcodes.OPC_if_icmpne, Opcodes.OPC_if_icmplt, 8, 24, 113, Opcodes.OPC_sastore, -24, Opcodes.OPC_dstore_2, 2, 16, Opcodes.OPC_wide, -34, Opcodes.OPC_saload, Opcodes.OPC_if_acmpeq, -20, Byte.MIN_VALUE, 18, Opcodes.OPC_invokestatic, 105, -38, Opcodes.OPC_laload, Opcodes.OPC_lneg, -52, Opcodes.OPC_if_icmpge, 9, 54, 3, Opcodes.OPC_ladd, Opcodes.OPC_aload_3, -3, -32, -35, 5, Opcodes.OPC_fstore_0, Opcodes.OPC_d2f, Opcodes.OPC_lreturn, Opcodes.OPC_goto_w, t.f25309s, Opcodes.OPC_dreturn, Opcodes.OPC_pop, Opcodes.OPC_iflt, Opcodes.OPC_astore_1, -40, Opcodes.OPC_fastore, Opcodes.OPC_freturn, 80, Opcodes.OPC_i2l, 60, 10, -28, -13, Opcodes.OPC_ifge, 38, Opcodes.OPC_fload_1, Opcodes.OPC_aastore, Opcodes.OPC_jsr_w, Opcodes.OPC_lxor, Opcodes.OPC_dcmpl, 70, Opcodes.OPC_return, Opcodes.OPC_ifeq, 100, Opcodes.OPC_daload, Opcodes.OPC_dneg, -43, 29, -42, 120, Opcodes.OPC_anewarray, Opcodes.OPC_dup2_x2, Opcodes.OPC_areturn, Opcodes.OPC_l2d, 34, Opcodes.OPC_fstore, -8, Opcodes.OPC_imul, Opcodes.OPC_aload_1, 42, Opcodes.OPC_multianewarray, -45, -9, -68, 111, -33, 4, -27, Opcodes.OPC_fcmpl, 62, Opcodes.OPC_fload_3, Opcodes.OPC_i2f, Opcodes.OPC_if_acmpne, 11, Opcodes.OPC_d2l, -15, Opcodes.OPC_fload_2, 14, -41, 64, Opcodes.OPC_putstatic, -49, Opcodes.OPC_iand, 6, 21, Opcodes.OPC_ifne, Opcodes.OPC_astore_2, 28, Opcodes.OPC_if_icmpgt, -37, 50, Opcodes.OPC_i2c, Opcodes.OPC_pop2, 17, Opcodes.OPC_dload_1, -12, Opcodes.OPC_dup, -48, Opcodes.OPC_astore_3, 106, 23, 91, Opcodes.OPC_ireturn, -1, 7, Opcodes.OPC_checkcast, 101, 121, -4, Opcodes.OPC_ifnonnull, -51, Opcodes.OPC_fneg, Opcodes.OPC_lstore_3, Opcodes.OPC_dup2_x1, -25, Opcodes.OPC_astore, 52, 122, 48, 40, 15, Opcodes.OPC_drem, 1, -7, -47, -46, 25, -23, Opcodes.OPC_i2b, Opcodes.OPC_invokeinterface, 90, -19, Opcodes.OPC_lstore_2, Opcodes.OPC_ldiv, Opcodes.OPC_getfield, Opcodes.OPC_monitorexit, Opcodes.OPC_ifle, Opcodes.OPC_athrow, Opcodes.OPC_dadd, -6, 31, 51, 96, 71, Opcodes.OPC_l2f, -16, Opcodes.OPC_fcmpg, 26, Opcodes.OPC_swap, Opcodes.OPC_i2s, 61, Opcodes.OPC_lstore, Opcodes.OPC_astore_0, -39, Opcodes.OPC_jsr, Opcodes.OPC_instanceof, 27, -10, Opcodes.OPC_dstore, Opcodes.OPC_f2i, Opcodes.OPC_invokespecial, 12, 32, -50, Opcodes.OPC_l2i, 110, Opcodes.OPC_invokevirtual, Opcodes.OPC_ineg, Opcodes.OPC_d2i, Opcodes.OPC_f2d, 22, 41, -14, Opcodes.OPC_i2d, -11, -21, 112, -29, -5, Opcodes.OPC_castore, Opcodes.OPC_if_icmpeq, Opcodes.OPC_ifnull, Opcodes.OPC_fstore_1, Opcodes.OPC_dstore_3, Opcodes.OPC_fstore_2, Opcodes.OPC_lushr, -30, 107, 92, Opcodes.OPC_idiv, 102, Opcodes.OPC_ret, Opcodes.OPC_f2l, -18, Opcodes.OPC_iinc, 19, Opcodes.OPC_goto, 30, Opcodes.OPC_ifgt, -36, Opcodes.OPC_dsub, 72, Opcodes.OPC_invokedynamic, Opcodes.OPC_iaload, -26, Opcodes.OPC_if_icmple, Opcodes.OPC_lookupswitch, Opcodes.OPC_iushr, Opcodes.OPC_lcmp, 0, 33, -17, -22, Opcodes.OPC_arraylength, -54, Opcodes.OPC_frem, Opcodes.OPC_iastore, Opcodes.OPC_dastore, Opcodes.OPC_dcmpg, Opcodes.OPC_lstore_0, Opcodes.OPC_monitorenter, 20, 123, Opcodes.OPC_istore_0, Opcodes.OPC_bastore};

    public byte f31360c = Opcodes.OPC_arraylength;

    @Override
    public void a(byte[] bArr, int i10, int i11) {
        synchronized (this.f31359b) {
            int i12 = i11 + i10;
            while (i10 != i12) {
                try {
                    byte[] bArr2 = this.f31359b;
                    byte b10 = this.f31360c;
                    byte b11 = this.f31358a;
                    byte b12 = bArr2[(b10 + bArr2[b11 & 255]) & 255];
                    this.f31360c = b12;
                    bArr[i10] = bArr2[(bArr2[bArr2[b12 & 255] & 255] + 1) & 255];
                    byte b13 = bArr2[b11 & 255];
                    bArr2[b11 & 255] = bArr2[b12 & 255];
                    bArr2[b12 & 255] = b13;
                    this.f31358a = (byte) ((b11 + 1) & 255);
                    i10++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override
    public void b(long j10) {
        c(org.bouncycastle.util.p.H(j10));
    }

    @Override
    public void c(byte[] bArr) {
        for (byte b10 : bArr) {
            byte[] bArr2 = this.f31359b;
            byte b11 = this.f31360c;
            byte b12 = this.f31358a;
            byte b13 = bArr2[(b11 + bArr2[b12 & 255] + b10) & 255];
            this.f31360c = b13;
            byte b14 = bArr2[b12 & 255];
            bArr2[b12 & 255] = bArr2[b13 & 255];
            bArr2[b13 & 255] = b14;
            this.f31358a = (byte) ((b12 + 1) & 255);
        }
    }

    @Override
    public void nextBytes(byte[] bArr) {
        a(bArr, 0, bArr.length);
    }
}
