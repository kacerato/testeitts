package dm;

import ci.C4191b;
import ci.C4192c;
import ci.C4196g;
import ci.C4199j;
import fm.C13260d;
import hi.C13486b;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import li.C14146h;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14520i;
import org.bouncycastle.cms.P0;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.tsp.TSPException;
import org.bouncycastle.tsp.ers.ERSException;
import uh.C15624o;
import uh.InterfaceC15621l;
import uh.V;

public class j {

    public final C4196g f84868a;

    public final Qk.q f84869b;

    public final C12969c f84870c;

    public final C12969c f84871d;

    public final byte[] f84872e;

    public final Qk.p f84873f;

    public final C4191b f84874g;

    public j(C4196g c4196g, Qk.q qVar) throws TSPException, ERSException {
        this.f84868a = c4196g;
        this.f84869b = qVar;
        C4192c[] v10 = c4196g.v().v();
        this.f84874g = v10[0].v()[0];
        r(v10);
        C4191b[] v11 = v10[v10.length - 1].v();
        this.f84871d = new C12969c(v11[v11.length - 1], qVar);
        if (v10.length > 1) {
            try {
                C14518h c14518h = new C14518h();
                for (int i10 = 0; i10 != v10.length - 1; i10++) {
                    c14518h.a(v10[i10]);
                }
                Qk.p a10 = qVar.a(this.f84871d.d());
                this.f84873f = a10;
                OutputStream outputStream = a10.getOutputStream();
                outputStream.write(new G0(c14518h).s(InterfaceC14520i.f98892a));
                outputStream.close();
                this.f84872e = a10.b();
            } catch (Exception e10) {
                throw new ERSException(e10.getMessage(), e10);
            }
        } else {
            this.f84873f = null;
            this.f84872e = null;
        }
        this.f84870c = new C12969c(this.f84872e, v11[0], qVar);
    }

    public final C12970d a() throws ERSException {
        try {
            Qk.p a10 = this.f84869b.a(this.f84871d.d());
            C4191b[] g10 = g();
            if (!a10.a().equals(g10[0].v())) {
                throw new ERSException("digest mismatch for timestamp renewal");
            }
            C12970d c12970d = new C12970d(a10);
            ArrayList arrayList = new ArrayList(g10.length);
            for (int i10 = 0; i10 != g10.length; i10++) {
                try {
                    arrayList.add(new C12971e(g10[i10].A().s(InterfaceC14520i.f98892a)));
                } catch (IOException e10) {
                    throw new ERSException("unable to process previous ArchiveTimeStamps", e10);
                }
            }
            c12970d.b(new h(arrayList));
            return c12970d;
        } catch (OperatorCreationException e11) {
            throw new ERSException(e11.getMessage(), e11);
        }
    }

    public final C4199j b(C15624o c15624o) throws TSPException {
        V B10 = V.B(c15624o.u());
        if (B10.A().v().A(Xh.t.f29153z2)) {
            return C4199j.y(AbstractC14551y.F(B10.A().u()).H());
        }
        throw new TSPException("cannot parse time stamp");
    }

    public org.bouncycastle.tsp.d c(Qk.p pVar, g gVar, org.bouncycastle.tsp.e eVar) throws ERSException, TSPException, IOException {
        return d(pVar, gVar, eVar, null);
    }

    public org.bouncycastle.tsp.d d(Qk.p pVar, g gVar, org.bouncycastle.tsp.e eVar, BigInteger bigInteger) throws ERSException, TSPException, IOException {
        try {
            this.f84870c.m(gVar, new Date());
            C12970d c12970d = new C12970d(pVar);
            c12970d.b(gVar);
            c12970d.c(this.f84868a.v());
            return c12970d.g(eVar, bigInteger);
        } catch (Exception unused) {
            throw new ERSException("attempt to hash renew on invalid data");
        }
    }

    public org.bouncycastle.tsp.d e(org.bouncycastle.tsp.e eVar) throws TSPException, ERSException {
        return f(eVar, null);
    }

    public org.bouncycastle.tsp.d f(org.bouncycastle.tsp.e eVar, BigInteger bigInteger) throws ERSException, TSPException {
        try {
            return a().g(eVar, bigInteger);
        } catch (IOException e10) {
            throw new ERSException(e10.getMessage(), e10);
        }
    }

    public C4191b[] g() {
        return this.f84868a.v().v()[r0.length - 1].v();
    }

    public Qk.q h() {
        return this.f84869b;
    }

    public byte[] i() throws IOException {
        return this.f84868a.getEncoded();
    }

    public byte[] j() throws TSPException, ERSException {
        C15624o A10 = this.f84874g.A();
        if (A10.v().A(InterfaceC15621l.f120706n8)) {
            return b(A10).z().v();
        }
        throw new ERSException("cannot identify TSTInfo for digest");
    }

    public C14146h k() {
        return this.f84871d.h();
    }

    public boolean l(g gVar, Date date) throws ERSException {
        return this.f84870c.j(gVar, date);
    }

    public boolean m(j jVar) {
        return this.f84874g.A().equals(jVar.f84874g.A());
    }

    public j n(Qk.p pVar, g gVar, org.bouncycastle.tsp.f fVar) throws ERSException, TSPException {
        try {
            this.f84870c.m(gVar, new Date());
            try {
                C12970d c12970d = new C12970d(pVar);
                c12970d.b(gVar);
                c12970d.c(this.f84868a.v());
                return new j(this.f84868a.u(c12970d.d(fVar).k(), true), this.f84869b);
            } catch (IOException e10) {
                throw new ERSException(e10.getMessage(), e10);
            } catch (IllegalArgumentException e11) {
                throw new ERSException(e11.getMessage(), e11);
            }
        } catch (Exception unused) {
            throw new ERSException("attempt to hash renew on invalid data");
        }
    }

    public j o(org.bouncycastle.tsp.f fVar) throws ERSException, TSPException {
        try {
            return new j(this.f84868a.u(a().d(fVar).k(), false), this.f84869b);
        } catch (IllegalArgumentException e10) {
            throw new ERSException(e10.getMessage(), e10);
        }
    }

    public C4196g p() {
        return this.f84868a;
    }

    public void q(P0 p02) throws TSPException {
        if (this.f84870c != this.f84871d) {
            C4191b[] g10 = g();
            for (int i10 = 0; i10 != g10.length - 1; i10++) {
                try {
                    this.f84871d.m(new C12971e(g10[i10].A().s(InterfaceC14520i.f98892a)), this.f84871d.g());
                } catch (Exception e10) {
                    throw new TSPException("unable to process previous ArchiveTimeStamps", e10);
                }
            }
        }
        this.f84871d.l(p02);
    }

    public final void r(C4192c[] c4192cArr) throws ERSException, TSPException {
        for (int i10 = 0; i10 != c4192cArr.length; i10++) {
            C4191b[] v10 = c4192cArr[i10].v();
            C4191b c4191b = v10[0];
            C13486b v11 = c4191b.v();
            int i11 = 1;
            while (i11 != v10.length) {
                C4191b c4191b2 = v10[i11];
                if (!v11.equals(c4191b2.v())) {
                    throw new ERSException("invalid digest algorithm in chain");
                }
                C15624o A10 = c4191b2.A();
                if (!A10.v().A(InterfaceC15621l.f120706n8)) {
                    throw new TSPException("cannot identify TSTInfo");
                }
                try {
                    new C12969c(c4191b2, this.f84869b.a(v11)).m(new C12971e(c4191b.A().s(InterfaceC14520i.f98892a)), b(A10).x().I());
                    i11++;
                    c4191b = c4191b2;
                } catch (Exception e10) {
                    throw new ERSException("invalid timestamp renewal found: " + e10.getMessage(), e10);
                }
            }
        }
    }

    public void s(g gVar, Date date) throws ERSException {
        this.f84870c.m(gVar, date);
    }

    public void t(boolean z10, byte[] bArr, Date date) throws ERSException {
        this.f84870c.n(z10, bArr, date);
    }

    public j(InputStream inputStream, Qk.q qVar) throws TSPException, ERSException, IOException {
        this(C4196g.y(C13260d.e(inputStream)), qVar);
    }

    public j(byte[] bArr, Qk.q qVar) throws TSPException, ERSException {
        this(C4196g.y(bArr), qVar);
    }
}
