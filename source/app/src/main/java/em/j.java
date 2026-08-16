package em;

import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class j implements k {

    public static final byte[] f85901a = {48, Opcodes.OPC_daload, 50, 51, 52, Opcodes.OPC_saload, 54, Opcodes.OPC_lstore, Opcodes.OPC_fstore, Opcodes.OPC_dstore, Opcodes.OPC_ladd, Opcodes.OPC_fadd, Opcodes.OPC_dadd, 100, 101, 102};

    @Override
    public int a() {
        return 1;
    }

    @Override
    public int b() {
        return 2;
    }

    @Override
    public int c(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        int i13 = i11 / 2;
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = (i14 * 2) + i10;
            byte b10 = bArr[i15];
            byte b11 = bArr[i15 + 1];
            if (b10 < 97) {
                bArr2[i12] = (byte) ((b10 - 48) << 4);
            } else {
                bArr2[i12] = (byte) ((b10 + Opcodes.OPC_ret) << 4);
            }
            if (b11 < 97) {
                bArr2[i12] = (byte) (bArr2[i12] + ((byte) (b11 - 48)));
            } else {
                bArr2[i12] = (byte) (bArr2[i12] + ((byte) (b11 + Opcodes.OPC_ret)));
            }
            i12++;
        }
        return i13;
    }

    @Override
    public int d(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        int i13 = 0;
        int i14 = 0;
        while (i13 < i11) {
            int i15 = i12 + i14;
            byte[] bArr3 = f85901a;
            bArr2[i15] = bArr3[(bArr[i10] >> 4) & 15];
            bArr2[i15 + 1] = bArr3[bArr[i10] & 15];
            i10++;
            i13++;
            i14 += 2;
        }
        return i11 * 2;
    }
}
