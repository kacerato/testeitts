package Ag;

import Bg.m;
import Bg.r;
import Bg.s;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.zip.CRC32;
import net.lingala.zip4j.exception.ZipException;
import yg.C16185a;
import yg.C16189e;
import yg.EnumC16187c;

public class k extends OutputStream {

    public d f560b;

    public char[] f561c;

    public r f562d;

    public c f563e;

    public Bg.j f564f;

    public Bg.k f565g;

    public C16185a f566h;

    public C16189e f567i;

    public CRC32 f568j;

    public Fg.f f569k;

    public long f570l;

    public m f571m;

    public boolean f572n;

    public boolean f573o;

    public k(OutputStream outputStream) throws IOException {
        this(outputStream, null, null);
    }

    public final s a(s sVar) {
        s sVar2 = new s(sVar);
        if (Fg.c.A(sVar.k())) {
            sVar2.P(false);
            sVar2.y(Cg.d.STORE);
            sVar2.A(false);
            sVar2.D(0L);
        }
        if (sVar.l() <= 0) {
            sVar2.I(System.currentTimeMillis());
        }
        return sVar2;
    }

    public Bg.j c() throws IOException {
        this.f563e.c();
        long d10 = this.f563e.d();
        this.f564f.w(d10);
        this.f565g.w(d10);
        this.f564f.K(this.f570l);
        this.f565g.K(this.f570l);
        if (o(this.f564f)) {
            this.f564f.y(this.f568j.getValue());
            this.f565g.y(this.f568j.getValue());
        }
        this.f562d.f().add(this.f565g);
        this.f562d.b().b().add(this.f564f);
        if (this.f565g.r()) {
            this.f567i.o(this.f565g, this.f560b);
        }
        l();
        this.f573o = true;
        return this.f564f;
    }

    @Override
    public void close() throws IOException {
        if (!this.f573o) {
            c();
        }
        this.f562d.e().o(this.f560b.e());
        this.f567i.d(this.f562d, this.f560b, this.f571m.b());
        this.f560b.close();
        this.f572n = true;
    }

    public final void d() throws IOException {
        if (this.f572n) {
            throw new IOException("Stream is closed");
        }
    }

    public final void e(s sVar) throws IOException {
        Bg.j d10 = this.f566h.d(sVar, this.f560b.h(), this.f560b.d(), this.f571m.b(), this.f569k);
        this.f564f = d10;
        d10.a0(this.f560b.f());
        Bg.k f10 = this.f566h.f(this.f564f);
        this.f565g = f10;
        this.f567i.q(this.f562d, f10, this.f560b, this.f571m.b());
    }

    public final b<?> f(j jVar, s sVar) throws IOException {
        if (!sVar.o()) {
            return new f(jVar, sVar, null);
        }
        char[] cArr = this.f561c;
        if (cArr == null || cArr.length == 0) {
            throw new ZipException("password not set");
        }
        if (sVar.f() == Cg.e.AES) {
            return new a(jVar, sVar, this.f561c, this.f571m.c());
        }
        if (sVar.f() == Cg.e.ZIP_STANDARD) {
            return new l(jVar, sVar, this.f561c, this.f571m.c());
        }
        Cg.e f10 = sVar.f();
        Cg.e eVar = Cg.e.ZIP_STANDARD_VARIANT_STRONG;
        if (f10 != eVar) {
            throw new ZipException("Invalid encryption method");
        }
        throw new ZipException(((Object) eVar) + " encryption method is not supported");
    }

    public final c g(b<?> bVar, s sVar) {
        return sVar.d() == Cg.d.DEFLATE ? new e(bVar, sVar.c(), this.f571m.a()) : new i(bVar);
    }

    public final c h(s sVar) throws IOException {
        return g(f(new j(this.f560b), sVar), sVar);
    }

    public final r j(r rVar, d dVar) {
        if (rVar == null) {
            rVar = new r();
        }
        if (dVar.h()) {
            rVar.v(true);
            rVar.w(dVar.g());
        }
        return rVar;
    }

    public void k(s sVar) throws IOException {
        n(sVar);
        s a10 = a(sVar);
        e(a10);
        this.f563e = h(a10);
        this.f573o = false;
    }

    public final void l() throws IOException {
        this.f570l = 0L;
        this.f568j.reset();
        this.f563e.close();
    }

    public void m(String str) throws IOException {
        d();
        this.f562d.e().k(str);
    }

    public final void n(s sVar) {
        if (Fg.h.k(sVar.k())) {
            throw new IllegalArgumentException("fileNameInZip is null or empty");
        }
        if (sVar.d() == Cg.d.STORE && sVar.h() < 0 && !Fg.c.A(sVar.k()) && sVar.u()) {
            throw new IllegalArgumentException("uncompressed size should be set for zip entries of compression type store");
        }
    }

    public final boolean o(Bg.j jVar) {
        if (jVar.t() && jVar.g().equals(Cg.e.AES)) {
            return jVar.c().d().equals(Cg.b.ONE);
        }
        return true;
    }

    public final void p() throws IOException {
        if (this.f560b.h()) {
            this.f569k.o(this.f560b, (int) EnumC16187c.SPLIT_ZIP.a());
        }
    }

    @Override
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10});
    }

    public k(OutputStream outputStream, Charset charset) throws IOException {
        this(outputStream, null, charset);
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    public k(OutputStream outputStream, char[] cArr) throws IOException {
        this(outputStream, cArr, null);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        d();
        this.f568j.update(bArr, i10, i11);
        this.f563e.write(bArr, i10, i11);
        this.f570l += i11;
    }

    public k(OutputStream outputStream, char[] cArr, Charset charset) throws IOException {
        this(outputStream, cArr, new m(charset, 4096, true), new r());
    }

    public k(OutputStream outputStream, char[] cArr, m mVar, r rVar) throws IOException {
        this.f566h = new C16185a();
        this.f567i = new C16189e();
        this.f568j = new CRC32();
        this.f569k = new Fg.f();
        this.f570l = 0L;
        this.f573o = true;
        if (mVar.a() >= 512) {
            d dVar = new d(outputStream);
            this.f560b = dVar;
            this.f561c = cArr;
            this.f571m = mVar;
            this.f562d = j(rVar, dVar);
            this.f572n = false;
            p();
            return;
        }
        throw new IllegalArgumentException("Buffer size cannot be less than 512 bytes");
    }
}
