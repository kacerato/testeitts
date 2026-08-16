package Eg;

import Bg.o;
import Bg.r;
import Dg.a;
import Eg.h;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;
import yg.C16189e;
import yg.EnumC16187c;

public class k extends h<a> {

    public final r f5805d;

    public final Fg.f f5806e;

    public static class a extends d {

        public File f5807b;

        public a(File file, Bg.m mVar) {
            super(mVar);
            this.f5807b = file;
        }
    }

    public k(r rVar, h.b bVar) {
        super(bVar);
        this.f5806e = new Fg.f();
        this.f5805d = rVar;
    }

    @Override
    public a.c g() {
        return a.c.MERGE_ZIP_FILES;
    }

    @Override
    public long d(a aVar) {
        long j10 = 0;
        if (!this.f5805d.m()) {
            return 0L;
        }
        for (int i10 = 0; i10 <= this.f5805d.e().d(); i10++) {
            j10 += n(this.f5805d, i10).length();
        }
        return j10;
    }

    public final RandomAccessFile l(r rVar, int i10) throws FileNotFoundException {
        return new RandomAccessFile(n(rVar, i10), Cg.f.READ.a());
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005e A[Catch: all -> 0x0051, TRY_LEAVE, TryCatch #1 {all -> 0x0051, blocks: (B:51:0x0038, B:20:0x005e, B:54:0x004d), top: B:50:0x0038 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[Catch: all -> 0x00b1, SYNTHETIC, TryCatch #0 {all -> 0x00b1, blocks: (B:31:0x00a5, B:44:0x00ca, B:43:0x00c7, B:63:0x00ce, B:67:0x00e9, B:68:0x00f0, B:38:0x00c1), top: B:10:0x001f, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0092  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void f(a aVar, Dg.a aVar2) throws IOException {
        FileOutputStream fileOutputStream;
        RandomAccessFile randomAccessFile;
        Throwable th2;
        int i10;
        int i11;
        if (!this.f5805d.m()) {
            ZipException zipException = new ZipException("archive not a split zip file");
            aVar2.b(zipException);
            throw zipException;
        }
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(aVar.f5807b);
            try {
                int d10 = this.f5805d.e().d();
                try {
                    if (d10 <= 0) {
                        throw new ZipException("zip archive not a split zip file");
                    }
                    long j10 = 0;
                    long j11 = 0;
                    int i12 = 0;
                    int i13 = 0;
                    while (i13 <= d10) {
                        RandomAccessFile l10 = l(this.f5805d, i13);
                        try {
                            long length = l10.length();
                            try {
                                try {
                                    if (i13 == 0) {
                                        try {
                                            if (this.f5806e.c(l10) == EnumC16187c.SPLIT_ZIP.a()) {
                                                i10 = 4;
                                                i11 = 4;
                                                if (i13 == d10) {
                                                    length = this.f5805d.e().g();
                                                }
                                                long j12 = length;
                                                long j13 = i10;
                                                randomAccessFile = l10;
                                                Fg.c.g(l10, fileOutputStream2, j13, j12, aVar2, aVar.f5782a.a());
                                                j11 += j12 - j13;
                                                int i14 = i13;
                                                long j14 = j10;
                                                int i15 = d10;
                                                fileOutputStream = fileOutputStream2;
                                                o(this.f5805d.b().b(), i13 != 0 ? j10 : j11, i14, i11);
                                                j();
                                                randomAccessFile.close();
                                                i13 = i14 + 1;
                                                d10 = i15;
                                                fileOutputStream2 = fileOutputStream;
                                                j10 = j14;
                                                i12 = i11;
                                            } else {
                                                l10.seek(j10);
                                            }
                                        } catch (Throwable th3) {
                                            th2 = th3;
                                            fileOutputStream = fileOutputStream2;
                                            randomAccessFile = l10;
                                            if (randomAccessFile != null) {
                                                throw th2;
                                            }
                                            try {
                                                randomAccessFile.close();
                                                throw th2;
                                            } catch (Throwable th4) {
                                                th2.addSuppressed(th4);
                                                throw th2;
                                            }
                                        }
                                    }
                                    o(this.f5805d.b().b(), i13 != 0 ? j10 : j11, i14, i11);
                                    j();
                                    randomAccessFile.close();
                                    i13 = i14 + 1;
                                    d10 = i15;
                                    fileOutputStream2 = fileOutputStream;
                                    j10 = j14;
                                    i12 = i11;
                                } catch (Throwable th5) {
                                    th = th5;
                                    th2 = th;
                                    if (randomAccessFile != null) {
                                    }
                                }
                                Fg.c.g(l10, fileOutputStream2, j13, j12, aVar2, aVar.f5782a.a());
                                j11 += j12 - j13;
                                int i142 = i13;
                                long j142 = j10;
                                int i152 = d10;
                                fileOutputStream = fileOutputStream2;
                            } catch (Throwable th6) {
                                th = th6;
                                fileOutputStream = fileOutputStream2;
                            }
                            i11 = i12;
                            i10 = 0;
                            if (i13 == d10) {
                            }
                            long j122 = length;
                            long j132 = i10;
                            randomAccessFile = l10;
                        } catch (Throwable th7) {
                            th = th7;
                            fileOutputStream = fileOutputStream2;
                            randomAccessFile = l10;
                        }
                    }
                    FileOutputStream fileOutputStream3 = fileOutputStream2;
                    p(this.f5805d, j11, fileOutputStream3, aVar.f5782a.b());
                    aVar2.a();
                    fileOutputStream3.close();
                } catch (Throwable th8) {
                    th = th8;
                    Throwable th9 = th;
                    try {
                        fileOutputStream.close();
                        throw th9;
                    } catch (Throwable th10) {
                        th9.addSuppressed(th10);
                        throw th9;
                    }
                }
            } catch (Throwable th11) {
                th = th11;
                fileOutputStream = fileOutputStream2;
            }
        } catch (CloneNotSupportedException e10) {
            throw new ZipException(e10);
        }
    }

    public final File n(r rVar, int i10) {
        if (i10 == rVar.e().d()) {
            return rVar.k();
        }
        return new File(rVar.k().getPath().substring(0, rVar.k().getPath().lastIndexOf(".")) + (i10 >= 9 ? ".z" : ".z0") + (i10 + 1));
    }

    public final void o(List<Bg.j> list, long j10, int i10, int i11) {
        for (Bg.j jVar : list) {
            if (jVar.O() == i10) {
                jVar.a0((jVar.T() + j10) - i11);
                jVar.V(0);
            }
        }
    }

    public final void p(r rVar, long j10, OutputStream outputStream, Charset charset) throws IOException, CloneNotSupportedException {
        r rVar2 = (r) rVar.clone();
        rVar2.e().o(j10);
        t(rVar2, j10);
        new C16189e().e(rVar2, outputStream, charset);
    }

    public final void q(r rVar) {
        int size = rVar.b().b().size();
        Bg.g e10 = rVar.e();
        e10.l(0);
        e10.m(0);
        e10.q(size);
        e10.r(size);
    }

    public final void r(r rVar, long j10) {
        if (rVar.i() == null) {
            return;
        }
        Bg.n i10 = rVar.i();
        i10.f(0);
        i10.g(i10.d() + j10);
        i10.h(1);
    }

    public final void s(r rVar, long j10) {
        if (rVar.j() == null) {
            return;
        }
        o j11 = rVar.j();
        j11.n(0);
        j11.o(0);
        j11.t(rVar.e().i());
        j11.p(j11.f() + j10);
    }

    public final void t(r rVar, long j10) {
        rVar.v(false);
        q(rVar);
        if (rVar.n()) {
            r(rVar, j10);
            s(rVar, j10);
        }
    }
}
