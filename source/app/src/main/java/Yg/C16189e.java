package yg;

import Ag.h;
import Bg.i;
import Bg.j;
import Bg.k;
import Bg.n;
import Bg.o;
import Bg.r;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;

public class C16189e {

    public static final short f130259d = 16;

    public static final short f130260e = 28;

    public static final short f130261f = 11;

    public final Fg.f f130262a = new Fg.f();

    public final byte[] f130263b = new byte[8];

    public final byte[] f130264c = new byte[4];

    public final o a(r rVar, int i10, long j10) throws ZipException {
        o oVar = new o();
        oVar.b(EnumC16187c.ZIP64_END_CENTRAL_DIRECTORY_RECORD);
        oVar.r(44L);
        if (rVar.b() != null && rVar.b().b() != null && rVar.b().b().size() > 0) {
            j jVar = rVar.b().b().get(0);
            oVar.u(jVar.U());
            oVar.v(jVar.p());
        }
        oVar.n(rVar.e().d());
        oVar.o(rVar.e().e());
        long size = rVar.b().b().size();
        oVar.t(rVar.m() ? c(rVar.b().b(), rVar.e().d()) : size);
        oVar.s(size);
        oVar.q(i10);
        oVar.p(j10);
        return oVar;
    }

    public final int b(j jVar, boolean z10) {
        int i10 = z10 ? 32 : 0;
        if (jVar.c() != null) {
            i10 += 11;
        }
        if (jVar.h() != null) {
            for (i iVar : jVar.h()) {
                if (iVar.d() != EnumC16187c.AES_EXTRA_DATA_RECORD.a() && iVar.d() != EnumC16187c.ZIP64_EXTRA_FIELD_SIGNATURE.a()) {
                    i10 += iVar.e() + 4;
                }
            }
        }
        return i10;
    }

    public final long c(List<j> list, int i10) throws ZipException {
        if (list == null) {
            throw new ZipException("file headers are null, cannot calculate number of entries on this disk");
        }
        Iterator<j> it = list.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            if (it.next().O() == i10) {
                i11++;
            }
        }
        return i11;
    }

    public void d(r rVar, OutputStream outputStream, Charset charset) throws IOException {
        if (rVar == null || outputStream == null) {
            throw new ZipException("input parameters is null, cannot finalize zip file");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            j(rVar, outputStream);
            long g10 = g(rVar);
            m(rVar, byteArrayOutputStream, this.f130262a, charset);
            int size = byteArrayOutputStream.size();
            if (!rVar.n()) {
                if (g10 < 4294967295L) {
                    if (rVar.b().b().size() >= 65535) {
                    }
                    n(rVar, size, g10, byteArrayOutputStream, this.f130262a, charset);
                    u(rVar, outputStream, byteArrayOutputStream.toByteArray(), charset);
                    byteArrayOutputStream.close();
                }
            }
            if (rVar.j() == null) {
                rVar.z(new o());
            }
            if (rVar.i() == null) {
                rVar.y(new n());
            }
            rVar.i().g(size + g10);
            if (h(outputStream)) {
                int f10 = f(outputStream);
                rVar.i().f(f10);
                rVar.i().h(f10 + 1);
            } else {
                rVar.i().f(0);
                rVar.i().h(1);
            }
            o a10 = a(rVar, size, g10);
            rVar.z(a10);
            t(a10, byteArrayOutputStream, this.f130262a);
            s(rVar.i(), byteArrayOutputStream, this.f130262a);
            n(rVar, size, g10, byteArrayOutputStream, this.f130262a, charset);
            u(rVar, outputStream, byteArrayOutputStream.toByteArray(), charset);
            byteArrayOutputStream.close();
        } catch (Throwable th2) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public void e(r rVar, OutputStream outputStream, Charset charset) throws IOException {
        if (rVar == null || outputStream == null) {
            throw new ZipException("input parameters is null, cannot finalize zip file without validations");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            long g10 = g(rVar);
            m(rVar, byteArrayOutputStream, this.f130262a, charset);
            int size = byteArrayOutputStream.size();
            if (!rVar.n()) {
                if (g10 < 4294967295L) {
                    if (rVar.b().b().size() >= 65535) {
                    }
                    n(rVar, size, g10, byteArrayOutputStream, this.f130262a, charset);
                    u(rVar, outputStream, byteArrayOutputStream.toByteArray(), charset);
                    byteArrayOutputStream.close();
                }
            }
            if (rVar.j() == null) {
                rVar.z(new o());
            }
            if (rVar.i() == null) {
                rVar.y(new n());
            }
            rVar.i().g(size + g10);
            o a10 = a(rVar, size, g10);
            rVar.z(a10);
            t(a10, byteArrayOutputStream, this.f130262a);
            s(rVar.i(), byteArrayOutputStream, this.f130262a);
            n(rVar, size, g10, byteArrayOutputStream, this.f130262a, charset);
            u(rVar, outputStream, byteArrayOutputStream.toByteArray(), charset);
            byteArrayOutputStream.close();
        } catch (Throwable th2) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final int f(OutputStream outputStream) {
        return outputStream instanceof h ? ((h) outputStream).d() : ((Ag.d) outputStream).d();
    }

    public final long g(r rVar) {
        return (!rVar.n() || rVar.j() == null || rVar.j().f() == -1) ? rVar.e().g() : rVar.j().f();
    }

    public final boolean h(OutputStream outputStream) {
        if (outputStream instanceof h) {
            return ((h) outputStream).h();
        }
        if (outputStream instanceof Ag.d) {
            return ((Ag.d) outputStream).h();
        }
        return false;
    }

    public final boolean i(j jVar) {
        return jVar.d() >= 4294967295L || jVar.o() >= 4294967295L || jVar.T() >= 4294967295L || jVar.O() >= 65535;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void j(r rVar, OutputStream outputStream) throws IOException {
        int i10;
        if (outputStream instanceof Ag.g) {
            Ag.g gVar = (Ag.g) outputStream;
            rVar.e().o(gVar.c());
            i10 = gVar.d();
        } else {
            i10 = 0;
        }
        if (rVar.n()) {
            if (rVar.j() == null) {
                rVar.z(new o());
            }
            if (rVar.i() == null) {
                rVar.y(new n());
            }
            rVar.j().p(rVar.e().g());
            rVar.i().f(i10);
            rVar.i().h(i10 + 1);
        }
        rVar.e().l(i10);
        rVar.e().m(i10);
    }

    public final void k(h hVar, j jVar) throws IOException {
        if (jVar.o() < 4294967295L) {
            this.f130262a.r(this.f130263b, 0, jVar.d());
            hVar.write(this.f130263b, 0, 4);
            this.f130262a.r(this.f130263b, 0, jVar.o());
            hVar.write(this.f130263b, 0, 4);
            return;
        }
        this.f130262a.r(this.f130263b, 0, 4294967295L);
        hVar.write(this.f130263b, 0, 4);
        hVar.write(this.f130263b, 0, 4);
        int k10 = jVar.k() + 8;
        if (hVar.k(k10) == k10) {
            this.f130262a.q(hVar, jVar.o());
            this.f130262a.q(hVar, jVar.d());
        } else {
            throw new ZipException("Unable to skip " + k10 + " bytes to update LFH");
        }
    }

    public void l(j jVar, r rVar, h hVar) throws IOException {
        h hVar2;
        boolean z10;
        String str;
        String str2;
        if (jVar == null || rVar == null) {
            throw new ZipException("invalid input parameters, cannot update local file header");
        }
        if (jVar.O() != hVar.d()) {
            String parent = rVar.k().getParent();
            String u10 = Fg.c.u(rVar.k().getName());
            if (parent != null) {
                str = parent + System.getProperty("file.separator");
            } else {
                str = "";
            }
            z10 = true;
            if (jVar.O() < 9) {
                str2 = str + u10 + ".z0" + (jVar.O() + 1);
            } else {
                str2 = str + u10 + ".z" + (jVar.O() + 1);
            }
            hVar2 = new h(new File(str2));
        } else {
            hVar2 = hVar;
            z10 = false;
        }
        long c10 = hVar2.c();
        hVar2.j(jVar.T() + 14);
        this.f130262a.r(this.f130263b, 0, jVar.f());
        hVar2.write(this.f130263b, 0, 4);
        k(hVar2, jVar);
        if (z10) {
            hVar2.close();
        } else {
            hVar.j(c10);
        }
    }

    public final void m(r rVar, ByteArrayOutputStream byteArrayOutputStream, Fg.f fVar, Charset charset) throws ZipException {
        if (rVar.b() == null || rVar.b().b() == null || rVar.b().b().size() <= 0) {
            return;
        }
        Iterator<j> it = rVar.b().b().iterator();
        while (it.hasNext()) {
            p(rVar, it.next(), byteArrayOutputStream, fVar, charset);
        }
    }

    public final void n(r rVar, int i10, long j10, ByteArrayOutputStream byteArrayOutputStream, Fg.f fVar, Charset charset) throws IOException {
        byte[] bArr = new byte[8];
        fVar.o(byteArrayOutputStream, (int) EnumC16187c.END_OF_CENTRAL_DIRECTORY.a());
        fVar.s(byteArrayOutputStream, rVar.e().d());
        fVar.s(byteArrayOutputStream, rVar.e().e());
        long size = rVar.b().b().size();
        long c10 = rVar.m() ? c(rVar.b().b(), rVar.e().d()) : size;
        if (c10 > Sg.b.f23266s) {
            c10 = 65535;
        }
        fVar.s(byteArrayOutputStream, (int) c10);
        if (size > Sg.b.f23266s) {
            size = 65535;
        }
        fVar.s(byteArrayOutputStream, (int) size);
        fVar.o(byteArrayOutputStream, i10);
        if (j10 > 4294967295L) {
            fVar.r(bArr, 0, 4294967295L);
            byteArrayOutputStream.write(bArr, 0, 4);
        } else {
            fVar.r(bArr, 0, j10);
            byteArrayOutputStream.write(bArr, 0, 4);
        }
        String c11 = rVar.e().c();
        if (!Fg.h.j(c11)) {
            fVar.s(byteArrayOutputStream, 0);
            return;
        }
        byte[] b10 = C16188d.b(c11, charset);
        fVar.s(byteArrayOutputStream, b10.length);
        byteArrayOutputStream.write(b10);
    }

    public void o(k kVar, OutputStream outputStream) throws IOException {
        if (kVar == null || outputStream == null) {
            throw new ZipException("input parameters is null, cannot write extended local header");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            this.f130262a.o(byteArrayOutputStream, (int) EnumC16187c.EXTRA_DATA_RECORD.a());
            this.f130262a.r(this.f130263b, 0, kVar.f());
            byteArrayOutputStream.write(this.f130263b, 0, 4);
            if (kVar.P()) {
                this.f130262a.q(byteArrayOutputStream, kVar.d());
                this.f130262a.q(byteArrayOutputStream, kVar.o());
            } else {
                this.f130262a.r(this.f130263b, 0, kVar.d());
                byteArrayOutputStream.write(this.f130263b, 0, 4);
                this.f130262a.r(this.f130263b, 0, kVar.o());
                byteArrayOutputStream.write(this.f130263b, 0, 4);
            }
            outputStream.write(byteArrayOutputStream.toByteArray());
            byteArrayOutputStream.close();
        } catch (Throwable th2) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final void p(r rVar, j jVar, ByteArrayOutputStream byteArrayOutputStream, Fg.f fVar, Charset charset) throws ZipException {
        if (jVar == null) {
            throw new ZipException("input parameters is null, cannot write local file header");
        }
        try {
            byte[] bArr = {0, 0};
            boolean i10 = i(jVar);
            fVar.o(byteArrayOutputStream, (int) jVar.a().a());
            fVar.s(byteArrayOutputStream, jVar.U());
            fVar.s(byteArrayOutputStream, jVar.p());
            byteArrayOutputStream.write(jVar.l());
            fVar.s(byteArrayOutputStream, jVar.e().a());
            fVar.r(this.f130263b, 0, jVar.m());
            byteArrayOutputStream.write(this.f130263b, 0, 4);
            fVar.r(this.f130263b, 0, jVar.f());
            byteArrayOutputStream.write(this.f130263b, 0, 4);
            if (i10) {
                fVar.r(this.f130263b, 0, 4294967295L);
                byteArrayOutputStream.write(this.f130263b, 0, 4);
                byteArrayOutputStream.write(this.f130263b, 0, 4);
                rVar.A(true);
            } else {
                fVar.r(this.f130263b, 0, jVar.d());
                byteArrayOutputStream.write(this.f130263b, 0, 4);
                fVar.r(this.f130263b, 0, jVar.o());
                byteArrayOutputStream.write(this.f130263b, 0, 4);
            }
            byte[] bArr2 = new byte[0];
            if (Fg.h.j(jVar.j())) {
                bArr2 = C16188d.b(jVar.j(), charset);
            }
            fVar.s(byteArrayOutputStream, bArr2.length);
            byte[] bArr3 = new byte[4];
            if (i10) {
                fVar.r(this.f130263b, 0, 4294967295L);
                System.arraycopy(this.f130263b, 0, bArr3, 0, 4);
            } else {
                fVar.r(this.f130263b, 0, jVar.T());
                System.arraycopy(this.f130263b, 0, bArr3, 0, 4);
            }
            fVar.s(byteArrayOutputStream, b(jVar, i10));
            String Q10 = jVar.Q();
            byte[] bArr4 = new byte[0];
            if (Fg.h.j(Q10)) {
                bArr4 = C16188d.b(Q10, charset);
            }
            fVar.s(byteArrayOutputStream, bArr4.length);
            if (i10) {
                fVar.p(this.f130264c, 0, 65535);
                byteArrayOutputStream.write(this.f130264c, 0, 2);
            } else {
                fVar.s(byteArrayOutputStream, jVar.O());
            }
            byteArrayOutputStream.write(bArr);
            byteArrayOutputStream.write(jVar.P());
            byteArrayOutputStream.write(bArr3);
            if (bArr2.length > 0) {
                byteArrayOutputStream.write(bArr2);
            }
            if (i10) {
                rVar.A(true);
                fVar.s(byteArrayOutputStream, (int) EnumC16187c.ZIP64_EXTRA_FIELD_SIGNATURE.a());
                fVar.s(byteArrayOutputStream, 28);
                fVar.q(byteArrayOutputStream, jVar.o());
                fVar.q(byteArrayOutputStream, jVar.d());
                fVar.q(byteArrayOutputStream, jVar.T());
                fVar.o(byteArrayOutputStream, jVar.O());
            }
            if (jVar.c() != null) {
                Bg.a c10 = jVar.c();
                fVar.s(byteArrayOutputStream, (int) c10.a().a());
                fVar.s(byteArrayOutputStream, c10.f());
                fVar.s(byteArrayOutputStream, c10.d().b());
                byteArrayOutputStream.write(C16188d.b(c10.g(), charset));
                byteArrayOutputStream.write(new byte[]{(byte) c10.c().d()});
                fVar.s(byteArrayOutputStream, c10.e().a());
            }
            r(jVar, byteArrayOutputStream);
            if (bArr4.length > 0) {
                byteArrayOutputStream.write(bArr4);
            }
        } catch (Exception e10) {
            throw new ZipException(e10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0071 A[Catch: all -> 0x006b, TryCatch #1 {all -> 0x006b, blocks: (B:3:0x0007, B:5:0x0060, B:10:0x0071, B:11:0x00ac, B:13:0x00b8, B:14:0x00c0, B:17:0x00cc, B:19:0x00d2, B:20:0x00d4, B:22:0x00dc, B:24:0x00e1, B:25:0x0106, B:27:0x010c, B:28:0x015c, B:34:0x0089), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00b8 A[Catch: all -> 0x006b, TryCatch #1 {all -> 0x006b, blocks: (B:3:0x0007, B:5:0x0060, B:10:0x0071, B:11:0x00ac, B:13:0x00b8, B:14:0x00c0, B:17:0x00cc, B:19:0x00d2, B:20:0x00d4, B:22:0x00dc, B:24:0x00e1, B:25:0x0106, B:27:0x010c, B:28:0x015c, B:34:0x0089), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00d2 A[Catch: all -> 0x006b, TryCatch #1 {all -> 0x006b, blocks: (B:3:0x0007, B:5:0x0060, B:10:0x0071, B:11:0x00ac, B:13:0x00b8, B:14:0x00c0, B:17:0x00cc, B:19:0x00d2, B:20:0x00d4, B:22:0x00dc, B:24:0x00e1, B:25:0x0106, B:27:0x010c, B:28:0x015c, B:34:0x0089), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00dc A[Catch: all -> 0x006b, TryCatch #1 {all -> 0x006b, blocks: (B:3:0x0007, B:5:0x0060, B:10:0x0071, B:11:0x00ac, B:13:0x00b8, B:14:0x00c0, B:17:0x00cc, B:19:0x00d2, B:20:0x00d4, B:22:0x00dc, B:24:0x00e1, B:25:0x0106, B:27:0x010c, B:28:0x015c, B:34:0x0089), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e1 A[Catch: all -> 0x006b, TryCatch #1 {all -> 0x006b, blocks: (B:3:0x0007, B:5:0x0060, B:10:0x0071, B:11:0x00ac, B:13:0x00b8, B:14:0x00c0, B:17:0x00cc, B:19:0x00d2, B:20:0x00d4, B:22:0x00dc, B:24:0x00e1, B:25:0x0106, B:27:0x010c, B:28:0x015c, B:34:0x0089), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x010c A[Catch: all -> 0x006b, TryCatch #1 {all -> 0x006b, blocks: (B:3:0x0007, B:5:0x0060, B:10:0x0071, B:11:0x00ac, B:13:0x00b8, B:14:0x00c0, B:17:0x00cc, B:19:0x00d2, B:20:0x00d4, B:22:0x00dc, B:24:0x00e1, B:25:0x0106, B:27:0x010c, B:28:0x015c, B:34:0x0089), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0089 A[Catch: all -> 0x006b, TryCatch #1 {all -> 0x006b, blocks: (B:3:0x0007, B:5:0x0060, B:10:0x0071, B:11:0x00ac, B:13:0x00b8, B:14:0x00c0, B:17:0x00cc, B:19:0x00d2, B:20:0x00d4, B:22:0x00dc, B:24:0x00e1, B:25:0x0106, B:27:0x010c, B:28:0x015c, B:34:0x0089), top: B:2:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void q(r rVar, k kVar, OutputStream outputStream, Charset charset) throws IOException {
        boolean z10;
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            this.f130262a.o(byteArrayOutputStream, (int) kVar.a().a());
            this.f130262a.s(byteArrayOutputStream, kVar.p());
            byteArrayOutputStream.write(kVar.l());
            this.f130262a.s(byteArrayOutputStream, kVar.e().a());
            this.f130262a.r(this.f130263b, 0, kVar.m());
            byteArrayOutputStream.write(this.f130263b, 0, 4);
            this.f130262a.r(this.f130263b, 0, kVar.f());
            byteArrayOutputStream.write(this.f130263b, 0, 4);
            if (kVar.d() < 4294967295L && kVar.o() < 4294967295L) {
                z10 = false;
                if (z10) {
                    this.f130262a.r(this.f130263b, 0, kVar.d());
                    byteArrayOutputStream.write(this.f130263b, 0, 4);
                    this.f130262a.r(this.f130263b, 0, kVar.o());
                    byteArrayOutputStream.write(this.f130263b, 0, 4);
                    kVar.S(false);
                } else {
                    this.f130262a.r(this.f130263b, 0, 4294967295L);
                    byteArrayOutputStream.write(this.f130263b, 0, 4);
                    byteArrayOutputStream.write(this.f130263b, 0, 4);
                    rVar.A(true);
                    kVar.S(true);
                }
                bArr = new byte[0];
                if (Fg.h.j(kVar.j())) {
                    bArr = C16188d.b(kVar.j(), charset);
                }
                this.f130262a.s(byteArrayOutputStream, bArr.length);
                int i10 = !z10 ? 20 : 0;
                if (kVar.c() != null) {
                    i10 += 11;
                }
                this.f130262a.s(byteArrayOutputStream, i10);
                if (bArr.length > 0) {
                    byteArrayOutputStream.write(bArr);
                }
                if (z10) {
                    this.f130262a.s(byteArrayOutputStream, (int) EnumC16187c.ZIP64_EXTRA_FIELD_SIGNATURE.a());
                    this.f130262a.s(byteArrayOutputStream, 16);
                    this.f130262a.q(byteArrayOutputStream, kVar.o());
                    this.f130262a.q(byteArrayOutputStream, kVar.d());
                }
                if (kVar.c() != null) {
                    Bg.a c10 = kVar.c();
                    this.f130262a.s(byteArrayOutputStream, (int) c10.a().a());
                    this.f130262a.s(byteArrayOutputStream, c10.f());
                    this.f130262a.s(byteArrayOutputStream, c10.d().b());
                    byteArrayOutputStream.write(C16188d.b(c10.g(), charset));
                    byteArrayOutputStream.write(new byte[]{(byte) c10.c().d()});
                    this.f130262a.s(byteArrayOutputStream, c10.e().a());
                }
                outputStream.write(byteArrayOutputStream.toByteArray());
                byteArrayOutputStream.close();
            }
            z10 = true;
            if (z10) {
            }
            bArr = new byte[0];
            if (Fg.h.j(kVar.j())) {
            }
            this.f130262a.s(byteArrayOutputStream, bArr.length);
            if (!z10) {
            }
            if (kVar.c() != null) {
            }
            this.f130262a.s(byteArrayOutputStream, i10);
            if (bArr.length > 0) {
            }
            if (z10) {
            }
            if (kVar.c() != null) {
            }
            outputStream.write(byteArrayOutputStream.toByteArray());
            byteArrayOutputStream.close();
        } catch (Throwable th2) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final void r(j jVar, OutputStream outputStream) throws IOException {
        if (jVar.h() == null || jVar.h().size() == 0) {
            return;
        }
        for (i iVar : jVar.h()) {
            if (iVar.d() != EnumC16187c.AES_EXTRA_DATA_RECORD.a() && iVar.d() != EnumC16187c.ZIP64_EXTRA_FIELD_SIGNATURE.a()) {
                this.f130262a.s(outputStream, (int) iVar.d());
                this.f130262a.s(outputStream, iVar.e());
                if (iVar.e() > 0 && iVar.c() != null) {
                    outputStream.write(iVar.c());
                }
            }
        }
    }

    public final void s(n nVar, ByteArrayOutputStream byteArrayOutputStream, Fg.f fVar) throws IOException {
        fVar.o(byteArrayOutputStream, (int) EnumC16187c.ZIP64_END_CENTRAL_DIRECTORY_LOCATOR.a());
        fVar.o(byteArrayOutputStream, nVar.c());
        fVar.q(byteArrayOutputStream, nVar.d());
        fVar.o(byteArrayOutputStream, nVar.e());
    }

    public final void t(o oVar, ByteArrayOutputStream byteArrayOutputStream, Fg.f fVar) throws IOException {
        fVar.o(byteArrayOutputStream, (int) oVar.a().a());
        fVar.q(byteArrayOutputStream, oVar.h());
        fVar.s(byteArrayOutputStream, oVar.k());
        fVar.s(byteArrayOutputStream, oVar.l());
        fVar.o(byteArrayOutputStream, oVar.d());
        fVar.o(byteArrayOutputStream, oVar.e());
        fVar.q(byteArrayOutputStream, oVar.j());
        fVar.q(byteArrayOutputStream, oVar.i());
        fVar.q(byteArrayOutputStream, oVar.g());
        fVar.q(byteArrayOutputStream, oVar.f());
    }

    public final void u(r rVar, OutputStream outputStream, byte[] bArr, Charset charset) throws IOException {
        if (bArr == null) {
            throw new ZipException("invalid buff to write as zip headers");
        }
        if ((outputStream instanceof Ag.d) && ((Ag.d) outputStream).a(bArr.length)) {
            d(rVar, outputStream, charset);
        } else {
            outputStream.write(bArr);
        }
    }
}
