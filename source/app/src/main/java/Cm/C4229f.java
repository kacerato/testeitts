package cm;

import Qk.p;
import Qk.q;
import hi.C13486b;
import java.io.IOException;
import java.io.OutputStream;
import oh.InterfaceC14520i;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.tsp.TSPException;
import org.bouncycastle.tsp.cms.ImprintDigestInvalidException;
import org.bouncycastle.tsp.h;
import uh.C15611b;
import uh.a0;
import uh.c0;
import uh.d0;

public class C4229f {

    public final a0[] f35050a;

    public final C4228e f35051b;

    public C4229f(c0 c0Var) {
        this.f35051b = new C4228e(c0Var.z());
        this.f35050a = c0Var.A().x().x();
    }

    public byte[] a(p pVar) throws CMSException {
        a0 a0Var = this.f35050a[r0.length - 1];
        OutputStream outputStream = pVar.getOutputStream();
        try {
            outputStream.write(a0Var.s(InterfaceC14520i.f98892a));
            outputStream.close();
            return pVar.b();
        } catch (IOException e10) {
            throw new CMSException("exception calculating hash: " + e10.getMessage(), e10);
        }
    }

    public final void b(h hVar, byte[] bArr) throws ImprintDigestInvalidException {
        if (!org.bouncycastle.util.a.g(bArr, hVar.i().h())) {
            throw new ImprintDigestInvalidException("hash calculated is different from MessageImprintDigest found in TimeStampToken", hVar);
        }
    }

    public String c() {
        return this.f35051b.b();
    }

    public String d() {
        return this.f35051b.c();
    }

    public p e(q qVar) throws OperatorCreationException {
        try {
            p a10 = qVar.a(new C13486b(g(this.f35050a[0]).i().g()));
            j(a10);
            return a10;
        } catch (CMSException e10) {
            throw new OperatorCreationException("unable to extract algorithm ID: " + e10.getMessage(), e10);
        }
    }

    public C15611b f() {
        return new C15611b(this.f35051b.d());
    }

    public h g(a0 a0Var) throws CMSException {
        try {
            return new h(a0Var.x());
        } catch (IOException e10) {
            throw new CMSException("unable to parse token data: " + e10.getMessage(), e10);
        } catch (IllegalArgumentException e11) {
            throw new CMSException("token data invalid: " + e11.getMessage(), e11);
        } catch (TSPException e12) {
            if (e12.getCause() instanceof CMSException) {
                throw ((CMSException) e12.getCause());
            }
            throw new CMSException("token data invalid: " + e12.getMessage(), e12);
        }
    }

    public h[] h() throws CMSException {
        h[] hVarArr = new h[this.f35050a.length];
        int i10 = 0;
        while (true) {
            a0[] a0VarArr = this.f35050a;
            if (i10 >= a0VarArr.length) {
                return hVarArr;
            }
            hVarArr[i10] = g(a0VarArr[i10]);
            i10++;
        }
    }

    public a0[] i() {
        return this.f35050a;
    }

    public void j(p pVar) throws CMSException {
        this.f35051b.e(pVar);
    }

    public void k(q qVar, byte[] bArr) throws ImprintDigestInvalidException, CMSException {
        int i10 = 0;
        while (true) {
            a0[] a0VarArr = this.f35050a;
            if (i10 >= a0VarArr.length) {
                return;
            }
            try {
                h g10 = g(a0VarArr[i10]);
                if (i10 > 0) {
                    p a10 = qVar.a(g10.i().f());
                    a10.getOutputStream().write(this.f35050a[i10 - 1].s(InterfaceC14520i.f98892a));
                    bArr = a10.b();
                }
                b(g10, bArr);
                i10++;
            } catch (IOException e10) {
                throw new CMSException("exception calculating hash: " + e10.getMessage(), e10);
            } catch (OperatorCreationException e11) {
                throw new CMSException("cannot create digest: " + e11.getMessage(), e11);
            }
        }
    }

    public void l(q qVar, byte[] bArr, h hVar) throws ImprintDigestInvalidException, CMSException {
        try {
            byte[] d10 = hVar.d();
            int i10 = 0;
            while (true) {
                a0[] a0VarArr = this.f35050a;
                if (i10 >= a0VarArr.length) {
                    throw new ImprintDigestInvalidException("passed in token not associated with timestamps present", hVar);
                }
                try {
                    h g10 = g(a0VarArr[i10]);
                    if (i10 > 0) {
                        p a10 = qVar.a(g10.i().f());
                        a10.getOutputStream().write(this.f35050a[i10 - 1].s(InterfaceC14520i.f98892a));
                        bArr = a10.b();
                    }
                    b(g10, bArr);
                    if (org.bouncycastle.util.a.g(g10.d(), d10)) {
                        return;
                    } else {
                        i10++;
                    }
                } catch (IOException e10) {
                    throw new CMSException("exception calculating hash: " + e10.getMessage(), e10);
                } catch (OperatorCreationException e11) {
                    throw new CMSException("cannot create digest: " + e11.getMessage(), e11);
                }
            }
        } catch (IOException e12) {
            throw new CMSException("exception encoding timeStampToken: " + e12.getMessage(), e12);
        }
    }

    public C4229f(d0 d0Var) throws IOException {
        this.f35051b = new C4228e(d0Var.e());
        this.f35050a = d0Var.f().x().x();
    }
}
