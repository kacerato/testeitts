package Eg;

import Bg.r;
import Bg.s;
import Eg.h;
import java.io.IOException;
import java.io.InputStream;
import net.lingala.zip4j.exception.ZipException;
import yd.C16181m;
import yg.C16188d;
import yg.C16189e;

public class g extends Eg.a<a> {

    public static class a extends d {

        public final InputStream f5787b;

        public final s f5788c;

        public a(InputStream inputStream, s sVar, Bg.m mVar) {
            super(mVar);
            this.f5787b = inputStream;
            this.f5788c = sVar;
        }
    }

    public g(r rVar, char[] cArr, C16189e c16189e, h.b bVar) {
        super(rVar, cArr, c16189e, bVar);
    }

    public final void A(r rVar, Bg.m mVar, String str, Dg.a aVar) throws ZipException {
        Bg.j c10 = C16188d.c(rVar, str);
        if (c10 != null) {
            t(c10, aVar, mVar);
        }
    }

    @Override
    public long d(a aVar) {
        return 0L;
    }

    @Override
    public void f(a aVar, Dg.a aVar2) throws IOException {
        x(aVar.f5788c);
        if (!Fg.h.j(aVar.f5788c.k())) {
            throw new ZipException("fileNameInZip has to be set in zipParameters when adding stream");
        }
        A(r(), aVar.f5782a, aVar.f5788c.k(), aVar2);
        aVar.f5788c.P(true);
        if (aVar.f5788c.d().equals(Cg.d.STORE)) {
            aVar.f5788c.D(0L);
        }
        Ag.h hVar = new Ag.h(r().k(), r().g());
        try {
            Ag.k s10 = s(hVar, aVar.f5782a);
            try {
                byte[] bArr = new byte[aVar.f5782a.a()];
                s sVar = aVar.f5788c;
                s10.k(sVar);
                if (!sVar.k().endsWith("/") && !sVar.k().endsWith(C16181m.f130232i)) {
                    while (true) {
                        int read = aVar.f5787b.read(bArr);
                        if (read == -1) {
                            break;
                        } else {
                            s10.write(bArr, 0, read);
                        }
                    }
                }
                Bg.j c10 = s10.c();
                if (Cg.d.STORE.equals(Fg.h.i(c10))) {
                    w(c10, hVar);
                }
                s10.close();
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
}
