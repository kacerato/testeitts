package yg;

import Bg.j;
import Bg.k;
import Bg.s;
import Fg.h;
import Fg.i;
import java.nio.charset.Charset;
import net.lingala.zip4j.exception.ZipException;

public class C16185a {
    public final int a(String str, Charset charset) {
        return C16188d.b(str, charset).length;
    }

    public final byte[] b(boolean z10, s sVar, Charset charset) {
        byte[] bArr = new byte[2];
        bArr[0] = e(z10, sVar);
        if (charset == null || Fg.d.f6822w.equals(charset)) {
            bArr[1] = Fg.a.b(bArr[1], 3);
        }
        return bArr;
    }

    public final Bg.a c(s sVar) throws ZipException {
        Bg.a aVar = new Bg.a();
        if (sVar.b() != null) {
            aVar.i(sVar.b());
        }
        Cg.a a10 = sVar.a();
        Cg.a aVar2 = Cg.a.KEY_STRENGTH_128;
        if (a10 == aVar2) {
            aVar.h(aVar2);
        } else {
            Cg.a a11 = sVar.a();
            Cg.a aVar3 = Cg.a.KEY_STRENGTH_192;
            if (a11 == aVar3) {
                aVar.h(aVar3);
            } else {
                Cg.a a12 = sVar.a();
                Cg.a aVar4 = Cg.a.KEY_STRENGTH_256;
                if (a12 != aVar4) {
                    throw new ZipException("invalid AES key strength");
                }
                aVar.h(aVar4);
            }
        }
        aVar.j(sVar.d());
        return aVar;
    }

    public j d(s sVar, boolean z10, int i10, Charset charset, Fg.f fVar) throws ZipException {
        j jVar = new j();
        jVar.b(EnumC16187c.CENTRAL_DIRECTORY);
        jVar.b0(i.a(sVar, fVar));
        jVar.L(i.b(sVar).a());
        if (sVar.o() && sVar.f() == Cg.e.AES) {
            jVar.x(Cg.d.AES_INTERNAL_ONLY);
            jVar.v(c(sVar));
            jVar.E(jVar.i() + 11);
        } else {
            jVar.x(sVar.d());
        }
        if (sVar.o()) {
            if (sVar.f() == null || sVar.f() == Cg.e.NONE) {
                throw new ZipException("Encryption method has to be set when encryptFiles flag is set in zip parameters");
            }
            jVar.B(true);
            jVar.C(sVar.f());
        }
        String g10 = g(sVar.k());
        jVar.F(g10);
        jVar.G(a(g10, charset));
        if (!z10) {
            i10 = 0;
        }
        jVar.V(i10);
        jVar.J(h.h(sVar.l()));
        boolean A10 = Fg.c.A(g10);
        jVar.A(A10);
        jVar.W(Fg.c.i(A10));
        if (sVar.u() && sVar.h() == -1) {
            jVar.K(0L);
        } else {
            jVar.K(sVar.h());
        }
        if (sVar.o() && sVar.f() == Cg.e.ZIP_STANDARD) {
            jVar.y(sVar.g());
        }
        jVar.I(b(jVar.t(), sVar, charset));
        jVar.z(sVar.u());
        jVar.X(sVar.j());
        return jVar;
    }

    public final byte e(boolean z10, s sVar) {
        byte b10 = z10 ? Fg.a.b((byte) 0, 0) : (byte) 0;
        if (Cg.d.DEFLATE.equals(sVar.d())) {
            if (Cg.c.NORMAL.equals(sVar.c())) {
                b10 = Fg.a.c(Fg.a.c(b10, 1), 2);
            } else if (Cg.c.MAXIMUM.equals(sVar.c())) {
                b10 = Fg.a.c(Fg.a.b(b10, 1), 2);
            } else if (Cg.c.FAST.equals(sVar.c())) {
                b10 = Fg.a.b(Fg.a.c(b10, 1), 2);
            } else if (Cg.c.FASTEST.equals(sVar.c()) || Cg.c.ULTRA.equals(sVar.c())) {
                b10 = Fg.a.b(Fg.a.b(b10, 1), 2);
            }
        }
        return sVar.u() ? Fg.a.b(b10, 3) : b10;
    }

    public k f(j jVar) {
        k kVar = new k();
        kVar.b(EnumC16187c.LOCAL_FILE_HEADER);
        kVar.L(jVar.p());
        kVar.x(jVar.e());
        kVar.J(jVar.m());
        kVar.K(jVar.o());
        kVar.G(jVar.k());
        kVar.F(jVar.j());
        kVar.B(jVar.t());
        kVar.C(jVar.g());
        kVar.v(jVar.c());
        kVar.y(jVar.f());
        kVar.w(jVar.d());
        kVar.I((byte[]) jVar.l().clone());
        kVar.z(jVar.r());
        kVar.E(jVar.i());
        return kVar;
    }

    public final String g(String str) throws ZipException {
        if (h.j(str)) {
            return str;
        }
        throw new ZipException("fileNameInZip is null or empty");
    }
}
