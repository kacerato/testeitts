package Li;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class Q implements InterfaceC2374f {

    public static final int f13743d = 16;

    public static final byte[] f13744e = {Byte.MIN_VALUE, 27, 54, Opcodes.OPC_idiv, -40, Opcodes.OPC_lookupswitch, Opcodes.OPC_astore_2, Opcodes.OPC_ifne, Opcodes.OPC_laload, Opcodes.OPC_dup2_x2, -68, Opcodes.OPC_dadd, Opcodes.OPC_ifnull, Opcodes.OPC_dcmpl, Opcodes.OPC_saload, 106, -44};

    public final int[] f13745a = new int[4];

    public boolean f13746b = false;

    public boolean f13747c;

    private int f(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int a10 = org.bouncycastle.util.p.a(bArr, i10);
        int a11 = org.bouncycastle.util.p.a(bArr, i10 + 4);
        int a12 = org.bouncycastle.util.p.a(bArr, i10 + 8);
        int a13 = org.bouncycastle.util.p.a(bArr, i10 + 12);
        int[] iArr = this.f13745a;
        int i12 = iArr[0];
        int i13 = iArr[1];
        int i14 = iArr[2];
        int i15 = iArr[3];
        int i16 = 16;
        while (true) {
            int i17 = a10 ^ a12;
            int h10 = i17 ^ (org.bouncycastle.util.k.h(i17, 8) ^ org.bouncycastle.util.k.h(i17, 24));
            int i18 = a11 ^ i13;
            int i19 = a13 ^ i15;
            int i20 = i18 ^ i19;
            int h11 = (org.bouncycastle.util.k.h(i20, 24) ^ org.bouncycastle.util.k.h(i20, 8)) ^ i20;
            int i21 = i18 ^ h10;
            int i22 = (a12 ^ i14) ^ h11;
            int i23 = i19 ^ h10;
            int i24 = ((a10 ^ i12) ^ h11) ^ (f13744e[i16] & 255);
            i16--;
            if (i16 < 0) {
                org.bouncycastle.util.p.h(i24, bArr2, i11);
                org.bouncycastle.util.p.h(i21, bArr2, i11 + 4);
                org.bouncycastle.util.p.h(i22, bArr2, i11 + 8);
                org.bouncycastle.util.p.h(i23, bArr2, i11 + 12);
                return 16;
            }
            int h12 = org.bouncycastle.util.k.h(i21, 1);
            int h13 = org.bouncycastle.util.k.h(i22, 5);
            int h14 = org.bouncycastle.util.k.h(i23, 2);
            int i25 = h12 ^ (h14 | h13);
            int i26 = ~i25;
            int i27 = i24 ^ (h13 & i26);
            int i28 = (h13 ^ (i26 ^ h14)) ^ i27;
            int i29 = i25 ^ (i27 | i28);
            int i30 = h14 ^ (i28 & i29);
            a11 = org.bouncycastle.util.k.h(i29, 31);
            a12 = org.bouncycastle.util.k.h(i28, 27);
            int h15 = org.bouncycastle.util.k.h(i27, 30);
            a10 = i30;
            a13 = h15;
        }
    }

    private int i(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int a10 = org.bouncycastle.util.p.a(bArr, i10);
        int a11 = org.bouncycastle.util.p.a(bArr, i10 + 4);
        int a12 = org.bouncycastle.util.p.a(bArr, i10 + 8);
        int a13 = org.bouncycastle.util.p.a(bArr, i10 + 12);
        int[] iArr = this.f13745a;
        int i12 = 0;
        int i13 = iArr[0];
        int i14 = iArr[1];
        int i15 = iArr[2];
        int i16 = iArr[3];
        while (true) {
            int i17 = a10 ^ (f13744e[i12] & 255);
            int i18 = i17 ^ a12;
            int h10 = i18 ^ (org.bouncycastle.util.k.h(i18, 8) ^ org.bouncycastle.util.k.h(i18, 24));
            int i19 = a11 ^ i14;
            int i20 = a13 ^ i16;
            int i21 = i19 ^ i20;
            int h11 = i21 ^ (org.bouncycastle.util.k.h(i21, 24) ^ org.bouncycastle.util.k.h(i21, 8));
            int i22 = (i17 ^ i13) ^ h11;
            int i23 = i19 ^ h10;
            int i24 = (a12 ^ i15) ^ h11;
            int i25 = i20 ^ h10;
            i12++;
            if (i12 > 16) {
                org.bouncycastle.util.p.h(i22, bArr2, i11);
                org.bouncycastle.util.p.h(i23, bArr2, i11 + 4);
                org.bouncycastle.util.p.h(i24, bArr2, i11 + 8);
                org.bouncycastle.util.p.h(i25, bArr2, i11 + 12);
                return 16;
            }
            int h12 = org.bouncycastle.util.k.h(i23, 1);
            int h13 = org.bouncycastle.util.k.h(i24, 5);
            int h14 = org.bouncycastle.util.k.h(i25, 2);
            int i26 = h12 ^ (h14 | h13);
            int i27 = ~i26;
            int i28 = i22 ^ (h13 & i27);
            int i29 = (h13 ^ (i27 ^ h14)) ^ i28;
            int i30 = i26 ^ (i28 | i29);
            int i31 = h14 ^ (i29 & i30);
            a11 = org.bouncycastle.util.k.h(i30, 31);
            a12 = org.bouncycastle.util.k.h(i29, 27);
            int h15 = org.bouncycastle.util.k.h(i28, 30);
            a10 = i31;
            a13 = h15;
        }
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (!(interfaceC2379k instanceof C3360o0)) {
            throw new IllegalArgumentException("invalid parameter passed to Noekeon init - " + interfaceC2379k.getClass().getName());
        }
        byte[] b10 = ((C3360o0) interfaceC2379k).b();
        if (b10.length != 16) {
            throw new IllegalArgumentException("Key length not 128 bits.");
        }
        org.bouncycastle.util.p.c(b10, 0, this.f13745a, 0, 4);
        if (!z10) {
            int[] iArr = this.f13745a;
            int i10 = iArr[0];
            int i11 = iArr[1];
            int i12 = iArr[2];
            int i13 = iArr[3];
            int i14 = i10 ^ i12;
            int h10 = i14 ^ (org.bouncycastle.util.k.h(i14, 8) ^ org.bouncycastle.util.k.h(i14, 24));
            int i15 = i11 ^ i13;
            int h11 = (org.bouncycastle.util.k.h(i15, 8) ^ org.bouncycastle.util.k.h(i15, 24)) ^ i15;
            int i16 = i11 ^ h10;
            int i17 = i13 ^ h10;
            int[] iArr2 = this.f13745a;
            iArr2[0] = i10 ^ h11;
            iArr2[1] = i16;
            iArr2[2] = i12 ^ h11;
            iArr2[3] = i17;
        }
        this.f13747c = z10;
        this.f13746b = true;
        Bi.r.a(new Hi.c(b(), 128, interfaceC2379k, x0.a(z10)));
    }

    @Override
    public String b() {
        return "Noekeon";
    }

    @Override
    public int c() {
        return 16;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) {
        if (!this.f13746b) {
            throw new IllegalStateException(b() + " not initialised");
        }
        if (i10 > bArr.length - 16) {
            throw new DataLengthException("input buffer too short");
        }
        if (i11 <= bArr2.length - 16) {
            return this.f13747c ? i(bArr, i10, bArr2, i11) : f(bArr, i10, bArr2, i11);
        }
        throw new OutputLengthException("output buffer too short");
    }

    @Override
    public void reset() {
    }
}
