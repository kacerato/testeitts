package uk;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class C15639a extends InputStream {

    public static final byte[] f120781e = new byte[128];

    public InputStream f120782b;

    public int[] f120783c = new int[3];

    public int f120784d = 3;

    static {
        for (int i10 = 65; i10 <= 90; i10++) {
            f120781e[i10] = (byte) (i10 - 65);
        }
        for (int i11 = 97; i11 <= 122; i11++) {
            f120781e[i11] = (byte) (i11 - 71);
        }
        for (int i12 = 48; i12 <= 57; i12++) {
            f120781e[i12] = (byte) (i12 + 4);
        }
        byte[] bArr = f120781e;
        bArr[43] = 62;
        bArr[47] = Opcodes.OPC_lstore_0;
    }

    public C15639a(InputStream inputStream) {
        this.f120782b = inputStream;
    }

    public final int a(int i10, int i11, int i12, int i13, int[] iArr) throws EOFException {
        if (i13 < 0) {
            throw new EOFException("unexpected end of file in armored stream.");
        }
        if (i12 == 61) {
            byte[] bArr = f120781e;
            iArr[2] = (((bArr[i10] & 255) << 2) | ((bArr[i11] & 255) >> 4)) & 255;
            return 2;
        }
        if (i13 == 61) {
            byte[] bArr2 = f120781e;
            byte b10 = bArr2[i10];
            byte b11 = bArr2[i11];
            byte b12 = bArr2[i12];
            iArr[1] = ((b10 << 2) | (b11 >> 4)) & 255;
            iArr[2] = ((b11 << 4) | (b12 >> 2)) & 255;
            return 1;
        }
        byte[] bArr3 = f120781e;
        byte b13 = bArr3[i10];
        byte b14 = bArr3[i11];
        byte b15 = bArr3[i12];
        byte b16 = bArr3[i13];
        iArr[0] = ((b13 << 2) | (b14 >> 4)) & 255;
        iArr[1] = ((b14 << 4) | (b15 >> 2)) & 255;
        iArr[2] = ((b15 << 6) | b16) & 255;
        return 0;
    }

    @Override
    public int available() throws IOException {
        return 0;
    }

    public final int c() throws IOException {
        while (true) {
            int read = this.f120782b.read();
            if (read != 9 && read != 32) {
                return read;
            }
        }
    }

    @Override
    public void close() throws IOException {
        this.f120782b.close();
    }

    public final int d() throws IOException {
        while (true) {
            int read = this.f120782b.read();
            if (read != 9 && read != 10 && read != 13 && read != 32) {
                return read;
            }
        }
    }

    @Override
    public int read() throws IOException {
        if (this.f120784d > 2) {
            int d10 = d();
            if (d10 < 0) {
                return -1;
            }
            this.f120784d = a(d10, c(), c(), c(), this.f120783c);
        }
        int[] iArr = this.f120783c;
        int i10 = this.f120784d;
        this.f120784d = i10 + 1;
        return iArr[i10];
    }
}
