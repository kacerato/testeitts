package zg;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import net.lingala.zip4j.exception.ZipException;
import vg.C15844a;

public class C16309a extends AbstractC16310b<C15844a> {

    public byte[] f131297g;

    public byte[] f131298h;

    public int f131299i;

    public int f131300j;

    public int f131301k;

    public int f131302l;

    public int f131303m;

    public int f131304n;

    public int f131305o;

    public C16309a(j jVar, Bg.k kVar, char[] cArr, int i10, boolean z10) throws IOException {
        super(jVar, kVar, cArr, i10, z10);
        this.f131297g = new byte[1];
        this.f131298h = new byte[16];
        this.f131299i = 0;
        this.f131300j = 0;
        this.f131301k = 0;
        this.f131302l = 0;
        this.f131303m = 0;
        this.f131304n = 0;
        this.f131305o = 0;
    }

    @Override
    public void b(InputStream inputStream, int i10) throws IOException {
        q(p(inputStream), i10);
    }

    public final void j(byte[] bArr, int i10) {
        int i11 = this.f131301k;
        int i12 = this.f131300j;
        if (i11 >= i12) {
            i11 = i12;
        }
        this.f131304n = i11;
        System.arraycopy(this.f131298h, this.f131299i, bArr, i10, i11);
        n(this.f131304n);
        k(this.f131304n);
        int i13 = this.f131303m;
        int i14 = this.f131304n;
        this.f131303m = i13 + i14;
        this.f131301k -= i14;
        this.f131302l += i14;
    }

    public final void k(int i10) {
        int i11 = this.f131300j - i10;
        this.f131300j = i11;
        if (i11 <= 0) {
            this.f131300j = 0;
        }
    }

    public final byte[] l() throws IOException {
        byte[] bArr = new byte[2];
        h(bArr);
        return bArr;
    }

    public final byte[] m(Bg.k kVar) throws IOException {
        if (kVar.c() == null) {
            throw new IOException("invalid aes extra data record");
        }
        Bg.a c10 = kVar.c();
        if (c10.c() == null) {
            throw new IOException("Invalid aes key strength in aes extra data record");
        }
        byte[] bArr = new byte[c10.c().e()];
        h(bArr);
        return bArr;
    }

    public final void n(int i10) {
        int i11 = this.f131299i + i10;
        this.f131299i = i11;
        if (i11 >= 15) {
            this.f131299i = 15;
        }
    }

    @Override
    public C15844a g(Bg.k kVar, char[] cArr, boolean z10) throws IOException {
        return new C15844a(kVar.c(), cArr, m(kVar), l(), z10);
    }

    public byte[] p(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[10];
        if (Fg.h.l(inputStream, bArr) == 10) {
            return bArr;
        }
        throw new ZipException("Invalid AES Mac bytes. Could not read sufficient data");
    }

    public final void q(byte[] bArr, int i10) throws IOException {
        byte[] bArr2 = new byte[10];
        System.arraycopy(c().b(i10), 0, bArr2, 0, 10);
        if (!Arrays.equals(bArr, bArr2)) {
            throw new IOException("Reached end of data for this entry, but aes verification failed");
        }
    }

    @Override
    public int read() throws IOException {
        if (read(this.f131297g) == -1) {
            return -1;
        }
        return this.f131297g[0];
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        this.f131301k = i11;
        this.f131302l = i10;
        this.f131303m = 0;
        if (this.f131300j != 0) {
            j(bArr, i10);
            int i12 = this.f131303m;
            if (i12 == i11) {
                return i12;
            }
        }
        if (this.f131301k < 16) {
            byte[] bArr2 = this.f131298h;
            int read = super.read(bArr2, 0, bArr2.length);
            this.f131305o = read;
            this.f131299i = 0;
            if (read == -1) {
                this.f131300j = 0;
                int i13 = this.f131303m;
                if (i13 > 0) {
                    return i13;
                }
                return -1;
            }
            this.f131300j = read;
            j(bArr, this.f131302l);
            int i14 = this.f131303m;
            if (i14 == i11) {
                return i14;
            }
        }
        int i15 = this.f131302l;
        int i16 = this.f131301k;
        int read2 = super.read(bArr, i15, i16 - (i16 % 16));
        if (read2 == -1) {
            int i17 = this.f131303m;
            if (i17 > 0) {
                return i17;
            }
            return -1;
        }
        return read2 + this.f131303m;
    }
}
