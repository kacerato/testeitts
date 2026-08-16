package zg;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import java.util.zip.CRC32;
import net.lingala.zip4j.exception.ZipException;
import yd.C16181m;
import yg.C16186b;
import yg.EnumC16187c;

public class k extends InputStream {

    public PushbackInputStream f131329b;

    public c f131330c;

    public C16186b f131331d;

    public char[] f131332e;

    public Fg.e f131333f;

    public Bg.k f131334g;

    public CRC32 f131335h;

    public byte[] f131336i;

    public boolean f131337j;

    public Bg.m f131338k;

    public boolean f131339l;

    public boolean f131340m;

    public k(InputStream inputStream) {
        this(inputStream, (char[]) null, (Charset) null);
    }

    @Override
    public int available() throws IOException {
        c();
        return !this.f131340m ? 1 : 0;
    }

    public final void c() throws IOException {
        if (this.f131339l) {
            throw new IOException("Stream closed");
        }
    }

    @Override
    public void close() throws IOException {
        if (this.f131339l) {
            return;
        }
        c cVar = this.f131330c;
        if (cVar != null) {
            cVar.close();
        }
        this.f131339l = true;
    }

    public final boolean d(List<Bg.i> list) {
        if (list == null) {
            return false;
        }
        Iterator<Bg.i> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().d() == EnumC16187c.ZIP64_EXTRA_FIELD_SIGNATURE.a()) {
                return true;
            }
        }
        return false;
    }

    public final void e() throws IOException {
        this.f131330c.a(this.f131329b, this.f131330c.d(this.f131329b));
        q();
        u();
        s();
        this.f131340m = true;
    }

    public final int f(Bg.a aVar) throws ZipException {
        if (aVar == null || aVar.c() == null) {
            throw new ZipException("AesExtraDataRecord not found or invalid for Aes encrypted entry");
        }
        return aVar.c().e() + 12;
    }

    public final long g(Bg.k kVar) throws ZipException {
        if (Fg.h.i(kVar).equals(Cg.d.STORE)) {
            return kVar.o();
        }
        if (!kVar.r() || this.f131337j) {
            return kVar.d() - h(kVar);
        }
        return -1L;
    }

    public final int h(Bg.k kVar) throws ZipException {
        if (kVar.t()) {
            return kVar.g().equals(Cg.e.AES) ? f(kVar.c()) : kVar.g().equals(Cg.e.ZIP_STANDARD) ? 12 : 0;
        }
        return 0;
    }

    public Bg.k j() throws IOException {
        return k(null, true);
    }

    public Bg.k k(Bg.j jVar, boolean z10) throws IOException {
        Fg.e eVar;
        if (this.f131334g != null && z10) {
            r();
        }
        Bg.k p10 = this.f131331d.p(this.f131329b, this.f131338k.b());
        this.f131334g = p10;
        if (p10 == null) {
            return null;
        }
        if (p10.t() && this.f131332e == null && (eVar = this.f131333f) != null) {
            t(eVar.getPassword());
        }
        v(this.f131334g);
        this.f131335h.reset();
        if (jVar != null) {
            this.f131334g.y(jVar.f());
            this.f131334g.w(jVar.d());
            this.f131334g.K(jVar.o());
            this.f131334g.A(jVar.s());
            this.f131337j = true;
        } else {
            this.f131337j = false;
        }
        this.f131330c = n(this.f131334g);
        this.f131340m = false;
        return this.f131334g;
    }

    public final AbstractC16310b<?> l(j jVar, Bg.k kVar) throws IOException {
        if (!kVar.t()) {
            return new e(jVar, kVar, this.f131332e, this.f131338k.a());
        }
        if (kVar.g() == Cg.e.AES) {
            return new C16309a(jVar, kVar, this.f131332e, this.f131338k.a(), this.f131338k.c());
        }
        if (kVar.g() == Cg.e.ZIP_STANDARD) {
            return new l(jVar, kVar, this.f131332e, this.f131338k.a(), this.f131338k.c());
        }
        throw new ZipException(String.format("Entry [%s] Strong Encryption not supported", kVar.j()), ZipException.a.UNSUPPORTED_ENCRYPTION);
    }

    public final c m(AbstractC16310b<?> abstractC16310b, Bg.k kVar) throws ZipException {
        return Fg.h.i(kVar) == Cg.d.DEFLATE ? new d(abstractC16310b, this.f131338k.a()) : new i(abstractC16310b);
    }

    public final c n(Bg.k kVar) throws IOException {
        return m(l(new j(this.f131329b, g(kVar)), kVar), kVar);
    }

    public final boolean o(Bg.k kVar) {
        return kVar.t() && Cg.e.ZIP_STANDARD.equals(kVar.g());
    }

    public final boolean p(String str) {
        return str.endsWith("/") || str.endsWith(C16181m.f130232i);
    }

    public final void q() throws IOException {
        if (!this.f131334g.r() || this.f131337j) {
            return;
        }
        Bg.e j10 = this.f131331d.j(this.f131329b, d(this.f131334g.h()));
        this.f131334g.w(j10.c());
        this.f131334g.K(j10.e());
        this.f131334g.y(j10.d());
    }

    public final void r() throws IOException {
        if (this.f131336i == null) {
            this.f131336i = new byte[512];
        }
        do {
        } while (read(this.f131336i) != -1);
        this.f131340m = true;
    }

    @Override
    public int read() throws IOException {
        byte[] bArr = new byte[1];
        if (read(bArr) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    public final void s() {
        this.f131334g = null;
        this.f131335h.reset();
    }

    public void t(char[] cArr) {
        this.f131332e = cArr;
    }

    public final void u() throws IOException {
        if ((this.f131334g.g() == Cg.e.AES && this.f131334g.c().d().equals(Cg.b.TWO)) || this.f131334g.f() == this.f131335h.getValue()) {
            return;
        }
        ZipException.a aVar = ZipException.a.CHECKSUM_MISMATCH;
        if (o(this.f131334g)) {
            aVar = ZipException.a.WRONG_PASSWORD;
        }
        throw new ZipException("Reached end of entry, but crc verification failed for " + this.f131334g.j(), aVar);
    }

    public final void v(Bg.k kVar) throws IOException {
        if (p(kVar.j()) || kVar.e() != Cg.d.STORE || kVar.o() >= 0) {
            return;
        }
        throw new IOException("Invalid local file header for: " + kVar.j() + ". Uncompressed size has to be set for entry of compression type store which is not a directory");
    }

    public k(InputStream inputStream, Charset charset) {
        this(inputStream, (char[]) null, charset);
    }

    public k(InputStream inputStream, char[] cArr) {
        this(inputStream, cArr, (Charset) null);
    }

    public k(InputStream inputStream, Fg.e eVar) {
        this(inputStream, eVar, (Charset) null);
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    public k(InputStream inputStream, char[] cArr, Charset charset) {
        this(inputStream, cArr, new Bg.m(charset, 4096, true));
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (this.f131339l) {
            throw new IOException("Stream closed");
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("Negative read length");
        }
        if (i11 == 0) {
            return 0;
        }
        if (this.f131334g == null) {
            return -1;
        }
        try {
            int read = this.f131330c.read(bArr, i10, i11);
            if (read == -1) {
                e();
            } else {
                this.f131335h.update(bArr, i10, read);
            }
            return read;
        } catch (IOException e10) {
            if (o(this.f131334g)) {
                throw new ZipException(e10.getMessage(), e10.getCause(), ZipException.a.WRONG_PASSWORD);
            }
            throw e10;
        }
    }

    public k(InputStream inputStream, Fg.e eVar, Charset charset) {
        this(inputStream, eVar, new Bg.m(charset, 4096, true));
    }

    public k(InputStream inputStream, char[] cArr, Bg.m mVar) {
        this(inputStream, cArr, null, mVar);
    }

    public k(InputStream inputStream, Fg.e eVar, Bg.m mVar) {
        this(inputStream, null, eVar, mVar);
    }

    public k(InputStream inputStream, char[] cArr, Fg.e eVar, Bg.m mVar) {
        this.f131331d = new C16186b();
        this.f131335h = new CRC32();
        this.f131337j = false;
        this.f131339l = false;
        this.f131340m = false;
        if (mVar.a() >= 512) {
            this.f131329b = new PushbackInputStream(inputStream, mVar.a());
            this.f131332e = cArr;
            this.f131333f = eVar;
            this.f131338k = mVar;
            return;
        }
        throw new IllegalArgumentException("Buffer size cannot be less than 512 bytes");
    }
}
