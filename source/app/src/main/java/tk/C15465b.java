package tk;

import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.util.w;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class C15465b extends InputStream {

    public final InputStream f117703b;

    public final byte[] f117704c;

    public final byte[] f117705d;

    public int f117706e;

    public int f117707f = 0;

    public boolean f117708g = false;

    public int f117709h;

    public C15465b(InputStream inputStream, String str) {
        this.f117706e = 0;
        this.f117703b = inputStream;
        this.f117704c = w.j(str);
        this.f117705d = new byte[str.length() + 3];
        this.f117706e = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a2  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int read() throws IOException {
        int read;
        int read2;
        int read3;
        if (this.f117708g) {
            return -1;
        }
        int i10 = this.f117707f;
        int i11 = this.f117706e;
        if (i10 < i11) {
            byte[] bArr = this.f117705d;
            int i12 = i10 + 1;
            this.f117707f = i12;
            read = bArr[i10] & 255;
            if (i12 < i11) {
                return read;
            }
            this.f117706e = 0;
            this.f117707f = 0;
        } else {
            read = this.f117703b.read();
        }
        this.f117709h = read;
        if (read < 0) {
            return -1;
        }
        if (read == 13 || read == 10) {
            this.f117707f = 0;
            if (read == 13) {
                read2 = this.f117703b.read();
                if (read2 == 10) {
                    byte[] bArr2 = this.f117705d;
                    int i13 = this.f117706e;
                    this.f117706e = i13 + 1;
                    bArr2[i13] = 10;
                }
                if (read2 == 45) {
                    byte[] bArr3 = this.f117705d;
                    int i14 = this.f117706e;
                    this.f117706e = i14 + 1;
                    bArr3[i14] = Opcodes.OPC_aload_3;
                    read2 = this.f117703b.read();
                }
                if (read2 != 45) {
                    byte[] bArr4 = this.f117705d;
                    int i15 = this.f117706e;
                    int i16 = i15 + 1;
                    this.f117706e = i16;
                    bArr4[i15] = Opcodes.OPC_aload_3;
                    while (true) {
                        if (this.f117706e - i16 == this.f117704c.length || (read3 = this.f117703b.read()) < 0) {
                            break;
                        }
                        byte[] bArr5 = this.f117705d;
                        int i17 = this.f117706e;
                        byte b10 = (byte) read3;
                        bArr5[i17] = b10;
                        if (b10 != this.f117704c[i17 - i16]) {
                            this.f117706e = i17 + 1;
                            break;
                        }
                        this.f117706e = i17 + 1;
                    }
                    if (this.f117706e - i16 == this.f117704c.length) {
                        this.f117708g = true;
                        return -1;
                    }
                } else if (read2 >= 0) {
                    byte[] bArr6 = this.f117705d;
                    int i18 = this.f117706e;
                    this.f117706e = i18 + 1;
                    bArr6[i18] = (byte) read2;
                }
            }
            read2 = this.f117703b.read();
            if (read2 == 45) {
            }
            if (read2 != 45) {
            }
        }
        return read;
    }
}
