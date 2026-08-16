package Eg;

import Bg.r;
import Bg.s;
import Dg.a;
import Eg.h;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;
import yg.C16189e;

public class e extends Eg.a<a> {

    public static class a extends d {

        public final List<File> f5783b;

        public final s f5784c;

        public a(List<File> list, s sVar, Bg.m mVar) {
            super(mVar);
            this.f5783b = list;
            this.f5784c = sVar;
        }
    }

    public e(r rVar, char[] cArr, C16189e c16189e, h.b bVar) {
        super(rVar, cArr, c16189e, bVar);
    }

    @Override
    public void f(a aVar, Dg.a aVar2) throws IOException {
        x(aVar.f5784c);
        l(z(aVar), aVar2, aVar.f5784c, aVar.f5782a);
    }

    @Override
    public a.c g() {
        return super.g();
    }

    @Override
    public long d(a aVar) throws ZipException {
        return o(aVar.f5783b, aVar.f5784c);
    }

    public final List<File> z(a aVar) throws ZipException {
        ArrayList arrayList = new ArrayList();
        for (File file : aVar.f5783b) {
            arrayList.add(file);
            boolean x10 = Fg.c.x(file);
            s.a n10 = aVar.f5784c.n();
            if (x10 && !s.a.INCLUDE_LINK_ONLY.equals(n10)) {
                arrayList.addAll(Fg.c.n(file, aVar.f5784c));
            }
        }
        return arrayList;
    }
}
