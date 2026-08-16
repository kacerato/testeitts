package oi;

import oh.C14549x;
import oh.InterfaceC14516g;
import org.bouncycastle.cert.crmf.CRMFException;
import org.bouncycastle.cms.C14683y;
import org.bouncycastle.cms.CMSException;
import uh.C15624o;
import uh.C15629u;
import uh.InterfaceC15621l;
import wh.InterfaceC16004b;

public class C14569o implements InterfaceC14565k {

    public static final int f99042b = 0;

    public static final int f99043c = 1;

    public static final int f99044d = 2;

    public static final C14549x f99045e = InterfaceC16004b.f127480g;

    public final wh.o f99046a;

    public C14569o(wh.o oVar) {
        this.f99046a = oVar;
    }

    public int a() {
        return this.f99046a.v();
    }

    public C14683y b() throws CRMFException {
        try {
            return new C14683y(new C15624o(InterfaceC15621l.f120707o8, C15629u.w(wh.l.u(this.f99046a.x()).v())));
        } catch (CMSException e10) {
            throw new CRMFException("CMS parsing error: " + e10.getMessage(), e10.getCause());
        } catch (Exception e11) {
            throw new CRMFException("CRMF parsing error: " + e11.getMessage(), e11);
        }
    }

    public boolean c() {
        return !wh.l.u(this.f99046a.x()).x();
    }

    @Override
    public C14549x getType() {
        return f99045e;
    }

    @Override
    public InterfaceC14516g getValue() {
        return this.f99046a;
    }
}
