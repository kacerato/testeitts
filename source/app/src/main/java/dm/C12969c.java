package dm;

import ci.C4191b;
import ci.C4198i;
import hi.C13486b;
import java.io.IOException;
import java.util.Collection;
import java.util.Date;
import li.C14146h;
import org.bouncycastle.cms.P0;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.tsp.TSPException;
import org.bouncycastle.tsp.ers.ArchiveTimeStampValidationException;
import org.bouncycastle.tsp.ers.ERSException;

public class C12969c {

    public final C4191b f84853a;

    public final Qk.p f84854b;

    public final org.bouncycastle.tsp.h f84855c;

    public final byte[] f84856d;

    public p f84857e;

    public C12969c(C4191b c4191b, Qk.p pVar) throws TSPException, ERSException {
        this.f84857e = new C12967a();
        this.f84856d = null;
        try {
            this.f84853a = c4191b;
            this.f84855c = new org.bouncycastle.tsp.h(c4191b.A());
            this.f84854b = pVar;
        } catch (IOException e10) {
            throw new ERSException(e10.getMessage(), e10);
        }
    }

    public static C12969c c(org.bouncycastle.tsp.h hVar, Qk.q qVar) throws TSPException, ERSException {
        return new C12969c(new C4191b(hVar.l().s()), qVar);
    }

    public void a(boolean z10, byte[] bArr, Qk.p pVar) throws ArchiveTimeStampValidationException {
        C4198i[] z11 = this.f84853a.z();
        if (z11 == null) {
            if (!org.bouncycastle.util.a.g(bArr, this.f84855c.i().h())) {
                throw new ArchiveTimeStampValidationException("object hash not found in wrapped timestamp");
            }
            return;
        }
        C4198i c4198i = z11[0];
        if (z10 || !c4198i.u(bArr)) {
            if (c4198i.x() <= 1 || !org.bouncycastle.util.a.g(bArr, q.e(pVar, c4198i.y()))) {
                throw new ArchiveTimeStampValidationException("object hash not found");
            }
        }
    }

    public void b(org.bouncycastle.tsp.h hVar, byte[] bArr) throws ArchiveTimeStampValidationException {
        if (bArr != null && !org.bouncycastle.util.a.g(bArr, hVar.i().h())) {
            throw new ArchiveTimeStampValidationException("timestamp hash does not match root");
        }
    }

    public C13486b d() {
        return this.f84853a.v();
    }

    public byte[] e() throws IOException {
        return this.f84853a.getEncoded();
    }

    public Date f() {
        C14146h h10 = h();
        if (h10 != null) {
            return h10.g();
        }
        return null;
    }

    public Date g() {
        return this.f84855c.i().d();
    }

    public C14146h h() {
        org.bouncycastle.util.t<C14146h> c10 = this.f84855c.c();
        if (c10 == null) {
            return null;
        }
        Collection<C14146h> a10 = c10.a(this.f84855c.f());
        if (a10.isEmpty()) {
            return null;
        }
        return a10.iterator().next();
    }

    public org.bouncycastle.tsp.h i() {
        return this.f84855c;
    }

    public boolean j(g gVar, Date date) throws ERSException {
        if (this.f84855c.i().d().after(date)) {
            throw new ArchiveTimeStampValidationException("timestamp generation time is in the future");
        }
        try {
            m(gVar, date);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public C4191b k() {
        return this.f84853a;
    }

    public void l(P0 p02) throws TSPException {
        this.f84855c.m(p02);
    }

    public void m(g gVar, Date date) throws ERSException {
        n(gVar instanceof h, gVar.a(this.f84854b, this.f84856d), date);
    }

    public void n(boolean z10, byte[] bArr, Date date) throws ERSException {
        if (this.f84855c.i().d().after(date)) {
            throw new ArchiveTimeStampValidationException("timestamp generation time is in the future");
        }
        a(z10, bArr, this.f84854b);
        if (this.f84853a.z() != null) {
            bArr = this.f84857e.a(this.f84854b, this.f84853a.z());
        }
        b(this.f84855c, bArr);
    }

    public C12969c(C4191b c4191b, Qk.q qVar) throws TSPException, ERSException {
        this.f84857e = new C12967a();
        this.f84856d = null;
        try {
            this.f84853a = c4191b;
            this.f84855c = new org.bouncycastle.tsp.h(c4191b.A());
            this.f84854b = qVar.a(c4191b.v());
        } catch (IOException e10) {
            throw new ERSException(e10.getMessage(), e10);
        } catch (OperatorCreationException e11) {
            throw new ERSException(e11.getMessage(), e11);
        }
    }

    public C12969c(byte[] bArr, Qk.q qVar) throws TSPException, ERSException {
        this(C4191b.y(bArr), qVar);
    }

    public C12969c(byte[] bArr, C4191b c4191b, Qk.q qVar) throws TSPException, ERSException {
        this.f84857e = new C12967a();
        this.f84856d = bArr;
        try {
            this.f84853a = c4191b;
            this.f84855c = new org.bouncycastle.tsp.h(c4191b.A());
            this.f84854b = qVar.a(c4191b.v());
        } catch (IOException e10) {
            throw new ERSException(e10.getMessage(), e10);
        } catch (OperatorCreationException e11) {
            throw new ERSException(e11.getMessage(), e11);
        }
    }
}
