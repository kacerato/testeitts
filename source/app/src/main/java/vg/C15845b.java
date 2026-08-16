package vg;

import java.security.SecureRandom;
import net.lingala.zip4j.exception.ZipException;
import wg.C15999b;
import xg.C16112a;

public class C15845b implements e {

    public C16112a f121596a;

    public C15999b f121597b;

    public boolean f121599d;

    public final byte[] f121602g;

    public final byte[] f121603h;

    public byte[] f121604i;

    public byte[] f121605j;

    public final SecureRandom f121598c = new SecureRandom();

    public int f121600e = 1;

    public int f121601f = 0;

    public C15845b(char[] cArr, Cg.a aVar, boolean z10) throws ZipException {
        if (cArr == null || cArr.length == 0) {
            throw new ZipException("input password is empty or null");
        }
        if (aVar != Cg.a.KEY_STRENGTH_128 && aVar != Cg.a.KEY_STRENGTH_256) {
            throw new ZipException("Invalid AES key strength");
        }
        this.f121599d = false;
        this.f121603h = new byte[16];
        this.f121602g = new byte[16];
        g(cArr, aVar, z10);
    }

    @Override
    public int a(byte[] bArr, int i10, int i11) throws ZipException {
        int i12;
        if (this.f121599d) {
            throw new ZipException("AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)");
        }
        if (i11 % 16 != 0) {
            this.f121599d = true;
        }
        int i13 = i10;
        while (true) {
            int i14 = i10 + i11;
            if (i13 >= i14) {
                return i11;
            }
            int i15 = i13 + 16;
            this.f121601f = i15 <= i14 ? 16 : i14 - i13;
            C15846c.e(this.f121602g, this.f121600e);
            this.f121596a.e(this.f121602g, this.f121603h);
            int i16 = 0;
            while (true) {
                i12 = this.f121601f;
                if (i16 < i12) {
                    int i17 = i13 + i16;
                    bArr[i17] = (byte) (bArr[i17] ^ this.f121603h[i16]);
                    i16++;
                }
            }
            this.f121597b.h(bArr, i13, i12);
            this.f121600e++;
            i13 = i15;
        }
    }

    @Override
    public int b(byte[] bArr) throws ZipException {
        if (bArr != null) {
            return a(bArr, 0, bArr.length);
        }
        throw new ZipException("input bytes are null, cannot perform AES encryption");
    }

    public final byte[] c(int i10) throws ZipException {
        if (i10 != 8 && i10 != 16) {
            throw new ZipException("invalid salt size, cannot generate salt");
        }
        int i11 = i10 == 8 ? 2 : 4;
        byte[] bArr = new byte[i10];
        for (int i12 = 0; i12 < i11; i12++) {
            int nextInt = this.f121598c.nextInt();
            int i13 = i12 * 4;
            bArr[i13] = (byte) (nextInt >> 24);
            bArr[i13 + 1] = (byte) (nextInt >> 16);
            bArr[i13 + 2] = (byte) (nextInt >> 8);
            bArr[i13 + 3] = (byte) nextInt;
        }
        return bArr;
    }

    public byte[] d() {
        return this.f121604i;
    }

    public byte[] e() {
        byte[] bArr = new byte[10];
        System.arraycopy(this.f121597b.d(), 0, bArr, 0, 10);
        return bArr;
    }

    public byte[] f() {
        return this.f121605j;
    }

    public final void g(char[] cArr, Cg.a aVar, boolean z10) throws ZipException {
        byte[] c10 = c(aVar.e());
        this.f121605j = c10;
        byte[] a10 = C15846c.a(c10, cArr, aVar, z10);
        this.f121604i = C15846c.b(a10, aVar);
        this.f121596a = C15846c.c(a10, aVar);
        this.f121597b = C15846c.d(a10, aVar);
    }
}
