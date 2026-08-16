package Eg;

import Bg.r;
import Bg.s;
import Dg.a;
import Eg.h;
import Eg.l;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;
import yg.C16188d;
import yg.C16189e;

public abstract class a<T> extends h<T> {

    public final r f5776d;

    public final char[] f5777e;

    public final C16189e f5778f;

    public a(r rVar, char[] cArr, C16189e c16189e, h.b bVar) {
        super(bVar);
        this.f5776d = rVar;
        this.f5777e = cArr;
        this.f5778f = c16189e;
    }

    @Override
    public a.c g() {
        return a.c.ADD_ENTRY;
    }

    public final void k(File file, Ag.k kVar, s sVar, Ag.h hVar, Dg.a aVar, byte[] bArr) throws IOException {
        kVar.k(sVar);
        if (file.exists() && !file.isDirectory()) {
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                try {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    kVar.write(bArr, 0, read);
                    aVar.x(read);
                    j();
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
            fileInputStream.close();
        }
        q(kVar, hVar, file, false);
    }

    public void l(List<File> list, Dg.a aVar, s sVar, Bg.m mVar) throws IOException {
        Fg.c.e(list, sVar.n());
        byte[] bArr = new byte[mVar.a()];
        List<File> u10 = u(list, sVar, aVar, mVar);
        Ag.h hVar = new Ag.h(this.f5776d.k(), this.f5776d.g());
        try {
            Ag.k s10 = s(hVar, mVar);
            try {
                for (File file : u10) {
                    j();
                    s p10 = p(sVar, file, aVar);
                    aVar.r(file.getAbsolutePath());
                    if (Fg.c.x(file) && m(p10)) {
                        n(file, s10, p10, hVar);
                        if (s.a.INCLUDE_LINK_ONLY.equals(p10.n())) {
                        }
                    }
                    k(file, s10, p10, hVar, aVar, bArr);
                }
                if (s10 != null) {
                    s10.close();
                }
                hVar.close();
            } finally {
            }
        } catch (Throwable th2) {
            try {
                hVar.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final boolean m(s sVar) {
        return s.a.INCLUDE_LINK_ONLY.equals(sVar.n()) || s.a.INCLUDE_LINK_AND_LINKED_FILE.equals(sVar.n());
    }

    public final void n(File file, Ag.k kVar, s sVar, Ag.h hVar) throws IOException {
        s sVar2 = new s(sVar);
        sVar2.G(v(sVar.k(), file.getName()));
        sVar2.A(false);
        sVar2.y(Cg.d.STORE);
        kVar.k(sVar2);
        kVar.write(Fg.c.B(file).getBytes());
        q(kVar, hVar, file, true);
    }

    public long o(List<File> list, s sVar) throws ZipException {
        long j10 = 0;
        for (File file : list) {
            if (file.exists()) {
                j10 += (sVar.o() && sVar.f() == Cg.e.ZIP_STANDARD) ? file.length() * 2 : file.length();
                Bg.j c10 = C16188d.c(r(), Fg.c.r(file, sVar));
                if (c10 != null) {
                    j10 += r().k().length() - c10.d();
                }
            }
        }
        return j10;
    }

    public final s p(s sVar, File file, Dg.a aVar) throws IOException {
        s sVar2 = new s(sVar);
        if (file.isDirectory()) {
            sVar2.D(0L);
        } else {
            sVar2.D(file.length());
        }
        if (sVar.l() <= 0) {
            sVar2.I(file.lastModified());
        }
        sVar2.P(false);
        if (!Fg.h.j(sVar.k())) {
            sVar2.G(Fg.c.r(file, sVar));
        }
        if (file.isDirectory()) {
            sVar2.y(Cg.d.STORE);
            sVar2.B(Cg.e.NONE);
            sVar2.A(false);
        } else {
            if (sVar2.o() && sVar2.f() == Cg.e.ZIP_STANDARD) {
                aVar.p(a.c.CALCULATE_CRC);
                sVar2.C(Fg.b.a(file, aVar));
                aVar.p(a.c.ADD_ENTRY);
            }
            if (file.length() == 0) {
                sVar2.y(Cg.d.STORE);
            }
        }
        return sVar2;
    }

    public final void q(Ag.k kVar, Ag.h hVar, File file, boolean z10) throws IOException {
        Bg.j c10 = kVar.c();
        byte[] k10 = Fg.c.k(file);
        if (!z10) {
            k10[3] = Fg.a.c(k10[3], 5);
        }
        c10.W(k10);
        w(c10, hVar);
    }

    public r r() {
        return this.f5776d;
    }

    public Ag.k s(Ag.h hVar, Bg.m mVar) throws IOException {
        if (this.f5776d.k().exists()) {
            hVar.j(C16188d.f(this.f5776d));
        }
        return new Ag.k(hVar, this.f5777e, mVar, this.f5776d);
    }

    public void t(Bg.j jVar, Dg.a aVar, Bg.m mVar) throws ZipException {
        new l(this.f5776d, this.f5778f, new h.b(null, false, aVar)).e(new l.a(Collections.singletonList(jVar.j()), mVar));
    }

    public final List<File> u(List<File> list, s sVar, Dg.a aVar, Bg.m mVar) throws ZipException {
        ArrayList arrayList = new ArrayList(list);
        if (!this.f5776d.k().exists()) {
            return arrayList;
        }
        for (File file : list) {
            if (!Fg.h.j(file.getName())) {
                arrayList.remove(file);
            }
            Bg.j c10 = C16188d.c(this.f5776d, Fg.c.r(file, sVar));
            if (c10 != null) {
                if (sVar.q()) {
                    aVar.p(a.c.REMOVE_ENTRY);
                    t(c10, aVar, mVar);
                    j();
                    aVar.p(a.c.ADD_ENTRY);
                } else {
                    arrayList.remove(file);
                }
            }
        }
        return arrayList;
    }

    public final String v(String str, String str2) {
        if (!str.contains("/")) {
            return str2;
        }
        return str.substring(0, str.lastIndexOf("/") + 1) + str2;
    }

    public void w(Bg.j jVar, Ag.h hVar) throws IOException {
        this.f5778f.l(jVar, r(), hVar);
    }

    public void x(s sVar) throws ZipException {
        if (sVar == null) {
            throw new ZipException("cannot validate zip parameters");
        }
        if (sVar.d() != Cg.d.STORE && sVar.d() != Cg.d.DEFLATE) {
            throw new ZipException("unsupported compression type");
        }
        if (!sVar.o()) {
            sVar.B(Cg.e.NONE);
        } else {
            if (sVar.f() == Cg.e.NONE) {
                throw new ZipException("Encryption method has to be set, when encrypt files flag is set");
            }
            char[] cArr = this.f5777e;
            if (cArr == null || cArr.length <= 0) {
                throw new ZipException("input password is empty or null");
            }
        }
    }
}
