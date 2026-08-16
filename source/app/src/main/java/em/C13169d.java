package em;

import java.io.IOException;
import java.io.OutputStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class C13169d implements g {

    public final byte[] f85889a = {Opcodes.OPC_lstore_2, Opcodes.OPC_lstore_3, Opcodes.OPC_fstore_0, Opcodes.OPC_fstore_1, Opcodes.OPC_fstore_2, 70, 71, 72, Opcodes.OPC_dstore_2, Opcodes.OPC_dstore_3, Opcodes.OPC_astore_0, Opcodes.OPC_astore_1, Opcodes.OPC_astore_2, Opcodes.OPC_astore_3, Opcodes.OPC_iastore, 80, Opcodes.OPC_fastore, Opcodes.OPC_dastore, Opcodes.OPC_aastore, Opcodes.OPC_bastore, Opcodes.OPC_castore, Opcodes.OPC_sastore, Opcodes.OPC_pop, Opcodes.OPC_pop2, Opcodes.OPC_dup, 90, Opcodes.OPC_ladd, Opcodes.OPC_fadd, Opcodes.OPC_dadd, 100, 101, 102, Opcodes.OPC_dsub, Opcodes.OPC_imul, 105, 106, 107, Opcodes.OPC_idiv, Opcodes.OPC_ldiv, 110, 111, 112, 113, Opcodes.OPC_frem, Opcodes.OPC_drem, Opcodes.OPC_ineg, Opcodes.OPC_lneg, Opcodes.OPC_fneg, Opcodes.OPC_dneg, 120, 121, 122, 48, Opcodes.OPC_daload, 50, 51, 52, Opcodes.OPC_saload, 54, Opcodes.OPC_lstore, Opcodes.OPC_fstore, Opcodes.OPC_dstore, Opcodes.OPC_aload_1, Opcodes.OPC_laload};

    public byte f85890b = 61;

    public final byte[] f85891c = new byte[128];

    public C13169d() {
        i();
    }

    private boolean h(char c10) {
        return c10 == '\n' || c10 == '\r' || c10 == '\t' || c10 == ' ';
    }

    private int k(byte[] bArr, int i10, int i11) {
        while (i10 < i11 && h((char) bArr[i10])) {
            i10++;
        }
        return i10;
    }

    @Override
    public int a(int i10) {
        return ((i10 + 2) / 3) * 4;
    }

    @Override
    public int b(byte[] bArr, int i10, int i11, OutputStream outputStream) throws IOException {
        if (i11 < 0) {
            return 0;
        }
        byte[] bArr2 = new byte[72];
        int i12 = i11;
        while (i12 > 0) {
            int min = Math.min(54, i12);
            outputStream.write(bArr2, 0, g(bArr, i10, min, bArr2, 0));
            i10 += min;
            i12 -= min;
        }
        return ((i11 + 2) / 3) * 4;
    }

    @Override
    public int c(byte[] bArr, int i10, int i11, OutputStream outputStream) throws IOException {
        byte[] bArr2 = new byte[54];
        int i12 = i10 + i11;
        while (i12 > i10 && h((char) bArr[i12 - 1])) {
            i12--;
        }
        if (i12 == 0) {
            return 0;
        }
        int i13 = i12;
        int i14 = 0;
        while (i13 > i10 && i14 != 4) {
            if (!h((char) bArr[i13 - 1])) {
                i14++;
            }
            i13--;
        }
        int k10 = k(bArr, i10, i13);
        int i15 = 0;
        int i16 = 0;
        while (k10 < i13) {
            int i17 = k10 + 1;
            byte b10 = this.f85891c[bArr[k10]];
            int k11 = k(bArr, i17, i13);
            int i18 = k11 + 1;
            byte b11 = this.f85891c[bArr[k11]];
            int k12 = k(bArr, i18, i13);
            int i19 = k12 + 1;
            byte b12 = this.f85891c[bArr[k12]];
            int k13 = k(bArr, i19, i13);
            int i20 = k13 + 1;
            byte b13 = this.f85891c[bArr[k13]];
            if ((b10 | b11 | b12 | b13) < 0) {
                throw new IOException("invalid characters encountered in base64 data");
            }
            bArr2[i15] = (byte) ((b10 << 2) | (b11 >> 4));
            int i21 = i15 + 2;
            bArr2[i15 + 1] = (byte) ((b11 << 4) | (b12 >> 2));
            i15 += 3;
            bArr2[i21] = (byte) ((b12 << 6) | b13);
            if (i15 == 54) {
                outputStream.write(bArr2);
                i15 = 0;
            }
            i16 += 3;
            k10 = k(bArr, i20, i13);
        }
        if (i15 > 0) {
            outputStream.write(bArr2, 0, i15);
        }
        int k14 = k(bArr, k10, i12);
        int k15 = k(bArr, k14 + 1, i12);
        int k16 = k(bArr, k15 + 1, i12);
        return i16 + f(outputStream, (char) bArr[k14], (char) bArr[k15], (char) bArr[k16], (char) bArr[k(bArr, k16 + 1, i12)]);
    }

    @Override
    public int d(String str, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[54];
        int length = str.length();
        while (length > 0 && h(str.charAt(length - 1))) {
            length--;
        }
        if (length == 0) {
            return 0;
        }
        int i10 = length;
        int i11 = 0;
        while (i10 > 0 && i11 != 4) {
            if (!h(str.charAt(i10 - 1))) {
                i11++;
            }
            i10--;
        }
        int j10 = j(str, 0, i10);
        int i12 = 0;
        int i13 = 0;
        while (j10 < i10) {
            int i14 = j10 + 1;
            byte b10 = this.f85891c[str.charAt(j10)];
            int j11 = j(str, i14, i10);
            int i15 = j11 + 1;
            byte b11 = this.f85891c[str.charAt(j11)];
            int j12 = j(str, i15, i10);
            int i16 = j12 + 1;
            byte b12 = this.f85891c[str.charAt(j12)];
            int j13 = j(str, i16, i10);
            int i17 = j13 + 1;
            byte b13 = this.f85891c[str.charAt(j13)];
            if ((b10 | b11 | b12 | b13) < 0) {
                throw new IOException("invalid characters encountered in base64 data");
            }
            bArr[i12] = (byte) ((b10 << 2) | (b11 >> 4));
            int i18 = i12 + 2;
            bArr[i12 + 1] = (byte) ((b11 << 4) | (b12 >> 2));
            i12 += 3;
            bArr[i18] = (byte) ((b12 << 6) | b13);
            i13 += 3;
            if (i12 == 54) {
                outputStream.write(bArr);
                i12 = 0;
            }
            j10 = j(str, i17, i10);
        }
        if (i12 > 0) {
            outputStream.write(bArr, 0, i12);
        }
        int j14 = j(str, j10, length);
        int j15 = j(str, j14 + 1, length);
        int j16 = j(str, j15 + 1, length);
        return i13 + f(outputStream, str.charAt(j14), str.charAt(j15), str.charAt(j16), str.charAt(j(str, j16 + 1, length)));
    }

    @Override
    public int e(int i10) {
        return (i10 / 4) * 3;
    }

    public final int f(OutputStream outputStream, char c10, char c11, char c12, char c13) throws IOException {
        byte b10 = this.f85890b;
        if (c12 == b10) {
            if (c13 != b10) {
                throw new IOException("invalid characters encountered at end of base64 data");
            }
            byte[] bArr = this.f85891c;
            byte b11 = bArr[c10];
            byte b12 = bArr[c11];
            if ((b11 | b12) < 0) {
                throw new IOException("invalid characters encountered at end of base64 data");
            }
            outputStream.write((b11 << 2) | (b12 >> 4));
            return 1;
        }
        if (c13 == b10) {
            byte[] bArr2 = this.f85891c;
            byte b13 = bArr2[c10];
            byte b14 = bArr2[c11];
            byte b15 = bArr2[c12];
            if ((b13 | b14 | b15) < 0) {
                throw new IOException("invalid characters encountered at end of base64 data");
            }
            outputStream.write((b13 << 2) | (b14 >> 4));
            outputStream.write((b14 << 4) | (b15 >> 2));
            return 2;
        }
        byte[] bArr3 = this.f85891c;
        byte b16 = bArr3[c10];
        byte b17 = bArr3[c11];
        byte b18 = bArr3[c12];
        byte b19 = bArr3[c13];
        if ((b16 | b17 | b18 | b19) < 0) {
            throw new IOException("invalid characters encountered at end of base64 data");
        }
        outputStream.write((b16 << 2) | (b17 >> 4));
        outputStream.write((b17 << 4) | (b18 >> 2));
        outputStream.write((b18 << 6) | b19);
        return 3;
    }

    public int g(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws IOException {
        int i13 = (i10 + i11) - 2;
        int i14 = i10;
        int i15 = i12;
        while (i14 < i13) {
            byte b10 = bArr[i14];
            int i16 = i14 + 2;
            int i17 = bArr[i14 + 1] & 255;
            i14 += 3;
            byte b11 = bArr[i16];
            byte[] bArr3 = this.f85889a;
            bArr2[i15] = bArr3[(b10 >>> 2) & 63];
            bArr2[i15 + 1] = bArr3[((b10 << 4) | (i17 >>> 4)) & 63];
            int i18 = i15 + 3;
            bArr2[i15 + 2] = bArr3[((i17 << 2) | ((b11 & 255) >>> 6)) & 63];
            i15 += 4;
            bArr2[i18] = bArr3[b11 & Opcodes.OPC_lstore_0];
        }
        int i19 = i11 - (i14 - i10);
        if (i19 == 1) {
            int i20 = bArr[i14] & 255;
            byte[] bArr4 = this.f85889a;
            bArr2[i15] = bArr4[(i20 >>> 2) & 63];
            bArr2[i15 + 1] = bArr4[(i20 << 4) & 63];
            int i21 = i15 + 3;
            byte b12 = this.f85890b;
            bArr2[i15 + 2] = b12;
            i15 += 4;
            bArr2[i21] = b12;
        } else if (i19 == 2) {
            int i22 = i14 + 1;
            int i23 = bArr[i14] & 255;
            int i24 = bArr[i22] & 255;
            byte[] bArr5 = this.f85889a;
            bArr2[i15] = bArr5[(i23 >>> 2) & 63];
            bArr2[i15 + 1] = bArr5[((i23 << 4) | (i24 >>> 4)) & 63];
            int i25 = i15 + 3;
            bArr2[i15 + 2] = bArr5[(i24 << 2) & 63];
            i15 += 4;
            bArr2[i25] = this.f85890b;
        }
        return i15 - i12;
    }

    public void i() {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            byte[] bArr = this.f85891c;
            if (i11 >= bArr.length) {
                break;
            }
            bArr[i11] = -1;
            i11++;
        }
        while (true) {
            byte[] bArr2 = this.f85889a;
            if (i10 >= bArr2.length) {
                return;
            }
            this.f85891c[bArr2[i10]] = (byte) i10;
            i10++;
        }
    }

    public final int j(String str, int i10, int i11) {
        while (i10 < i11 && h(str.charAt(i10))) {
            i10++;
        }
        return i10;
    }
}
