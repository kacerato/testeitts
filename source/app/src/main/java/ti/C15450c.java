package ti;

import Qk.p;
import Qk.q;
import hi.C13486b;
import hi.h0;
import java.io.OutputStream;
import java.math.BigInteger;
import li.C14146h;
import oh.A0;
import oh.C0;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14520i;
import org.bouncycastle.cert.ocsp.OCSPException;
import org.bouncycastle.operator.OperatorCreationException;

public class C15450c {

    public static final C13486b f117661b = new C13486b(Wh.b.f27785i, A0.f98776c);

    public final Vh.b f117662a;

    public C15450c(p pVar, C14146h c14146h, BigInteger bigInteger) throws OCSPException {
        this.f117662a = a(pVar, c14146h, new C14539s(bigInteger));
    }

    public static Vh.b a(p pVar, C14146h c14146h, C14539s c14539s) throws OCSPException {
        try {
            OutputStream outputStream = pVar.getOutputStream();
            outputStream.write(c14146h.x().C().s(InterfaceC14520i.f98892a));
            outputStream.close();
            C0 c02 = new C0(pVar.b());
            h0 m10 = c14146h.m();
            OutputStream outputStream2 = pVar.getOutputStream();
            outputStream2.write(m10.z().F());
            outputStream2.close();
            return new Vh.b(pVar.a(), c02, new C0(pVar.b()), c14539s);
        } catch (Exception e10) {
            throw new OCSPException("problem creating ID: " + ((Object) e10), e10);
        }
    }

    public static C15450c b(C15450c c15450c, BigInteger bigInteger) {
        return new C15450c(new Vh.b(c15450c.f117662a.u(), c15450c.f117662a.y(), c15450c.f117662a.x(), new C14539s(bigInteger)));
    }

    public C14549x c() {
        return this.f117662a.u().u();
    }

    public byte[] d() {
        return this.f117662a.x().H();
    }

    public byte[] e() {
        return this.f117662a.y().H();
    }

    public boolean equals(Object obj) {
        if (obj instanceof C15450c) {
            return this.f117662a.r().A(((C15450c) obj).f117662a.r());
        }
        return false;
    }

    public BigInteger f() {
        return this.f117662a.z().I();
    }

    public boolean g(C14146h c14146h, q qVar) throws OCSPException {
        try {
            return a(qVar.a(this.f117662a.u()), c14146h, this.f117662a.z()).equals(this.f117662a);
        } catch (OperatorCreationException e10) {
            throw new OCSPException("unable to create digest calculator: " + e10.getMessage(), e10);
        }
    }

    public Vh.b h() {
        return this.f117662a;
    }

    public int hashCode() {
        return this.f117662a.r().hashCode();
    }

    public C15450c(Vh.b bVar) {
        if (bVar == null) {
            throw new IllegalArgumentException("'id' cannot be null");
        }
        this.f117662a = bVar;
    }
}
