package Eg;

import Bg.r;
import Dg.a;
import Eg.h;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;
import yg.C16188d;
import yg.C16189e;

public class l extends c<a> {

    public final r f5808d;

    public final C16189e f5809e;

    public static class a extends d {

        public final List<String> f5810b;

        public a(List<String> list, Bg.m mVar) {
            super(mVar);
            this.f5810b = list;
        }
    }

    public l(r rVar, C16189e c16189e, h.b bVar) {
        super(bVar);
        this.f5808d = rVar;
        this.f5809e = c16189e;
    }

    @Override
    public a.c g() {
        return a.c.REMOVE_ENTRY;
    }

    @Override
    public long d(a aVar) {
        return this.f5808d.k().length();
    }

    @Override
    public void f(a aVar, Dg.a aVar2) throws IOException {
        List<Bg.j> list;
        if (this.f5808d.m()) {
            throw new ZipException("This is a split archive. Zip file format does not allow updating split/spanned files");
        }
        List<String> u10 = u(aVar.f5810b);
        if (u10.isEmpty()) {
            return;
        }
        File p10 = p(this.f5808d.k().getPath());
        try {
            Ag.h hVar = new Ag.h(p10);
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(this.f5808d.k(), Cg.f.READ.a());
                try {
                    List<Bg.j> l10 = l(this.f5808d.b().b());
                    long j10 = 0;
                    for (Bg.j jVar : l10) {
                        long o10 = o(l10, jVar, this.f5808d) - hVar.c();
                        if (w(jVar, u10)) {
                            x(l10, jVar, o10);
                            if (!this.f5808d.b().b().remove(jVar)) {
                                throw new ZipException("Could not remove entry from list of central directory headers");
                            }
                            j10 += o10;
                            list = l10;
                        } else {
                            list = l10;
                            j10 += super.m(randomAccessFile, hVar, j10, o10, aVar2, aVar.f5782a.a());
                        }
                        j();
                        l10 = list;
                    }
                    this.f5809e.d(this.f5808d, hVar, aVar.f5782a.b());
                    randomAccessFile.close();
                    hVar.close();
                    k(true, this.f5808d.k(), p10);
                } finally {
                }
            } finally {
            }
        } catch (Throwable th2) {
            k(false, this.f5808d.k(), p10);
            throw th2;
        }
    }

    public final List<String> u(List<String> list) throws ZipException {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (C16188d.c(this.f5808d, str) != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public final long v(long j10) {
        if (j10 != Long.MIN_VALUE) {
            return -j10;
        }
        throw new ArithmeticException("long overflow");
    }

    public final boolean w(Bg.j jVar, List<String> list) {
        for (String str : list) {
            if ((str.endsWith("/") && jVar.j().startsWith(str)) || jVar.j().equals(str)) {
                return true;
            }
        }
        return false;
    }

    public final void x(List<Bg.j> list, Bg.j jVar, long j10) throws ZipException {
        r(list, this.f5808d, jVar, v(j10));
        Bg.g e10 = this.f5808d.e();
        e10.o(e10.g() - j10);
        e10.q(e10.i() - 1);
        if (e10.j() > 0) {
            e10.r(e10.j() - 1);
        }
        if (this.f5808d.n()) {
            this.f5808d.j().p(this.f5808d.j().f() - j10);
            this.f5808d.j().t(this.f5808d.j().i() - 1);
            this.f5808d.i().g(this.f5808d.i().d() - j10);
        }
    }
}
