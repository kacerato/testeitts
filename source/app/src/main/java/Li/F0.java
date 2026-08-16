package Li;

import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class F0 extends D0 {

    public static final byte[] f13593l = {34, Opcodes.OPC_laload, Opcodes.OPC_fload_2, 42, Opcodes.OPC_ldiv, 64, 64, 64, 64, 64, 64, 64, 64, Opcodes.OPC_dastore, 16, 48};

    public static final byte[] f13594m = {34, Opcodes.OPC_laload, Opcodes.OPC_fload_3, 42, Opcodes.OPC_ldiv, 64, 64, 64, 64, 64, 64, 64, 64, Opcodes.OPC_dastore, 16, 48};

    public static final byte[] f13595n = {Opcodes.OPC_fload_1, Opcodes.OPC_laload, Opcodes.OPC_fload_2, 42, Opcodes.OPC_ldiv, 64, 64, 64, 64, 64, 64, 64, 64, Opcodes.OPC_dastore, 16, 48};

    public static final byte[] f13596o = {Opcodes.OPC_fload_1, Opcodes.OPC_laload, Opcodes.OPC_fload_3, 42, Opcodes.OPC_ldiv, 64, 64, 64, 64, 64, 64, 64, 64, Opcodes.OPC_dastore, 16, 48};

    public byte[] f13597k;

    public F0() {
        this.f13597k = f13593l;
    }

    public static int y(byte b10, byte b11, byte b12, byte b13) {
        return ((b10 & 255) << 23) | ((b11 & 255) << 16) | ((b12 & 255) << 8) | (b13 & 255);
    }

    @Override
    public String b() {
        return "Zuc-256";
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new F0(this);
    }

    @Override
    public void j(org.bouncycastle.util.n nVar) {
        super.j(nVar);
        this.f13597k = ((F0) nVar).f13597k;
    }

    @Override
    public int t() {
        return 625;
    }

    @Override
    public void x(int[] iArr, byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr.length != 32) {
            throw new IllegalArgumentException("A key of 32 bytes is needed");
        }
        if (bArr2 == null || bArr2.length != 25) {
            throw new IllegalArgumentException("An IV of 25 bytes is needed");
        }
        iArr[0] = y(bArr[0], this.f13597k[0], bArr[21], bArr[16]);
        iArr[1] = y(bArr[1], this.f13597k[1], bArr[22], bArr[17]);
        iArr[2] = y(bArr[2], this.f13597k[2], bArr[23], bArr[18]);
        iArr[3] = y(bArr[3], this.f13597k[3], bArr[24], bArr[19]);
        iArr[4] = y(bArr[4], this.f13597k[4], bArr[25], bArr[20]);
        iArr[5] = y(bArr2[0], (byte) (this.f13597k[5] | (bArr2[17] & Opcodes.OPC_lstore_0)), bArr[5], bArr[26]);
        iArr[6] = y(bArr2[1], (byte) (this.f13597k[6] | (bArr2[18] & Opcodes.OPC_lstore_0)), bArr[6], bArr[27]);
        iArr[7] = y(bArr2[10], (byte) (this.f13597k[7] | (bArr2[19] & Opcodes.OPC_lstore_0)), bArr[7], bArr2[2]);
        iArr[8] = y(bArr[8], (byte) (this.f13597k[8] | (bArr2[20] & Opcodes.OPC_lstore_0)), bArr2[3], bArr2[11]);
        iArr[9] = y(bArr[9], (byte) ((bArr2[21] & Opcodes.OPC_lstore_0) | this.f13597k[9]), bArr2[12], bArr2[4]);
        iArr[10] = y(bArr2[5], (byte) (this.f13597k[10] | (bArr2[22] & Opcodes.OPC_lstore_0)), bArr[10], bArr[28]);
        iArr[11] = y(bArr[11], (byte) (this.f13597k[11] | (bArr2[23] & Opcodes.OPC_lstore_0)), bArr2[6], bArr2[13]);
        iArr[12] = y(bArr[12], (byte) (this.f13597k[12] | (bArr2[24] & Opcodes.OPC_lstore_0)), bArr2[7], bArr2[14]);
        iArr[13] = y(bArr[13], this.f13597k[13], bArr2[15], bArr2[8]);
        iArr[14] = y(bArr[14], (byte) (this.f13597k[14] | ((bArr[31] >>> 4) & 15)), bArr2[16], bArr2[9]);
        iArr[15] = y(bArr[15], (byte) (this.f13597k[15] | (bArr[31] & 15)), bArr[30], bArr[29]);
    }

    public F0(int i10) {
        if (i10 == 32) {
            this.f13597k = f13594m;
            return;
        }
        if (i10 == 64) {
            this.f13597k = f13595n;
        } else {
            if (i10 == 128) {
                this.f13597k = f13596o;
                return;
            }
            throw new IllegalArgumentException("Unsupported length: " + i10);
        }
    }

    public F0(F0 f02) {
        super(f02);
    }
}
