package dj;

import hi.C13478B;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import li.C14146h;
import org.bouncycastle.dvcs.DVCSException;
import zh.C16311a;

public class C12943o extends AbstractC12935g {

    public List f84737d;

    public C12943o() {
        super(new zh.h(zh.m.f131446e));
        this.f84737d = new ArrayList();
    }

    public void i(C12942n c12942n) {
        this.f84737d.add(c12942n.a());
    }

    public void j(C13478B c13478b) {
        this.f84737d.add(new zh.n(new C16311a(c13478b)));
    }

    public void k(C14146h c14146h) {
        this.f84737d.add(new zh.n(new C16311a(0, c14146h.x())));
    }

    public C12934f l() throws DVCSException {
        List list = this.f84737d;
        return b(new zh.k((zh.n[]) list.toArray(new zh.n[list.size()])));
    }

    public void m(Date date) {
        this.f84729c.i(new zh.j(date));
    }
}
