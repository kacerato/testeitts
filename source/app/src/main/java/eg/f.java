package Eg;

import Bg.r;
import Bg.s;
import Eg.h;
import java.io.File;
import java.io.IOException;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;
import yg.C16189e;

public class f extends Eg.a<a> {

    public static class a extends d {

        public final File f5785b;

        public final s f5786c;

        public a(File file, s sVar, Bg.m mVar) {
            super(mVar);
            this.f5785b = file;
            this.f5786c = sVar;
        }
    }

    public f(r rVar, char[] cArr, C16189e c16189e, h.b bVar) {
        super(rVar, cArr, c16189e, bVar);
    }

    public final List<File> A(a aVar) throws ZipException {
        List<File> n10 = Fg.c.n(aVar.f5785b, aVar.f5786c);
        if (aVar.f5786c.p()) {
            n10.add(aVar.f5785b);
        }
        return n10;
    }

    public final void B(a aVar) throws IOException {
        File file = aVar.f5785b;
        aVar.f5786c.z(aVar.f5786c.p() ? file.getCanonicalFile().getParentFile() == null ? file.getCanonicalPath() : file.getCanonicalFile().getParentFile().getCanonicalPath() : file.getCanonicalPath());
    }

    @Override
    public long d(a aVar) throws ZipException {
        List<File> A10 = A(aVar);
        if (aVar.f5786c.p()) {
            A10.add(aVar.f5785b);
        }
        return o(A10, aVar.f5786c);
    }

    @Override
    public void f(a aVar, Dg.a aVar2) throws IOException {
        List<File> A10 = A(aVar);
        B(aVar);
        l(A10, aVar2, aVar.f5786c, aVar.f5782a);
    }
}
