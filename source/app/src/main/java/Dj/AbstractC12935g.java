package dj;

import hi.C13480D;
import hi.C13481E;
import hi.C13482F;
import java.io.IOException;
import java.math.BigInteger;
import oh.C14549x;
import oh.InterfaceC14516g;
import org.bouncycastle.cms.P;
import org.bouncycastle.dvcs.DVCSException;
import uh.C15624o;

public abstract class AbstractC12935g {

    public final C13480D f84727a = new C13480D();

    public final P f84728b = new P();

    public final zh.h f84729c;

    public AbstractC12935g(zh.h hVar) {
        this.f84729c = hVar;
    }

    public void a(C14549x c14549x, boolean z10, InterfaceC14516g interfaceC14516g) throws DVCSException {
        try {
            this.f84727a.c(c14549x, z10, interfaceC14516g);
        } catch (IOException e10) {
            throw new DVCSException("cannot encode extension: " + e10.getMessage(), e10);
        }
    }

    public C12934f b(zh.k kVar) throws DVCSException {
        if (!this.f84727a.h()) {
            this.f84729c.f(this.f84727a.e());
        }
        return new C12934f(new C15624o(zh.e.f131396e, new zh.f(this.f84729c.a(), kVar)));
    }

    public void c(C13481E c13481e) {
        this.f84729c.b(c13481e);
    }

    public void d(C13482F c13482f) {
        this.f84729c.c(c13482f);
    }

    public void e(C13481E c13481e) {
        this.f84729c.d(c13481e);
    }

    public void f(C13482F c13482f) {
        this.f84729c.e(c13482f);
    }

    public void g(BigInteger bigInteger) {
        this.f84729c.g(bigInteger);
    }

    public void h(C13481E c13481e) {
        this.f84729c.j(c13481e);
    }
}
