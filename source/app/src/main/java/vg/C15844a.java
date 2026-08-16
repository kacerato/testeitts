package vg;

import java.util.Arrays;
import net.lingala.zip4j.exception.ZipException;
import wg.C15999b;
import xg.C16112a;

public class C15844a implements d {

    public C16112a f121591a;

    public C15999b f121592b;

    public int f121593c = 1;

    public byte[] f121594d = new byte[16];

    public byte[] f121595e = new byte[16];

    public C15844a(Bg.a aVar, char[] cArr, byte[] bArr, byte[] bArr2, boolean z10) throws ZipException {
        c(bArr, bArr2, cArr, aVar, z10);
    }

    @Override
    public int a(byte[] bArr, int i10, int i11) throws ZipException {
        int i12 = i10;
        while (true) {
            int i13 = i10 + i11;
            if (i12 >= i13) {
                return i11;
            }
            int i14 = i12 + 16;
            int i15 = i14 <= i13 ? 16 : i13 - i12;
            this.f121592b.h(bArr, i12, i15);
            C15846c.e(this.f121594d, this.f121593c);
            this.f121591a.e(this.f121594d, this.f121595e);
            for (int i16 = 0; i16 < i15; i16++) {
                int i17 = i12 + i16;
                bArr[i17] = (byte) (bArr[i17] ^ this.f121595e[i16]);
            }
            this.f121593c++;
            i12 = i14;
        }
    }

    public byte[] b(int i10) {
        return this.f121592b.e(i10);
    }

    public final void c(byte[] bArr, byte[] bArr2, char[] cArr, Bg.a aVar, boolean z10) throws ZipException {
        if (cArr == null || cArr.length <= 0) {
            throw new ZipException("empty or null password provided for AES decryption", ZipException.a.WRONG_PASSWORD);
        }
        Cg.a c10 = aVar.c();
        byte[] a10 = C15846c.a(bArr, cArr, c10, z10);
        if (!Arrays.equals(bArr2, C15846c.b(a10, c10))) {
            throw new ZipException("Wrong Password", ZipException.a.WRONG_PASSWORD);
        }
        this.f121591a = C15846c.c(a10, c10);
        this.f121592b = C15846c.d(a10, c10);
    }
}
