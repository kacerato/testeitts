package yg;

import Bg.i;
import Bg.j;
import Bg.k;
import Bg.m;
import Bg.n;
import Bg.o;
import Bg.p;
import Bg.r;
import Fg.h;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;
import yd.C16181m;

public class C16186b {

    public r f130256a;

    public final Fg.f f130257b = new Fg.f();

    public final byte[] f130258c = new byte[4];

    public final long a(r rVar) {
        return rVar.n() ? rVar.j().i() : rVar.e().i();
    }

    public boolean b(byte[] bArr, String str) {
        byte b10 = bArr[0];
        if (b10 != 0 && Fg.a.a(b10, 4)) {
            return true;
        }
        byte b11 = bArr[3];
        if (b11 != 0 && Fg.a.a(b11, 6)) {
            return true;
        }
        if (str != null) {
            return str.endsWith("/") || str.endsWith(C16181m.f130232i);
        }
        return false;
    }

    public final long c(RandomAccessFile randomAccessFile) throws IOException {
        long length = randomAccessFile.length();
        if (length < 22) {
            throw new ZipException("Zip file size less than size of zip headers. Probably not a zip file.");
        }
        long j10 = length - 22;
        w(randomAccessFile, j10);
        return ((long) this.f130257b.c(randomAccessFile)) == EnumC16187c.END_OF_CENTRAL_DIRECTORY.a() ? j10 : d(randomAccessFile);
    }

    public final long d(RandomAccessFile randomAccessFile) throws IOException {
        long length = randomAccessFile.length() - 22;
        for (long length2 = randomAccessFile.length() < 65536 ? randomAccessFile.length() : 65536L; length2 > 0 && length > 0; length2--) {
            length--;
            w(randomAccessFile, length);
            if (this.f130257b.c(randomAccessFile) == EnumC16187c.END_OF_CENTRAL_DIRECTORY.a()) {
                return length;
            }
        }
        throw new ZipException("Zip headers not found. Probably not a zip file");
    }

    public final List<i> e(byte[] bArr, int i10) {
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        while (i11 < i10) {
            i iVar = new i();
            iVar.g(this.f130257b.m(bArr, i11));
            int m10 = this.f130257b.m(bArr, i11 + 2);
            iVar.h(m10);
            int i12 = i11 + 4;
            if (m10 > 0) {
                byte[] bArr2 = new byte[m10];
                System.arraycopy(bArr, i12, bArr2, 0, m10);
                iVar.f(bArr2);
            }
            i11 = i12 + m10;
            arrayList.add(iVar);
        }
        if (arrayList.size() > 0) {
            return arrayList;
        }
        return null;
    }

    public final Bg.a f(List<i> list, Fg.f fVar) throws ZipException {
        if (list == null) {
            return null;
        }
        for (i iVar : list) {
            if (iVar != null) {
                long d10 = iVar.d();
                EnumC16187c enumC16187c = EnumC16187c.AES_EXTRA_DATA_RECORD;
                if (d10 == enumC16187c.a()) {
                    byte[] c10 = iVar.c();
                    if (c10 == null || c10.length != 7) {
                        throw new ZipException("corrupt AES extra data records");
                    }
                    Bg.a aVar = new Bg.a();
                    aVar.b(enumC16187c);
                    aVar.k(iVar.e());
                    byte[] c11 = iVar.c();
                    aVar.i(Cg.b.a(fVar.m(c11, 0)));
                    byte[] bArr = new byte[2];
                    System.arraycopy(c11, 2, bArr, 0, 2);
                    aVar.l(new String(bArr));
                    aVar.h(Cg.a.a(c11[4] & 255));
                    aVar.j(Cg.d.b(fVar.m(c11, 5)));
                    return aVar;
                }
            }
        }
        return null;
    }

    public final void g(Bg.b bVar, Fg.f fVar) throws ZipException {
        Bg.a f10;
        if (bVar.h() == null || bVar.h().size() <= 0 || (f10 = f(bVar.h(), fVar)) == null) {
            return;
        }
        bVar.v(f10);
        bVar.C(Cg.e.AES);
    }

    public r h(RandomAccessFile randomAccessFile, m mVar) throws IOException {
        if (randomAccessFile.length() == 0) {
            return new r();
        }
        if (randomAccessFile.length() < 22) {
            throw new ZipException("Zip file size less than minimum expected zip file size. Probably not a zip file or a corrupted zip file");
        }
        r rVar = new r();
        this.f130256a = rVar;
        try {
            rVar.s(k(randomAccessFile, this.f130257b, mVar));
            if (this.f130256a.e().i() == 0) {
                return this.f130256a;
            }
            r rVar2 = this.f130256a;
            rVar2.y(r(randomAccessFile, this.f130257b, rVar2.e().f()));
            if (this.f130256a.n()) {
                this.f130256a.z(q(randomAccessFile, this.f130257b));
                if (this.f130256a.j() == null || this.f130256a.j().d() <= 0) {
                    this.f130256a.v(false);
                } else {
                    this.f130256a.v(true);
                }
            }
            this.f130256a.p(i(randomAccessFile, this.f130257b, mVar.b()));
            return this.f130256a;
        } catch (ZipException e10) {
            throw e10;
        } catch (IOException e11) {
            e11.printStackTrace();
            throw new ZipException("Zip headers not found. Probably not a zip file or a corrupted zip file", e11);
        }
    }

    public final Bg.d i(RandomAccessFile randomAccessFile, Fg.f fVar, Charset charset) throws IOException {
        Bg.d dVar = new Bg.d();
        ArrayList arrayList = new ArrayList();
        long f10 = C16188d.f(this.f130256a);
        long a10 = a(this.f130256a);
        randomAccessFile.seek(f10);
        int i10 = 2;
        byte[] bArr = new byte[2];
        byte[] bArr2 = new byte[4];
        int i11 = 0;
        int i12 = 0;
        while (i12 < a10) {
            j jVar = new j();
            byte[] bArr3 = bArr2;
            long c10 = fVar.c(randomAccessFile);
            EnumC16187c enumC16187c = EnumC16187c.CENTRAL_DIRECTORY;
            if (c10 != enumC16187c.a()) {
                throw new ZipException("Expected central directory entry not found (#" + (i12 + 1) + ")");
            }
            jVar.b(enumC16187c);
            jVar.b0(fVar.l(randomAccessFile));
            jVar.L(fVar.l(randomAccessFile));
            byte[] bArr4 = new byte[i10];
            randomAccessFile.readFully(bArr4);
            jVar.B(Fg.a.a(bArr4[i11], i11));
            jVar.z(Fg.a.a(bArr4[i11], 3));
            jVar.H(Fg.a.a(bArr4[1], 3));
            jVar.I((byte[]) bArr4.clone());
            jVar.x(Cg.d.b(fVar.l(randomAccessFile)));
            jVar.J(fVar.c(randomAccessFile));
            randomAccessFile.readFully(bArr3);
            jVar.y(fVar.j(bArr3, i11));
            int i13 = i12;
            jVar.w(fVar.i(randomAccessFile, 4));
            jVar.K(fVar.i(randomAccessFile, 4));
            int l10 = fVar.l(randomAccessFile);
            jVar.G(l10);
            jVar.E(fVar.l(randomAccessFile));
            int l11 = fVar.l(randomAccessFile);
            jVar.Y(l11);
            jVar.V(fVar.l(randomAccessFile));
            randomAccessFile.readFully(bArr);
            jVar.Z((byte[]) bArr.clone());
            randomAccessFile.readFully(bArr3);
            jVar.W((byte[]) bArr3.clone());
            randomAccessFile.readFully(bArr3);
            long j10 = a10;
            byte[] bArr5 = bArr;
            jVar.a0(fVar.j(bArr3, 0));
            if (l10 <= 0) {
                throw new ZipException("Invalid entry name in file header");
            }
            byte[] bArr6 = new byte[l10];
            randomAccessFile.readFully(bArr6);
            jVar.F(C16188d.a(bArr6, jVar.u(), charset));
            jVar.A(b(jVar.P(), jVar.j()));
            o(randomAccessFile, jVar);
            t(jVar, fVar);
            g(jVar, fVar);
            if (l11 > 0) {
                byte[] bArr7 = new byte[l11];
                randomAccessFile.readFully(bArr7);
                jVar.X(C16188d.a(bArr7, jVar.u(), charset));
            }
            if (jVar.t()) {
                if (jVar.c() != null) {
                    jVar.C(Cg.e.AES);
                } else {
                    jVar.C(Cg.e.ZIP_STANDARD);
                }
            }
            arrayList.add(jVar);
            bArr2 = bArr3;
            i11 = 0;
            i10 = 2;
            i12 = i13 + 1;
            bArr = bArr5;
            a10 = j10;
        }
        dVar.d(arrayList);
        Bg.f fVar2 = new Bg.f();
        long c11 = fVar.c(randomAccessFile);
        EnumC16187c enumC16187c2 = EnumC16187c.DIGITAL_SIGNATURE;
        if (c11 == enumC16187c2.a()) {
            fVar2.b(enumC16187c2);
            fVar2.f(fVar.l(randomAccessFile));
            if (fVar2.d() > 0) {
                byte[] bArr8 = new byte[fVar2.d()];
                randomAccessFile.readFully(bArr8);
                fVar2.e(new String(bArr8));
            }
        }
        return dVar;
    }

    public Bg.e j(InputStream inputStream, boolean z10) throws IOException {
        Bg.e eVar = new Bg.e();
        byte[] bArr = new byte[4];
        h.l(inputStream, bArr);
        long j10 = this.f130257b.j(bArr, 0);
        EnumC16187c enumC16187c = EnumC16187c.EXTRA_DATA_RECORD;
        if (j10 == enumC16187c.a()) {
            eVar.b(enumC16187c);
            h.l(inputStream, bArr);
            eVar.g(this.f130257b.j(bArr, 0));
        } else {
            eVar.g(j10);
        }
        if (z10) {
            eVar.f(this.f130257b.f(inputStream));
            eVar.h(this.f130257b.f(inputStream));
        } else {
            eVar.f(this.f130257b.b(inputStream));
            eVar.h(this.f130257b.b(inputStream));
        }
        return eVar;
    }

    public final Bg.g k(RandomAccessFile randomAccessFile, Fg.f fVar, m mVar) throws IOException {
        long c10 = c(randomAccessFile);
        w(randomAccessFile, 4 + c10);
        Bg.g gVar = new Bg.g();
        gVar.b(EnumC16187c.END_OF_CENTRAL_DIRECTORY);
        gVar.l(fVar.l(randomAccessFile));
        gVar.m(fVar.l(randomAccessFile));
        gVar.r(fVar.l(randomAccessFile));
        gVar.q(fVar.l(randomAccessFile));
        gVar.p(fVar.c(randomAccessFile));
        gVar.n(c10);
        randomAccessFile.readFully(this.f130258c);
        gVar.o(fVar.j(this.f130258c, 0));
        gVar.k(v(randomAccessFile, fVar.l(randomAccessFile), mVar.b()));
        this.f130256a.v(gVar.d() > 0);
        return gVar;
    }

    public final List<i> l(InputStream inputStream, int i10) throws IOException {
        if (i10 < 4) {
            if (i10 <= 0) {
                return null;
            }
            inputStream.skip(i10);
            return null;
        }
        byte[] bArr = new byte[i10];
        h.l(inputStream, bArr);
        try {
            return e(bArr, i10);
        } catch (Exception unused) {
            return Collections.emptyList();
        }
    }

    public final List<i> m(RandomAccessFile randomAccessFile, int i10) throws IOException {
        if (i10 < 4) {
            if (i10 <= 0) {
                return null;
            }
            randomAccessFile.skipBytes(i10);
            return null;
        }
        byte[] bArr = new byte[i10];
        randomAccessFile.read(bArr);
        try {
            return e(bArr, i10);
        } catch (Exception unused) {
            return Collections.emptyList();
        }
    }

    public final void n(InputStream inputStream, k kVar) throws IOException {
        int i10 = kVar.i();
        if (i10 <= 0) {
            return;
        }
        kVar.D(l(inputStream, i10));
    }

    public final void o(RandomAccessFile randomAccessFile, j jVar) throws IOException {
        int i10 = jVar.i();
        if (i10 <= 0) {
            return;
        }
        jVar.D(m(randomAccessFile, i10));
    }

    public k p(InputStream inputStream, Charset charset) throws IOException {
        k kVar = new k();
        byte[] bArr = new byte[4];
        int b10 = this.f130257b.b(inputStream);
        if (b10 == EnumC16187c.TEMPORARY_SPANNING_MARKER.a()) {
            b10 = this.f130257b.b(inputStream);
        }
        long j10 = b10;
        EnumC16187c enumC16187c = EnumC16187c.LOCAL_FILE_HEADER;
        if (j10 != enumC16187c.a()) {
            return null;
        }
        kVar.b(enumC16187c);
        kVar.L(this.f130257b.k(inputStream));
        byte[] bArr2 = new byte[2];
        if (h.l(inputStream, bArr2) != 2) {
            throw new ZipException("Could not read enough bytes for generalPurposeFlags");
        }
        kVar.B(Fg.a.a(bArr2[0], 0));
        kVar.z(Fg.a.a(bArr2[0], 3));
        boolean z10 = true;
        kVar.H(Fg.a.a(bArr2[1], 3));
        kVar.I((byte[]) bArr2.clone());
        kVar.x(Cg.d.b(this.f130257b.k(inputStream)));
        kVar.J(this.f130257b.b(inputStream));
        h.l(inputStream, bArr);
        kVar.y(this.f130257b.j(bArr, 0));
        kVar.w(this.f130257b.g(inputStream, 4));
        kVar.K(this.f130257b.g(inputStream, 4));
        int k10 = this.f130257b.k(inputStream);
        kVar.G(k10);
        kVar.E(this.f130257b.k(inputStream));
        if (k10 <= 0) {
            throw new ZipException("Invalid entry name in local file header");
        }
        byte[] bArr3 = new byte[k10];
        h.l(inputStream, bArr3);
        String a10 = C16188d.a(bArr3, kVar.u(), charset);
        kVar.F(a10);
        if (!a10.endsWith("/") && !a10.endsWith(C16181m.f130232i)) {
            z10 = false;
        }
        kVar.A(z10);
        n(inputStream, kVar);
        u(kVar, this.f130257b);
        g(kVar, this.f130257b);
        if (kVar.t() && kVar.g() != Cg.e.AES) {
            if (Fg.a.a(kVar.l()[0], 6)) {
                kVar.C(Cg.e.ZIP_STANDARD_VARIANT_STRONG);
            } else {
                kVar.C(Cg.e.ZIP_STANDARD);
            }
        }
        return kVar;
    }

    public final o q(RandomAccessFile randomAccessFile, Fg.f fVar) throws IOException {
        if (this.f130256a.i() == null) {
            throw new ZipException("invalid zip64 end of central directory locator");
        }
        long d10 = this.f130256a.i().d();
        if (d10 < 0) {
            throw new ZipException("invalid offset for start of end of central directory record");
        }
        randomAccessFile.seek(d10);
        o oVar = new o();
        long c10 = fVar.c(randomAccessFile);
        EnumC16187c enumC16187c = EnumC16187c.ZIP64_END_CENTRAL_DIRECTORY_RECORD;
        if (c10 != enumC16187c.a()) {
            throw new ZipException("invalid signature for zip64 end of central directory record");
        }
        oVar.b(enumC16187c);
        oVar.r(fVar.h(randomAccessFile));
        oVar.u(fVar.l(randomAccessFile));
        oVar.v(fVar.l(randomAccessFile));
        oVar.n(fVar.c(randomAccessFile));
        oVar.o(fVar.c(randomAccessFile));
        oVar.t(fVar.h(randomAccessFile));
        oVar.s(fVar.h(randomAccessFile));
        oVar.q(fVar.h(randomAccessFile));
        oVar.p(fVar.h(randomAccessFile));
        long h10 = oVar.h() - 44;
        if (h10 > 0) {
            byte[] bArr = new byte[(int) h10];
            randomAccessFile.readFully(bArr);
            oVar.m(bArr);
        }
        return oVar;
    }

    public final n r(RandomAccessFile randomAccessFile, Fg.f fVar, long j10) throws IOException {
        n nVar = new n();
        x(randomAccessFile, j10);
        long c10 = fVar.c(randomAccessFile);
        EnumC16187c enumC16187c = EnumC16187c.ZIP64_END_CENTRAL_DIRECTORY_LOCATOR;
        if (c10 != enumC16187c.a()) {
            this.f130256a.A(false);
            return null;
        }
        this.f130256a.A(true);
        nVar.b(enumC16187c);
        nVar.f(fVar.c(randomAccessFile));
        nVar.g(fVar.h(randomAccessFile));
        nVar.h(fVar.c(randomAccessFile));
        return nVar;
    }

    public final p s(List<i> list, Fg.f fVar, long j10, long j11, long j12, int i10) {
        for (i iVar : list) {
            if (iVar != null && EnumC16187c.ZIP64_EXTRA_FIELD_SIGNATURE.a() == iVar.d()) {
                p pVar = new p();
                byte[] c10 = iVar.c();
                if (iVar.e() <= 0) {
                    return null;
                }
                int i11 = 0;
                if (iVar.e() > 0 && j10 == 4294967295L) {
                    pVar.l(fVar.j(c10, 0));
                    i11 = 8;
                }
                if (i11 < iVar.e() && j11 == 4294967295L) {
                    pVar.h(fVar.j(c10, i11));
                    i11 += 8;
                }
                if (i11 < iVar.e() && j12 == 4294967295L) {
                    pVar.j(fVar.j(c10, i11));
                    i11 += 8;
                }
                if (i11 < iVar.e() && i10 == 65535) {
                    pVar.i(fVar.e(c10, i11));
                }
                return pVar;
            }
        }
        return null;
    }

    public final void t(j jVar, Fg.f fVar) {
        p s10;
        if (jVar.h() == null || jVar.h().size() <= 0 || (s10 = s(jVar.h(), fVar, jVar.o(), jVar.d(), jVar.T(), jVar.O())) == null) {
            return;
        }
        jVar.M(s10);
        if (s10.g() != -1) {
            jVar.K(s10.g());
        }
        if (s10.c() != -1) {
            jVar.w(s10.c());
        }
        if (s10.e() != -1) {
            jVar.a0(s10.e());
        }
        if (s10.d() != -1) {
            jVar.V(s10.d());
        }
    }

    public final void u(k kVar, Fg.f fVar) throws ZipException {
        p s10;
        if (kVar == null) {
            throw new ZipException("file header is null in reading Zip64 Extended Info");
        }
        if (kVar.h() == null || kVar.h().size() <= 0 || (s10 = s(kVar.h(), fVar, kVar.o(), kVar.d(), 0L, 0)) == null) {
            return;
        }
        kVar.M(s10);
        if (s10.g() != -1) {
            kVar.K(s10.g());
        }
        if (s10.c() != -1) {
            kVar.w(s10.c());
        }
    }

    public final String v(RandomAccessFile randomAccessFile, int i10, Charset charset) {
        if (i10 <= 0) {
            return null;
        }
        try {
            byte[] bArr = new byte[i10];
            randomAccessFile.readFully(bArr);
            if (charset == null) {
                charset = Fg.d.f6823x;
            }
            return C16188d.a(bArr, false, charset);
        } catch (IOException unused) {
            return null;
        }
    }

    public final void w(RandomAccessFile randomAccessFile, long j10) throws IOException {
        if (randomAccessFile instanceof zg.g) {
            ((zg.g) randomAccessFile).e(j10);
        } else {
            randomAccessFile.seek(j10);
        }
    }

    public final void x(RandomAccessFile randomAccessFile, long j10) throws IOException {
        w(randomAccessFile, j10 - 20);
    }
}
