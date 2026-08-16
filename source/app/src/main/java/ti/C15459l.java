package ti;

import Qk.p;
import fi.C13228d;
import hi.C13486b;
import hi.h0;
import java.io.OutputStream;
import oh.A0;
import oh.C0;
import org.bouncycastle.cert.ocsp.OCSPException;

public class C15459l {

    public static final C13486b f117690b = new C13486b(Wh.b.f27785i, A0.f98776c);

    public Vh.j f117691a;

    public C15459l(Vh.j jVar) {
        this.f117691a = jVar;
    }

    public Vh.j a() {
        return this.f117691a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C15459l) {
            return this.f117691a.equals(((C15459l) obj).f117691a);
        }
        return false;
    }

    public int hashCode() {
        return this.f117691a.hashCode();
    }

    public C15459l(C13228d c13228d) {
        this.f117691a = new Vh.j(c13228d);
    }

    public C15459l(h0 h0Var, p pVar) throws OCSPException {
        try {
            if (!pVar.a().equals(f117690b)) {
                throw new IllegalArgumentException("only SHA-1 can be used with RespID - found: " + ((Object) pVar.a().u()));
            }
            OutputStream outputStream = pVar.getOutputStream();
            outputStream.write(h0Var.z().F());
            outputStream.close();
            this.f117691a = new Vh.j(new C0(pVar.b()));
        } catch (Exception e10) {
            throw new OCSPException("problem creating ID: " + ((Object) e10), e10);
        }
    }
}
