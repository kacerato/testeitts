package Li;

import Bi.InterfaceC2379k;
import Ti.InterfaceC3091b;
import Xi.C3360o0;
import java.io.ByteArrayOutputStream;
import java.util.Arrays;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class A implements InterfaceC3091b {

    public int f13462A;

    public byte[] f13463B;

    public final byte[] f13464C;

    public final byte[] f13465D;

    public boolean f13469a;

    public final String f13470b;

    public final b f13471c;

    public final int f13472d;

    public int f13473e;

    public int f13474f;

    public final int f13475g;

    public byte f13476h;

    public byte[] f13477i;

    public byte[] f13478j;

    public byte[] f13479k;

    public final byte f13482n;

    public boolean f13483o;

    public int f13484p;

    public byte[] f13485q;

    public int f13486r;

    public int f13487s;

    public final byte[] f13488t;

    public byte[] f13489u;

    public byte[] f13490v;

    public byte[] f13491w;

    public final byte[] f13492x;

    public final byte f13480l = 16;

    public final byte f13481m = 12;

    public c f13493y = c.Uninitialized;

    public final ByteArrayOutputStream f13494z = new ByteArrayOutputStream();

    public final byte[] f13466E = {-18, -19, -21, -32, -30, Ti.t.f25309s, -28, -17, -25, -22, -24, -27, -23, -20, -29, -26, -34, -35, -37, -48, -46, -47, -44, -33, -41, -38, -40, -43, -39, -36, -45, -42, Opcodes.OPC_arraylength, Opcodes.OPC_anewarray, Opcodes.OPC_new, Opcodes.OPC_areturn, Opcodes.OPC_getstatic, Opcodes.OPC_return, Opcodes.OPC_getfield, Opcodes.OPC_athrow, Opcodes.OPC_invokespecial, Opcodes.OPC_invokedynamic, Opcodes.OPC_invokestatic, Opcodes.OPC_putfield, Opcodes.OPC_invokeinterface, -68, Opcodes.OPC_putstatic, Opcodes.OPC_invokevirtual, 14, 13, 11, 0, 2, 1, 4, 15, 7, 10, 8, 5, 9, 12, 3, 6, Opcodes.OPC_iaload, Opcodes.OPC_aload_3, Opcodes.OPC_aload_1, 32, 34, 33, Opcodes.OPC_fload_2, Opcodes.OPC_laload, Opcodes.OPC_dload_1, 42, 40, Opcodes.OPC_fload_3, 41, Opcodes.OPC_aload_2, Opcodes.OPC_fload_1, 38, 30, 29, 27, 16, 18, 17, 20, 31, 23, 26, 24, 21, 25, 28, 19, 22, Opcodes.OPC_astore_3, Opcodes.OPC_astore_2, Opcodes.OPC_astore_0, 64, Opcodes.OPC_lstore_3, Opcodes.OPC_lstore_2, Opcodes.OPC_fstore_1, Opcodes.OPC_iastore, 71, Opcodes.OPC_dstore_3, 72, Opcodes.OPC_fstore_2, Opcodes.OPC_dstore_2, Opcodes.OPC_astore_1, Opcodes.OPC_fstore_0, 70, -2, -3, -5, -16, -14, -15, -12, -1, -9, -6, -8, -11, -7, -4, -13, -10, Opcodes.OPC_iand, Opcodes.OPC_lushr, 123, 112, Opcodes.OPC_frem, 113, Opcodes.OPC_ineg, Byte.MAX_VALUE, Opcodes.OPC_dneg, 122, 120, Opcodes.OPC_lneg, 121, Opcodes.OPC_iushr, Opcodes.OPC_drem, Opcodes.OPC_fneg, Opcodes.OPC_freturn, Opcodes.OPC_lreturn, Opcodes.OPC_lookupswitch, Opcodes.OPC_if_icmpne, Opcodes.OPC_if_icmpge, Opcodes.OPC_if_icmplt, Opcodes.OPC_if_icmple, Opcodes.OPC_dreturn, Opcodes.OPC_goto, Opcodes.OPC_tableswitch, Opcodes.OPC_jsr, Opcodes.OPC_if_acmpeq, Opcodes.OPC_ret, Opcodes.OPC_ireturn, Opcodes.OPC_if_icmpgt, Opcodes.OPC_if_acmpne, Opcodes.OPC_d2i, Opcodes.OPC_f2d, Opcodes.OPC_f2i, Byte.MIN_VALUE, Opcodes.OPC_ixor, Opcodes.OPC_lor, Opcodes.OPC_iinc, Opcodes.OPC_d2l, Opcodes.OPC_i2d, Opcodes.OPC_l2d, Opcodes.OPC_l2i, Opcodes.OPC_i2l, Opcodes.OPC_l2f, Opcodes.OPC_f2l, Opcodes.OPC_lxor, Opcodes.OPC_i2f, Opcodes.OPC_dup2_x2, Opcodes.OPC_dup2_x1, 91, 80, Opcodes.OPC_dastore, Opcodes.OPC_fastore, Opcodes.OPC_bastore, Opcodes.OPC_swap, Opcodes.OPC_pop, 90, Opcodes.OPC_pop2, Opcodes.OPC_castore, Opcodes.OPC_dup, 92, Opcodes.OPC_aastore, Opcodes.OPC_sastore, Opcodes.OPC_ifle, Opcodes.OPC_ifgt, Opcodes.OPC_iflt, Opcodes.OPC_d2f, Opcodes.OPC_i2c, Opcodes.OPC_i2b, Opcodes.OPC_lcmp, Opcodes.OPC_if_icmpeq, Opcodes.OPC_dcmpl, Opcodes.OPC_ifne, Opcodes.OPC_dcmpg, Opcodes.OPC_fcmpl, Opcodes.OPC_ifeq, Opcodes.OPC_ifge, Opcodes.OPC_i2s, Opcodes.OPC_fcmpg, -50, -51, -53, Opcodes.OPC_checkcast, Opcodes.OPC_monitorenter, Opcodes.OPC_instanceof, Opcodes.OPC_wide, -49, Opcodes.OPC_ifnonnull, -54, Opcodes.OPC_goto_w, Opcodes.OPC_multianewarray, Opcodes.OPC_jsr_w, -52, Opcodes.OPC_monitorexit, Opcodes.OPC_ifnull, 62, 61, Opcodes.OPC_istore_0, 48, 50, Opcodes.OPC_daload, 52, Opcodes.OPC_lstore_0, Opcodes.OPC_lstore, Opcodes.OPC_astore, Opcodes.OPC_fstore, Opcodes.OPC_saload, Opcodes.OPC_dstore, 60, 51, 54, 110, Opcodes.OPC_ldiv, 107, 96, Opcodes.OPC_fadd, Opcodes.OPC_ladd, 100, 111, Opcodes.OPC_dsub, 106, Opcodes.OPC_imul, 101, 105, Opcodes.OPC_idiv, Opcodes.OPC_dadd, 102};

    public final byte[] f13467F = {1, Opcodes.OPC_ixor, Opcodes.OPC_l2d, 0, Opcodes.OPC_f2i, 1, Opcodes.OPC_lor, 9, Opcodes.OPC_l2d, Opcodes.OPC_l2i, 9, 10, Opcodes.OPC_f2i, Opcodes.OPC_f2i, Opcodes.OPC_l2f, 3, 2, Byte.MIN_VALUE};

    public final int[] f13468G = {0, 1, 6, 4, 3, 4, 4, 6, 7, 4, 3, 2, 3, 1, 7, 1, 5, 7, 5, 0, 2, 2, 5, 0, 6};

    public static class a {

        public static final int[] f13495a;

        public static final int[] f13496b;

        static {
            int[] iArr = new int[c.values().length];
            f13496b = iArr;
            try {
                iArr[c.EncInit.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13496b[c.DecInit.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13496b[c.Uninitialized.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13496b[c.DecFinal.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13496b[c.EncFinal.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f13496b[c.EncAad.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f13496b[c.EncData.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f13496b[c.DecData.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f13496b[c.DecAad.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr2 = new int[b.values().length];
            f13495a = iArr2;
            try {
                iArr2[b.elephant160.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f13495a[b.elephant176.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f13495a[b.elephant200.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public enum b {
        elephant160,
        elephant176,
        elephant200
    }

    public enum c {
        Uninitialized,
        EncInit,
        EncAad,
        EncData,
        EncFinal,
        DecInit,
        DecAad,
        DecData,
        DecFinal
    }

    public A(b bVar) {
        String str;
        int i10 = a.f13495a[bVar.ordinal()];
        if (i10 == 1) {
            this.f13472d = 20;
            this.f13473e = 160;
            this.f13474f = 20;
            this.f13475g = 80;
            this.f13476h = Opcodes.OPC_lneg;
            this.f13482n = (byte) 8;
            str = "Elephant 160 AEAD";
        } else if (i10 == 2) {
            this.f13472d = 22;
            this.f13473e = 176;
            this.f13474f = 22;
            this.f13475g = 90;
            this.f13476h = Opcodes.OPC_fstore_2;
            this.f13482n = (byte) 8;
            str = "Elephant 176 AEAD";
        } else {
            if (i10 != 3) {
                throw new IllegalArgumentException("Invalid parameter settings for Elephant");
            }
            this.f13472d = 25;
            this.f13475g = 18;
            this.f13482n = (byte) 16;
            str = "Elephant 200 AEAD";
        }
        this.f13470b = str;
        this.f13471c = bVar;
        int i11 = this.f13472d;
        this.f13488t = new byte[i11];
        this.f13489u = new byte[i11];
        this.f13490v = new byte[i11];
        this.f13491w = new byte[i11];
        this.f13492x = new byte[i11];
        this.f13464C = new byte[i11];
        this.f13465D = new byte[i11];
        this.f13483o = false;
        x(false);
    }

    private void x(boolean z10) {
        if (z10) {
            this.f13477i = null;
        }
        this.f13494z.reset();
        Arrays.fill(this.f13488t, (byte) 0);
        this.f13462A = 0;
        this.f13484p = 0;
        this.f13486r = -1;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        this.f13469a = z10;
        if (!(interfaceC2379k instanceof Xi.w0)) {
            throw new IllegalArgumentException(this.f13470b + " init parameters must include an IV");
        }
        Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
        byte[] a10 = w0Var.a();
        this.f13478j = a10;
        if (a10 == null || a10.length != 12) {
            throw new IllegalArgumentException(this.f13470b + " requires exactly 12 bytes of IV");
        }
        if (!(w0Var.b() instanceof C3360o0)) {
            throw new IllegalArgumentException(this.f13470b + " init parameters must include a key");
        }
        byte[] b10 = ((C3360o0) w0Var.b()).b();
        if (b10.length != 16) {
            throw new IllegalArgumentException(this.f13470b + " key must be 128 bits long");
        }
        byte[] bArr = new byte[this.f13472d];
        this.f13479k = bArr;
        System.arraycopy(b10, 0, bArr, 0, 16);
        u(this.f13479k);
        Bi.r.a(new Hi.c(b(), 128, interfaceC2379k, x0.a(z10)));
        this.f13483o = true;
        this.f13493y = z10 ? c.EncInit : c.DecInit;
        this.f13463B = new byte[this.f13472d + (z10 ? (byte) 0 : this.f13482n)];
        x(false);
    }

    @Override
    public String b() {
        return this.f13470b;
    }

    @Override
    public int c(byte[] bArr, int i10) throws IllegalStateException, InvalidCipherTextException {
        if (!this.f13483o) {
            throw new IllegalArgumentException(this.f13470b + " needs call init function before doFinal");
        }
        int i11 = this.f13462A;
        boolean z10 = this.f13469a;
        if ((z10 && i11 + i10 + this.f13482n > bArr.length) || (!z10 && (i11 + i10) - this.f13482n > bArr.length)) {
            throw new OutputLengthException("output buffer is too short");
        }
        byte[] byteArray = this.f13494z.toByteArray();
        int i12 = a.f13496b[this.f13493y.ordinal()];
        if (i12 == 1 || i12 == 2) {
            v(this.f13488t);
        }
        int i13 = this.f13484p;
        int i14 = this.f13472d;
        int i15 = (i11 + (i13 * i14)) - (this.f13469a ? (byte) 0 : this.f13482n);
        int length = byteArray.length;
        int i16 = i15 / i14;
        int i17 = i16 + 1;
        int i18 = (length + 12) / i14;
        int w10 = w(this.f13463B, bArr, i10, Math.max(i16 + 2, i18), i15 % i14 != 0 ? i17 : i16, i17, i15, i18 + 1) + i10;
        this.f13477i = new byte[this.f13482n];
        z(this.f13488t, this.f13479k, 0, this.f13472d);
        u(this.f13488t);
        z(this.f13488t, this.f13479k, 0, this.f13472d);
        if (this.f13469a) {
            System.arraycopy(this.f13488t, 0, this.f13477i, 0, this.f13482n);
            byte[] bArr2 = this.f13477i;
            System.arraycopy(bArr2, 0, bArr, w10, bArr2.length);
            i15 += this.f13482n;
        } else {
            this.f13462A -= this.f13482n;
            for (int i19 = 0; i19 < this.f13482n; i19++) {
                if (this.f13488t[i19] != this.f13463B[this.f13462A + i19]) {
                    throw new IllegalArgumentException("Mac does not match");
                }
            }
        }
        x(false);
        return i15;
    }

    @Override
    public byte[] e() {
        return this.f13477i;
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        byte[] byteArray = this.f13494z.toByteArray();
        int i13 = this.f13462A;
        if ((i13 + i11) - (this.f13469a ? (byte) 0 : this.f13482n) < this.f13472d) {
            System.arraycopy(bArr, i10, this.f13463B, i13, i11);
            this.f13462A += i11;
            return 0;
        }
        int i14 = a.f13496b[this.f13493y.ordinal()];
        if (i14 == 1 || i14 == 2) {
            v(this.f13488t);
        }
        int i15 = (this.f13462A + i11) - (this.f13469a ? (byte) 0 : this.f13482n);
        int length = byteArray.length;
        int i16 = this.f13472d;
        int i17 = i15 / i16;
        int i18 = (i15 % i16 != 0 ? i17 : i17 - 1) + 1;
        int i19 = ((length + 12) / i16) + 1;
        int max = Math.max(i17, 1) * this.f13472d;
        byte[] bArr3 = new byte[max];
        System.arraycopy(this.f13463B, 0, bArr3, 0, this.f13462A);
        int i20 = this.f13462A;
        int i21 = max - i20;
        System.arraycopy(bArr, i10, bArr3, i20, max - i20);
        w(bArr3, bArr2, i12, i17, i18, i17, i15, i19);
        int i22 = i11 - i21;
        this.f13462A = i22;
        System.arraycopy(bArr, i10 + i21, this.f13463B, 0, i22);
        this.f13484p += i17;
        return i17 * this.f13472d;
    }

    @Override
    public int g(int i10) {
        int i11 = a.f13496b[this.f13493y.ordinal()];
        if (i11 != 1) {
            if (i11 == 3) {
                throw new IllegalArgumentException(this.f13470b + " needs call init function before getUpdateOutputSize");
            }
            if (i11 == 4 || i11 == 5) {
                return 0;
            }
            if (i11 != 6 && i11 != 7) {
                return Math.max(0, (i10 + this.f13462A) - this.f13482n);
            }
        }
        return this.f13462A + i10 + this.f13482n;
    }

    @Override
    public int h(int i10) {
        int i11 = a.f13496b[this.f13493y.ordinal()];
        if (i11 != 1) {
            if (i11 == 3) {
                throw new IllegalArgumentException(this.f13470b + " needs call init function before getUpdateOutputSize");
            }
            if (i11 == 4 || i11 == 5) {
                return 0;
            }
            if (i11 != 6 && i11 != 7) {
                return Math.max(0, i10 - this.f13482n);
            }
        }
        return i10 + this.f13482n;
    }

    @Override
    public int i(byte b10, byte[] bArr, int i10) throws DataLengthException {
        return f(new byte[]{b10}, 0, 1, bArr, i10);
    }

    @Override
    public void j(byte[] bArr, int i10, int i11) {
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        this.f13494z.write(bArr, i10, i11);
    }

    @Override
    public void k(byte b10) {
        this.f13494z.write(b10);
    }

    public final void l(byte[] bArr, int i10) {
        byte[] bArr2 = new byte[25];
        for (int i11 = 0; i11 < 5; i11++) {
            for (int i12 = 0; i12 < 5; i12++) {
                bArr2[i11] = (byte) (bArr2[i11] ^ bArr[s(i11, i12)]);
            }
        }
        int i13 = 0;
        while (i13 < 5) {
            int i14 = i13 + 1;
            bArr2[i13 + 5] = (byte) (bArr2[(i13 + 4) % 5] ^ m(bArr2[i14 % 5], 1));
            i13 = i14;
        }
        for (int i15 = 0; i15 < 5; i15++) {
            for (int i16 = 0; i16 < 5; i16++) {
                int s10 = s(i15, i16);
                bArr[s10] = (byte) (bArr[s10] ^ bArr2[i15 + 5]);
            }
        }
        for (int i17 = 0; i17 < 5; i17++) {
            for (int i18 = 0; i18 < 5; i18++) {
                bArr2[s(i17, i18)] = m(bArr[s(i17, i18)], this.f13468G[s(i17, i18)]);
            }
        }
        for (int i19 = 0; i19 < 5; i19++) {
            for (int i20 = 0; i20 < 5; i20++) {
                bArr[s(i20, ((i19 * 2) + (i20 * 3)) % 5)] = bArr2[s(i19, i20)];
            }
        }
        for (int i21 = 0; i21 < 5; i21++) {
            int i22 = 0;
            while (i22 < 5) {
                int i23 = i22 + 1;
                bArr2[i22] = (byte) (bArr[s(i22, i21)] ^ ((~bArr[s(i23 % 5, i21)]) & bArr[s((i22 + 2) % 5, i21)]));
                i22 = i23;
            }
            for (int i24 = 0; i24 < 5; i24++) {
                bArr[s(i24, i21)] = bArr2[i24];
            }
        }
        bArr[0] = (byte) (this.f13467F[i10] ^ bArr[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r2 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final byte m(byte b10, int i10) {
        int i11;
        if (i10 != 0) {
            int i12 = b10 & 255;
            i11 = (i12 >>> (8 - i10)) ^ (i12 << i10);
        }
        return (byte) i11;
    }

    public final void n() {
        int i10 = a.f13496b[this.f13493y.ordinal()];
        if (i10 == 5) {
            throw new IllegalArgumentException(this.f13470b + " cannot be reused for encryption");
        }
        if (i10 == 7) {
            throw new IllegalArgumentException(this.f13470b + " cannot process AAD when the length of the ciphertext to be processed exceeds the a block size");
        }
        if (i10 != 8) {
            return;
        }
        throw new IllegalArgumentException(this.f13470b + " cannot process AAD when the length of the plaintext to be processed exceeds the a block size");
    }

    public int o() {
        return this.f13482n;
    }

    public int p() {
        return 12;
    }

    public int q() {
        return 16;
    }

    public final void r(byte[] bArr, byte[] bArr2, int i10, int i11, int i12) {
        int i13 = this.f13472d;
        int i14 = i12 * i13;
        if (i14 == i11) {
            Arrays.fill(bArr, 0, i13, (byte) 0);
            bArr[0] = 1;
            return;
        }
        int i15 = i11 - i14;
        if (i13 <= i15) {
            System.arraycopy(bArr2, i10, bArr, 0, i13);
            return;
        }
        if (i15 > 0) {
            System.arraycopy(bArr2, i10, bArr, 0, i15);
        }
        Arrays.fill(bArr, i15, this.f13472d, (byte) 0);
        bArr[i15] = 1;
    }

    @Override
    public void reset() {
        x(true);
    }

    public final int s(int i10, int i11) {
        return i10 + (i11 * 5);
    }

    public final void t(byte[] bArr, byte[] bArr2) {
        int i10 = a.f13495a[this.f13471c.ordinal()];
        if (i10 == 1) {
            int i11 = this.f13472d - 1;
            byte b10 = bArr2[0];
            int i12 = (bArr2[3] & 255) << 7;
            int i13 = (bArr2[13] & 255) >>> 7;
            bArr[i11] = (byte) (i13 ^ (i12 ^ (((b10 & 255) >>> 5) | ((b10 & 255) << 3))));
        } else if (i10 == 2) {
            bArr[this.f13472d - 1] = (byte) ((y(bArr2[0]) ^ ((bArr2[3] & 255) << 7)) ^ ((bArr2[19] & 255) >>> 7));
        } else if (i10 == 3) {
            bArr[this.f13472d - 1] = (byte) ((bArr2[13] << 1) ^ (y(bArr2[0]) ^ y(bArr2[2])));
        }
        System.arraycopy(bArr2, 1, bArr, 0, this.f13472d - 1);
    }

    public final void u(byte[] bArr) {
        int i10;
        int i11 = a.f13495a[this.f13471c.ordinal()];
        if (i11 != 1 && i11 != 2) {
            if (i11 != 3) {
                return;
            }
            for (int i12 = 0; i12 < this.f13475g; i12++) {
                l(bArr, i12);
            }
            return;
        }
        byte b10 = this.f13476h;
        byte[] bArr2 = new byte[this.f13474f];
        for (int i13 = 0; i13 < this.f13475g; i13++) {
            bArr[0] = (byte) (bArr[0] ^ b10);
            int i14 = this.f13474f - 1;
            int i15 = b10 & 32;
            int i16 = b10 & 64;
            bArr[i14] = (byte) (bArr[i14] ^ ((byte) (((((((((b10 & 1) << 7) | ((b10 & 2) << 5)) | ((b10 & 4) << 3)) | ((b10 & 8) << 1)) | ((b10 & 16) >>> 1)) | (i15 >>> 3)) | (i16 >>> 5)) | ((b10 & 128) >>> 7))));
            b10 = (byte) (((b10 << 1) | ((i16 >>> 6) ^ (i15 >>> 5))) & 127);
            for (int i17 = 0; i17 < this.f13474f; i17++) {
                bArr[i17] = this.f13466E[bArr[i17] & 255];
            }
            Arrays.fill(bArr2, (byte) 0);
            int i18 = 0;
            while (true) {
                i10 = this.f13474f;
                if (i18 < i10) {
                    for (int i19 = 0; i19 < 8; i19++) {
                        int i20 = (i18 << 3) + i19;
                        int i21 = this.f13473e;
                        if (i20 != i21 - 1) {
                            i20 = ((i20 * i21) >> 2) % (i21 - 1);
                        }
                        int i22 = i20 >>> 3;
                        bArr2[i22] = (byte) (((((bArr[i18] & 255) >>> i19) & 1) << (i20 & 7)) ^ bArr2[i22]);
                    }
                    i18++;
                }
            }
            System.arraycopy(bArr2, 0, bArr, 0, i10);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x002d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void v(byte[] bArr) {
        c cVar;
        int i10;
        int i11;
        c cVar2;
        n();
        if (this.f13486r == -1) {
            this.f13487s = this.f13494z.size();
            this.f13485q = this.f13494z.toByteArray();
            this.f13486r = 0;
        }
        int[] iArr = a.f13496b;
        int i12 = iArr[this.f13493y.ordinal()];
        int i13 = 12;
        if (i12 == 1) {
            System.arraycopy(this.f13479k, 0, this.f13490v, 0, this.f13472d);
            System.arraycopy(this.f13478j, 0, bArr, 0, 12);
            cVar = c.EncAad;
        } else if (i12 != 2) {
            switch (i12) {
                case 5:
                    throw new IllegalArgumentException(this.f13470b + " cannot be reused for encryption");
                case 6:
                case 9:
                    if (this.f13486r == this.f13487s) {
                        Arrays.fill(bArr, 0, this.f13472d, (byte) 0);
                        bArr[0] = 1;
                        return;
                    }
                    i13 = 0;
                    i10 = this.f13472d - i13;
                    int i14 = this.f13487s;
                    int i15 = this.f13486r;
                    i11 = i14 - i15;
                    if (i10 <= i11) {
                        System.arraycopy(this.f13485q, i15, bArr, i13, i10);
                        this.f13486r += i10;
                        return;
                    }
                    if (i11 > 0) {
                        System.arraycopy(this.f13485q, i15, bArr, i13, i11);
                        this.f13486r += i11;
                    }
                    int i16 = i11 + i13;
                    Arrays.fill(bArr, i16, i13 + i10, (byte) 0);
                    bArr[i16] = 1;
                    int i17 = iArr[this.f13493y.ordinal()];
                    if (i17 == 6) {
                        cVar2 = c.EncData;
                    } else if (i17 != 9) {
                        return;
                    } else {
                        cVar2 = c.DecData;
                    }
                    this.f13493y = cVar2;
                    return;
                case 7:
                    throw new IllegalArgumentException(this.f13470b + " cannot process AAD when the length of the ciphertext to be processed exceeds the a block size");
                case 8:
                    throw new IllegalArgumentException(this.f13470b + " cannot process AAD when the length of the plaintext to be processed exceeds the a block size");
                default:
                    i13 = 0;
                    i10 = this.f13472d - i13;
                    int i142 = this.f13487s;
                    int i152 = this.f13486r;
                    i11 = i142 - i152;
                    if (i10 <= i11) {
                    }
                    break;
            }
        } else {
            System.arraycopy(this.f13479k, 0, this.f13490v, 0, this.f13472d);
            System.arraycopy(this.f13478j, 0, bArr, 0, 12);
            cVar = c.DecAad;
        }
        this.f13493y = cVar;
        i10 = this.f13472d - i13;
        int i1422 = this.f13487s;
        int i1522 = this.f13486r;
        i11 = i1422 - i1522;
        if (i10 <= i11) {
        }
    }

    public final int w(byte[] bArr, byte[] bArr2, int i10, int i11, int i12, int i13, int i14, int i15) {
        int i16 = this.f13484p;
        int i17 = 0;
        while (i16 < i11) {
            t(this.f13491w, this.f13490v);
            if (i16 < i12) {
                System.arraycopy(this.f13478j, 0, this.f13492x, 0, 12);
                Arrays.fill(this.f13492x, 12, this.f13472d, (byte) 0);
                z(this.f13492x, this.f13490v, 0, this.f13472d);
                z(this.f13492x, this.f13491w, 0, this.f13472d);
                u(this.f13492x);
                z(this.f13492x, this.f13490v, 0, this.f13472d);
                z(this.f13492x, this.f13491w, 0, this.f13472d);
                int i18 = i16 == i12 + (-1) ? i14 - (this.f13472d * i16) : this.f13472d;
                z(this.f13492x, bArr, 0, i18);
                System.arraycopy(this.f13492x, 0, bArr2, i10, i18);
                if (this.f13469a) {
                    System.arraycopy(this.f13492x, 0, this.f13465D, 0, i18);
                } else {
                    System.arraycopy(bArr, 0, this.f13465D, 0, i18);
                }
                i17 += i18;
            }
            int i19 = i17;
            if (i16 > 0 && i16 <= i13) {
                r(this.f13492x, this.f13464C, 0, i14, i16 - 1);
                z(this.f13492x, this.f13489u, 0, this.f13472d);
                z(this.f13492x, this.f13491w, 0, this.f13472d);
                u(this.f13492x);
                z(this.f13492x, this.f13489u, 0, this.f13472d);
                z(this.f13492x, this.f13491w, 0, this.f13472d);
                z(this.f13488t, this.f13492x, 0, this.f13472d);
            }
            i16++;
            if (i16 < i15) {
                v(this.f13492x);
                z(this.f13492x, this.f13491w, 0, this.f13472d);
                u(this.f13492x);
                z(this.f13492x, this.f13491w, 0, this.f13472d);
                z(this.f13488t, this.f13492x, 0, this.f13472d);
            }
            byte[] bArr3 = this.f13489u;
            this.f13489u = this.f13490v;
            this.f13490v = this.f13491w;
            this.f13491w = bArr3;
            System.arraycopy(this.f13465D, 0, this.f13464C, 0, this.f13472d);
            i17 = i19;
        }
        return i17;
    }

    public final byte y(byte b10) {
        int i10 = b10 & 255;
        return (byte) ((i10 >>> 7) | (i10 << 1));
    }

    public final void z(byte[] bArr, byte[] bArr2, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            bArr[i12] = (byte) (bArr[i12] ^ bArr2[i12 + i10]);
        }
    }
}
