package vg;

import java.security.SecureRandom;
import net.lingala.zip4j.exception.ZipException;
import xg.C16113b;

public class g implements e {

    public final C16113b f121608a = new C16113b();

    public byte[] f121609b;

    public g(char[] cArr, long j10, boolean z10) throws ZipException {
        f(cArr, j10, z10);
    }

    @Override
    public int a(byte[] bArr, int i10, int i11) throws ZipException {
        if (i11 < 0) {
            throw new ZipException("invalid length specified to decrpyt data");
        }
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            bArr[i12] = c(bArr[i12]);
        }
        return i11;
    }

    @Override
    public int b(byte[] bArr) throws ZipException {
        bArr.getClass();
        return a(bArr, 0, bArr.length);
    }

    public byte c(byte b10) {
        byte b11 = (byte) ((this.f121608a.b() & 255) ^ b10);
        this.f121608a.d(b10);
        return b11;
    }

    public byte[] d() {
        byte[] bArr = new byte[12];
        SecureRandom secureRandom = new SecureRandom();
        for (int i10 = 0; i10 < 12; i10++) {
            bArr[i10] = c((byte) secureRandom.nextInt(256));
        }
        return bArr;
    }

    public byte[] e() {
        return this.f121609b;
    }

    public final void f(char[] cArr, long j10, boolean z10) throws ZipException {
        if (cArr == null || cArr.length <= 0) {
            throw new ZipException("input password is null or empty, cannot initialize standard encrypter");
        }
        this.f121608a.c(cArr, z10);
        this.f121609b = d();
        this.f121608a.c(cArr, z10);
        byte[] bArr = this.f121609b;
        bArr[11] = (byte) (j10 >>> 24);
        bArr[10] = (byte) (j10 >>> 16);
        b(bArr);
    }
}
