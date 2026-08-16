package Eg;

import Bg.r;
import Eg.h;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;
import yg.C16188d;

public class j extends b<a> {

    public char[] f5800f;

    public zg.h f5801g;

    public static class a extends d {

        public String f5802b;

        public String f5803c;

        public String f5804d;

        public a(String str, String str2, String str3, Bg.m mVar) {
            super(mVar);
            this.f5802b = str;
            this.f5803c = str2;
            this.f5804d = str3;
        }
    }

    public j(r rVar, char[] cArr, Bg.l lVar, h.b bVar) {
        super(rVar, lVar, bVar);
        this.f5800f = cArr;
    }

    @Override
    public long d(a aVar) throws ZipException {
        return C16188d.g(z(aVar.f5803c));
    }

    public final zg.k w(Bg.m mVar) throws IOException {
        this.f5801g = Fg.g.b(q());
        return new zg.k(this.f5801g, this.f5800f, mVar);
    }

    public final String x(String str, String str2, Bg.j jVar) {
        if (!Fg.h.j(str) || !Fg.c.A(str2)) {
            return str;
        }
        String str3 = str.endsWith("/") ? "" : "/";
        return jVar.j().replaceFirst(str2, str + str3);
    }

    @Override
    public void f(a aVar, Dg.a aVar2) throws IOException {
        List<Bg.j> z10 = z(aVar.f5803c);
        try {
            zg.k w10 = w(aVar.f5782a);
            try {
                byte[] bArr = new byte[aVar.f5782a.a()];
                for (Bg.j jVar : z10) {
                    this.f5801g.a(jVar);
                    o(w10, jVar, aVar.f5802b, x(aVar.f5804d, aVar.f5803c, jVar), aVar2, bArr);
                }
                if (w10 != null) {
                    w10.close();
                }
            } finally {
            }
        } finally {
            zg.h hVar = this.f5801g;
            if (hVar != null) {
                hVar.close();
            }
        }
    }

    public final List<Bg.j> z(String str) throws ZipException {
        if (Fg.c.A(str)) {
            return C16188d.e(q().b().b(), str);
        }
        Bg.j c10 = C16188d.c(q(), str);
        if (c10 != null) {
            return Collections.singletonList(c10);
        }
        throw new ZipException("No file found with name " + str + " in zip file", ZipException.a.FILE_NOT_FOUND);
    }
}
