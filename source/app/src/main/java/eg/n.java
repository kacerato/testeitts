package Eg;

import Bg.r;
import Dg.a;
import Eg.h;
import java.io.IOException;
import net.lingala.zip4j.exception.ZipException;
import yg.C16189e;

public class n extends h<a> {

    public final r f5815d;

    public static class a extends d {

        public String f5816b;

        public a(String str, Bg.m mVar) {
            super(mVar);
            this.f5816b = str;
        }
    }

    public n(r rVar, h.b bVar) {
        super(bVar);
        this.f5815d = rVar;
    }

    @Override
    public a.c g() {
        return a.c.SET_COMMENT;
    }

    @Override
    public long d(a aVar) {
        return 0L;
    }

    @Override
    public void f(a aVar, Dg.a aVar2) throws IOException {
        if (aVar.f5816b == null) {
            throw new ZipException("comment is null, cannot update Zip file with comment");
        }
        Bg.g e10 = this.f5815d.e();
        e10.k(aVar.f5816b);
        Ag.h hVar = new Ag.h(this.f5815d.k());
        try {
            if (this.f5815d.n()) {
                hVar.j(this.f5815d.j().f());
            } else {
                hVar.j(e10.g());
            }
            new C16189e().e(this.f5815d, hVar, aVar.f5782a.b());
            hVar.close();
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
