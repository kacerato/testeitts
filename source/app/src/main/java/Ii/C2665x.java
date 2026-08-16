package Ii;

import Bi.EnumC2383o;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class C2665x implements Bi.D, org.bouncycastle.util.n {

    public static final int f9992h = 16;

    public static final byte[] f9993i = {41, Opcodes.OPC_iaload, Opcodes.OPC_fstore_0, Opcodes.OPC_jsr_w, Opcodes.OPC_if_icmpge, -40, Opcodes.OPC_iushr, 1, 61, 54, Opcodes.OPC_bastore, Opcodes.OPC_if_icmplt, -20, -16, 6, 19, Opcodes.OPC_fadd, Opcodes.OPC_goto, 5, -13, Opcodes.OPC_checkcast, Opcodes.OPC_ifnonnull, Opcodes.OPC_drem, Opcodes.OPC_f2l, Opcodes.OPC_dcmpg, Opcodes.OPC_i2s, Opcodes.OPC_aload_1, -39, -68, Opcodes.OPC_astore_1, Opcodes.OPC_ixor, -54, 30, Opcodes.OPC_iflt, Opcodes.OPC_pop, 60, -3, -44, -32, 22, Opcodes.OPC_dsub, Opcodes.OPC_lstore_3, 111, 24, Opcodes.OPC_l2d, 23, -27, 18, Opcodes.OPC_arraylength, Opcodes.OPC_astore_3, Opcodes.OPC_wide, -42, -38, Opcodes.OPC_ifle, -34, Opcodes.OPC_dstore_2, Opcodes.OPC_if_icmpne, -5, -11, Opcodes.OPC_d2i, Opcodes.OPC_new, Opcodes.OPC_laload, -18, 122, Opcodes.OPC_ret, Opcodes.OPC_imul, 121, Opcodes.OPC_i2b, 21, Opcodes.OPC_getstatic, 7, Opcodes.OPC_lstore_0, Opcodes.OPC_lcmp, Opcodes.OPC_monitorenter, 16, Opcodes.OPC_l2f, 11, 34, Opcodes.OPC_swap, 33, Byte.MIN_VALUE, Byte.MAX_VALUE, Opcodes.OPC_dup2_x1, Opcodes.OPC_ifne, 90, Opcodes.OPC_d2f, 50, Opcodes.OPC_dload_1, Opcodes.OPC_saload, 62, -52, -25, Opcodes.OPC_athrow, -9, Opcodes.OPC_dcmpl, 3, -1, 25, 48, Opcodes.OPC_putstatic, 72, Opcodes.OPC_if_acmpeq, Opcodes.OPC_putfield, -47, -41, Opcodes.OPC_dup2_x2, Opcodes.OPC_i2c, 42, Opcodes.OPC_ireturn, Opcodes.OPC_sastore, Opcodes.OPC_tableswitch, Opcodes.OPC_ifnull, Opcodes.OPC_iastore, Opcodes.OPC_invokestatic, Opcodes.OPC_fstore, -46, Opcodes.OPC_fcmpg, Opcodes.OPC_if_icmple, Opcodes.OPC_lushr, Opcodes.OPC_invokevirtual, Opcodes.OPC_fneg, -4, 107, -30, Opcodes.OPC_ifge, Opcodes.OPC_ineg, 4, -15, Opcodes.OPC_fstore_2, Opcodes.OPC_ifgt, 112, Opcodes.OPC_dup, 100, 113, Opcodes.OPC_i2d, 32, Opcodes.OPC_i2f, 91, -49, 101, -26, Opcodes.OPC_aload_3, Opcodes.OPC_jsr, 2, 27, 96, Opcodes.OPC_fload_3, Opcodes.OPC_lreturn, Opcodes.OPC_freturn, Opcodes.OPC_areturn, Opcodes.OPC_invokeinterface, -10, 28, 70, Opcodes.OPC_ladd, 105, 52, 64, Opcodes.OPC_iand, 15, Opcodes.OPC_castore, 71, Opcodes.OPC_if_icmpgt, Opcodes.OPC_fload_1, -35, Opcodes.OPC_fastore, Opcodes.OPC_dreturn, Opcodes.OPC_astore, Opcodes.OPC_monitorexit, 92, -7, -50, Opcodes.OPC_invokedynamic, Opcodes.OPC_multianewarray, -22, 38, Opcodes.OPC_aload_2, Opcodes.OPC_aastore, 13, 110, Opcodes.OPC_i2l, 40, Opcodes.OPC_iinc, 9, -45, -33, -51, -12, Opcodes.OPC_lstore_2, Opcodes.OPC_lor, Opcodes.OPC_astore_2, Opcodes.OPC_dastore, 106, -36, Opcodes.OPC_lstore, Opcodes.OPC_goto_w, Opcodes.OPC_idiv, Opcodes.OPC_instanceof, Opcodes.OPC_lookupswitch, -6, Opcodes.OPC_fload_2, Ti.t.f25309s, 123, 8, 12, Opcodes.OPC_anewarray, Opcodes.OPC_return, Opcodes.OPC_dstore_3, 120, Opcodes.OPC_l2i, Opcodes.OPC_fcmpl, Opcodes.OPC_f2i, -29, Opcodes.OPC_dadd, -24, Opcodes.OPC_ldiv, -23, -53, -43, -2, Opcodes.OPC_istore_0, 0, 29, Opcodes.OPC_dstore, -14, -17, Opcodes.OPC_invokespecial, 14, 102, Opcodes.OPC_pop2, -48, -28, Opcodes.OPC_if_acmpne, Opcodes.OPC_dneg, Opcodes.OPC_frem, -8, -21, Opcodes.OPC_lneg, Opcodes.OPC_astore_0, 10, Opcodes.OPC_daload, Opcodes.OPC_fstore_1, 80, Opcodes.OPC_getfield, Opcodes.OPC_d2l, -19, 31, 26, -37, Opcodes.OPC_ifeq, Opcodes.OPC_f2d, 51, Opcodes.OPC_if_icmpeq, 17, Opcodes.OPC_lxor, 20};

    public final EnumC2383o f9994a;

    public byte[] f9995b;

    public int f9996c;

    public byte[] f9997d;

    public int f9998e;

    public byte[] f9999f;

    public int f10000g;

    public C2665x() {
        this(EnumC2383o.ANY);
    }

    public final void a(C2665x c2665x) {
        byte[] bArr = c2665x.f9995b;
        System.arraycopy(bArr, 0, this.f9995b, 0, bArr.length);
        this.f9996c = c2665x.f9996c;
        byte[] bArr2 = c2665x.f9997d;
        System.arraycopy(bArr2, 0, this.f9997d, 0, bArr2.length);
        this.f9998e = c2665x.f9998e;
        byte[] bArr3 = c2665x.f9999f;
        System.arraycopy(bArr3, 0, this.f9999f, 0, bArr3.length);
        this.f10000g = c2665x.f10000g;
    }

    @Override
    public String b() {
        return "MD2";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        int length = this.f9997d.length;
        int i11 = this.f9998e;
        byte b10 = (byte) (length - i11);
        while (true) {
            byte[] bArr2 = this.f9997d;
            if (i11 >= bArr2.length) {
                k(bArr2);
                d(this.f9997d);
                d(this.f9999f);
                System.arraycopy(this.f9995b, this.f9996c, bArr, i10, 16);
                reset();
                return 16;
            }
            bArr2[i11] = b10;
            i11++;
        }
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new C2665x(this);
    }

    public void d(byte[] bArr) {
        for (int i10 = 0; i10 < 16; i10++) {
            byte[] bArr2 = this.f9995b;
            bArr2[i10 + 16] = bArr[i10];
            bArr2[i10 + 32] = (byte) (bArr[i10] ^ bArr2[i10]);
        }
        int i11 = 0;
        for (int i12 = 0; i12 < 18; i12++) {
            for (int i13 = 0; i13 < 48; i13++) {
                byte[] bArr3 = this.f9995b;
                byte b10 = (byte) (f9993i[i11] ^ bArr3[i13]);
                bArr3[i13] = b10;
                i11 = b10 & 255;
            }
            i11 = (i11 + i12) % 256;
        }
    }

    @Override
    public int f() {
        return 16;
    }

    @Override
    public int i() {
        return 16;
    }

    @Override
    public void j(org.bouncycastle.util.n nVar) {
        a((C2665x) nVar);
    }

    public void k(byte[] bArr) {
        byte b10 = this.f9999f[15];
        for (int i10 = 0; i10 < 16; i10++) {
            byte[] bArr2 = this.f9999f;
            b10 = (byte) (f9993i[(b10 ^ bArr[i10]) & 255] ^ bArr2[i10]);
            bArr2[i10] = b10;
        }
    }

    @Override
    public void reset() {
        this.f9996c = 0;
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f9995b;
            if (i10 == bArr.length) {
                break;
            }
            bArr[i10] = 0;
            i10++;
        }
        this.f9998e = 0;
        int i11 = 0;
        while (true) {
            byte[] bArr2 = this.f9997d;
            if (i11 == bArr2.length) {
                break;
            }
            bArr2[i11] = 0;
            i11++;
        }
        this.f10000g = 0;
        int i12 = 0;
        while (true) {
            byte[] bArr3 = this.f9999f;
            if (i12 == bArr3.length) {
                return;
            }
            bArr3[i12] = 0;
            i12++;
        }
    }

    @Override
    public void update(byte b10) {
        byte[] bArr = this.f9997d;
        int i10 = this.f9998e;
        int i11 = i10 + 1;
        this.f9998e = i11;
        bArr[i10] = b10;
        if (i11 == 16) {
            k(bArr);
            d(this.f9997d);
            this.f9998e = 0;
        }
    }

    public C2665x(EnumC2383o enumC2383o) {
        this.f9995b = new byte[48];
        this.f9997d = new byte[16];
        this.f9999f = new byte[16];
        this.f9994a = enumC2383o;
        Bi.r.a(Z.a(this, 64, enumC2383o));
        reset();
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        while (this.f9998e != 0 && i11 > 0) {
            update(bArr[i10]);
            i10++;
            i11--;
        }
        while (i11 >= 16) {
            System.arraycopy(bArr, i10, this.f9997d, 0, 16);
            k(this.f9997d);
            d(this.f9997d);
            i11 -= 16;
            i10 += 16;
        }
        while (i11 > 0) {
            update(bArr[i10]);
            i10++;
            i11--;
        }
    }

    public C2665x(C2665x c2665x) {
        this.f9995b = new byte[48];
        this.f9997d = new byte[16];
        this.f9999f = new byte[16];
        EnumC2383o enumC2383o = c2665x.f9994a;
        this.f9994a = enumC2383o;
        Bi.r.a(Z.a(this, 64, enumC2383o));
        a(c2665x);
    }
}
