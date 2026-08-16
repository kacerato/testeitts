package em;

import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.util.w;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class C13167b implements g {

    public static final byte[] f85883d = {Opcodes.OPC_lstore_2, Opcodes.OPC_lstore_3, Opcodes.OPC_fstore_0, Opcodes.OPC_fstore_1, Opcodes.OPC_fstore_2, 70, 71, 72, Opcodes.OPC_dstore_2, Opcodes.OPC_dstore_3, Opcodes.OPC_astore_0, Opcodes.OPC_astore_1, Opcodes.OPC_astore_2, Opcodes.OPC_astore_3, Opcodes.OPC_iastore, 80, Opcodes.OPC_fastore, Opcodes.OPC_dastore, Opcodes.OPC_aastore, Opcodes.OPC_bastore, Opcodes.OPC_castore, Opcodes.OPC_sastore, Opcodes.OPC_pop, Opcodes.OPC_pop2, Opcodes.OPC_dup, 90, 50, 51, 52, Opcodes.OPC_saload, 54, Opcodes.OPC_lstore};

    public static final byte f85884e = 61;

    public final byte[] f85885a;

    public final byte f85886b;

    public final byte[] f85887c;

    public C13167b() {
        this.f85887c = new byte[128];
        this.f85885a = f85883d;
        this.f85886b = (byte) 61;
        j();
    }

    @Override
    public int a(int i10) {
        return ((i10 + 4) / 5) * 8;
    }

    @Override
    public int b(byte[] bArr, int i10, int i11, OutputStream outputStream) throws IOException {
        if (i11 < 0) {
            return 0;
        }
        byte[] bArr2 = new byte[72];
        int i12 = i11;
        while (i12 > 0) {
            int min = Math.min(45, i12);
            outputStream.write(bArr2, 0, g(bArr, i10, min, bArr2, 0));
            i10 += min;
            i12 -= min;
        }
        return ((i11 + 2) / 3) * 4;
    }

    @Override
    public int c(byte[] bArr, int i10, int i11, OutputStream outputStream) throws IOException {
        byte[] bArr2 = new byte[55];
        int i12 = i10 + i11;
        while (i12 > i10 && i((char) bArr[i12 - 1])) {
            i12--;
        }
        if (i12 == 0) {
            return 0;
        }
        int i13 = i12;
        int i14 = 0;
        while (i13 > i10 && i14 != 8) {
            if (!i((char) bArr[i13 - 1])) {
                i14++;
            }
            i13--;
        }
        int k10 = k(bArr, i10, i13);
        int i15 = 0;
        int i16 = 0;
        while (k10 < i13) {
            int i17 = k10 + 1;
            byte b10 = this.f85887c[bArr[k10]];
            int k11 = k(bArr, i17, i13);
            int i18 = k11 + 1;
            byte b11 = this.f85887c[bArr[k11]];
            int k12 = k(bArr, i18, i13);
            int i19 = k12 + 1;
            byte b12 = this.f85887c[bArr[k12]];
            int k13 = k(bArr, i19, i13);
            int i20 = k13 + 1;
            byte b13 = this.f85887c[bArr[k13]];
            int k14 = k(bArr, i20, i13);
            int i21 = k14 + 1;
            byte b14 = this.f85887c[bArr[k14]];
            int k15 = k(bArr, i21, i13);
            int i22 = k15 + 1;
            byte b15 = this.f85887c[bArr[k15]];
            int k16 = k(bArr, i22, i13);
            int i23 = i12;
            int i24 = k16 + 1;
            byte b16 = this.f85887c[bArr[k16]];
            int k17 = k(bArr, i24, i13);
            int i25 = i13;
            int i26 = k17 + 1;
            byte b17 = this.f85887c[bArr[k17]];
            if ((b10 | b11 | b12 | b13 | b14 | b15 | b16 | b17) < 0) {
                throw new IOException("invalid characters encountered in base32 data");
            }
            bArr2[i15] = (byte) ((b10 << 3) | (b11 >> 2));
            bArr2[i15 + 1] = (byte) ((b11 << 6) | (b12 << 1) | (b13 >> 4));
            bArr2[i15 + 2] = (byte) ((b13 << 4) | (b14 >> 1));
            int i27 = i15 + 4;
            bArr2[i15 + 3] = (byte) ((b15 << 2) | (b14 << 7) | (b16 >> 3));
            i15 += 5;
            bArr2[i27] = (byte) ((b16 << 5) | b17);
            if (i15 == 55) {
                outputStream.write(bArr2);
                i15 = 0;
            }
            i16 += 5;
            int k18 = k(bArr, i26, i25);
            i13 = i25;
            i12 = i23;
            k10 = k18;
        }
        int i28 = i12;
        if (i15 > 0) {
            outputStream.write(bArr2, 0, i15);
        }
        int k19 = k(bArr, k10, i28);
        int k20 = k(bArr, k19 + 1, i28);
        int k21 = k(bArr, k20 + 1, i28);
        int k22 = k(bArr, k21 + 1, i28);
        int k23 = k(bArr, k22 + 1, i28);
        int k24 = k(bArr, k23 + 1, i28);
        int k25 = k(bArr, k24 + 1, i28);
        return i16 + f(outputStream, (char) bArr[k19], (char) bArr[k20], (char) bArr[k21], (char) bArr[k22], (char) bArr[k23], (char) bArr[k24], (char) bArr[k25], (char) bArr[k(bArr, k25 + 1, i28)]);
    }

    @Override
    public int d(String str, OutputStream outputStream) throws IOException {
        byte[] j10 = w.j(str);
        return c(j10, 0, j10.length, outputStream);
    }

    @Override
    public int e(int i10) {
        return (i10 / 8) * 5;
    }

    public final int f(OutputStream outputStream, char c10, char c11, char c12, char c13, char c14, char c15, char c16, char c17) throws IOException {
        byte b10 = this.f85886b;
        if (c17 != b10) {
            byte[] bArr = this.f85887c;
            byte b11 = bArr[c10];
            byte b12 = bArr[c11];
            byte b13 = bArr[c12];
            byte b14 = bArr[c13];
            byte b15 = bArr[c14];
            byte b16 = bArr[c15];
            byte b17 = bArr[c16];
            byte b18 = bArr[c17];
            if ((b11 | b12 | b13 | b14 | b15 | b16 | b17 | b18) < 0) {
                throw new IOException("invalid characters encountered at end of base32 data");
            }
            outputStream.write((b11 << 3) | (b12 >> 2));
            outputStream.write((b12 << 6) | (b13 << 1) | (b14 >> 4));
            outputStream.write((b14 << 4) | (b15 >> 1));
            outputStream.write((b15 << 7) | (b16 << 2) | (b17 >> 3));
            outputStream.write((b17 << 5) | b18);
            return 5;
        }
        if (c16 != b10) {
            byte[] bArr2 = this.f85887c;
            byte b19 = bArr2[c10];
            byte b20 = bArr2[c11];
            byte b21 = bArr2[c12];
            byte b22 = bArr2[c13];
            byte b23 = bArr2[c14];
            byte b24 = bArr2[c15];
            byte b25 = bArr2[c16];
            if ((b19 | b20 | b21 | b22 | b23 | b24 | b25) < 0) {
                throw new IOException("invalid characters encountered at end of base32 data");
            }
            outputStream.write((b19 << 3) | (b20 >> 2));
            outputStream.write((b20 << 6) | (b21 << 1) | (b22 >> 4));
            outputStream.write((b22 << 4) | (b23 >> 1));
            outputStream.write((b23 << 7) | (b24 << 2) | (b25 >> 3));
            return 4;
        }
        if (c15 != b10) {
            throw new IOException("invalid characters encountered at end of base32 data");
        }
        if (c14 != b10) {
            byte[] bArr3 = this.f85887c;
            byte b26 = bArr3[c10];
            byte b27 = bArr3[c11];
            byte b28 = bArr3[c12];
            byte b29 = bArr3[c13];
            byte b30 = bArr3[c14];
            if ((b26 | b27 | b28 | b29 | b30) < 0) {
                throw new IOException("invalid characters encountered at end of base32 data");
            }
            outputStream.write((b26 << 3) | (b27 >> 2));
            outputStream.write((b27 << 6) | (b28 << 1) | (b29 >> 4));
            outputStream.write((b29 << 4) | (b30 >> 1));
            return 3;
        }
        if (c13 == b10) {
            if (c12 != b10) {
                throw new IOException("invalid characters encountered at end of base32 data");
            }
            byte[] bArr4 = this.f85887c;
            byte b31 = bArr4[c10];
            byte b32 = bArr4[c11];
            if ((b31 | b32) < 0) {
                throw new IOException("invalid characters encountered at end of base32 data");
            }
            outputStream.write((b31 << 3) | (b32 >> 2));
            return 1;
        }
        byte[] bArr5 = this.f85887c;
        byte b33 = bArr5[c10];
        byte b34 = bArr5[c11];
        byte b35 = bArr5[c12];
        byte b36 = bArr5[c13];
        if ((b33 | b34 | b35 | b36) < 0) {
            throw new IOException("invalid characters encountered at end of base32 data");
        }
        outputStream.write((b33 << 3) | (b34 >> 2));
        outputStream.write((b34 << 6) | (b35 << 1) | (b36 >> 4));
        return 2;
    }

    public int g(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws IOException {
        int i13 = (i10 + i11) - 4;
        int i14 = i10;
        int i15 = i12;
        while (i14 < i13) {
            h(bArr, i14, bArr2, i15);
            i14 += 5;
            i15 += 8;
        }
        int i16 = i11 - (i14 - i10);
        if (i16 > 0) {
            byte[] bArr3 = new byte[5];
            System.arraycopy(bArr, i14, bArr3, 0, i16);
            h(bArr3, 0, bArr2, i15);
            if (i16 == 1) {
                byte b10 = this.f85886b;
                bArr2[i15 + 2] = b10;
                bArr2[i15 + 3] = b10;
                bArr2[i15 + 4] = b10;
                bArr2[i15 + 5] = b10;
                bArr2[i15 + 6] = b10;
                bArr2[i15 + 7] = b10;
            } else if (i16 == 2) {
                byte b11 = this.f85886b;
                bArr2[i15 + 4] = b11;
                bArr2[i15 + 5] = b11;
                bArr2[i15 + 6] = b11;
                bArr2[i15 + 7] = b11;
            } else if (i16 == 3) {
                byte b12 = this.f85886b;
                bArr2[i15 + 5] = b12;
                bArr2[i15 + 6] = b12;
                bArr2[i15 + 7] = b12;
            } else if (i16 == 4) {
                bArr2[i15 + 7] = this.f85886b;
            }
            i15 += 8;
        }
        return i15 - i12;
    }

    public final void h(byte[] bArr, int i10, byte[] bArr2, int i11) {
        byte b10 = bArr[i10];
        int i12 = bArr[i10 + 1] & 255;
        int i13 = bArr[i10 + 2] & 255;
        int i14 = bArr[i10 + 3] & 255;
        byte b11 = bArr[i10 + 4];
        byte[] bArr3 = this.f85885a;
        bArr2[i11] = bArr3[(b10 >>> 3) & 31];
        bArr2[i11 + 1] = bArr3[((b10 << 2) | (i12 >>> 6)) & 31];
        bArr2[i11 + 2] = bArr3[(i12 >>> 1) & 31];
        bArr2[i11 + 3] = bArr3[((i12 << 4) | (i13 >>> 4)) & 31];
        bArr2[i11 + 4] = bArr3[((i13 << 1) | (i14 >>> 7)) & 31];
        bArr2[i11 + 5] = bArr3[(i14 >>> 2) & 31];
        bArr2[i11 + 6] = bArr3[(((b11 & 255) >>> 5) | (i14 << 3)) & 31];
        bArr2[i11 + 7] = bArr3[b11 & 31];
    }

    public final boolean i(char c10) {
        return c10 == '\n' || c10 == '\r' || c10 == '\t' || c10 == ' ';
    }

    public void j() {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            byte[] bArr = this.f85887c;
            if (i11 >= bArr.length) {
                break;
            }
            bArr[i11] = -1;
            i11++;
        }
        while (true) {
            byte[] bArr2 = this.f85885a;
            if (i10 >= bArr2.length) {
                return;
            }
            this.f85887c[bArr2[i10]] = (byte) i10;
            i10++;
        }
    }

    public final int k(byte[] bArr, int i10, int i11) {
        while (i10 < i11 && i((char) bArr[i10])) {
            i10++;
        }
        return i10;
    }

    public C13167b(byte[] bArr, byte b10) {
        this.f85887c = new byte[128];
        if (bArr.length != 32) {
            throw new IllegalArgumentException("encoding table needs to be length 32");
        }
        this.f85885a = org.bouncycastle.util.a.p(bArr);
        this.f85886b = b10;
        j();
    }
}
