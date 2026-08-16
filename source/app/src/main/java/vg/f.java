package vg;

import net.lingala.zip4j.exception.ZipException;
import xg.C16113b;

public class f implements d {

    public C16113b f121607a = new C16113b();

    public f(char[] cArr, long j10, long j11, byte[] bArr, boolean z10) throws ZipException {
        b(bArr, cArr, j11, j10, z10);
    }

    @Override
    public int a(byte[] bArr, int i10, int i11) throws ZipException {
        if (i10 < 0 || i11 < 0) {
            throw new ZipException("one of the input parameters were null in standard decrypt data");
        }
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            byte b10 = (byte) (((bArr[i12] & 255) ^ this.f121607a.b()) & 255);
            this.f121607a.d(b10);
            bArr[i12] = b10;
        }
        return i11;
    }

    public final void b(byte[] bArr, char[] cArr, long j10, long j11, boolean z10) throws ZipException {
        byte b10;
        if (cArr == null || cArr.length <= 0) {
            throw new ZipException("Wrong password!", ZipException.a.WRONG_PASSWORD);
        }
        this.f121607a.c(cArr, z10);
        int i10 = 0;
        byte b11 = bArr[0];
        while (i10 < 12) {
            i10++;
            if (i10 == 12 && (b10 = (byte) (this.f121607a.b() ^ b11)) != ((byte) (j11 >> 24)) && b10 != ((byte) (j10 >> 8))) {
                throw new ZipException("Wrong password!", ZipException.a.WRONG_PASSWORD);
            }
            C16113b c16113b = this.f121607a;
            c16113b.d((byte) (c16113b.b() ^ b11));
            if (i10 != 12) {
                b11 = bArr[i10];
            }
        }
    }
}
