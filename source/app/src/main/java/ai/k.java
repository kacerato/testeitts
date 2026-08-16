package Ai;

import Bi.L;
import Bi.Z;
import Oi.J;
import Qk.r;
import Xh.q;
import Xi.C3360o0;
import Xi.w0;
import hi.C13486b;
import oh.AbstractC14551y;
import oh.C14549x;
import org.bouncycastle.cms.C0;
import org.bouncycastle.cms.CMSException;

public class k extends C0 {
    public k(C14549x c14549x, char[] cArr) {
        super(c14549x, cArr);
    }

    @Override
    public byte[] b(int i10, C13486b c13486b, int i11) throws CMSException {
        q u10 = q.u(c13486b.x());
        byte[] b10 = i10 == 0 ? L.b(this.f100500a) : L.c(this.f100500a);
        try {
            J j10 = new J(p.f(u10.y()));
            j10.j(b10, u10.z(), u10.v().intValue());
            return ((C3360o0) j10.e(i11)).b();
        } catch (Exception e10) {
            throw new CMSException("exception creating derived key: " + e10.getMessage(), e10);
        }
    }

    @Override
    public byte[] c(C13486b c13486b, byte[] bArr, r rVar) throws CMSException {
        byte[] b10 = ((C3360o0) o.a(rVar)).b();
        Z c10 = p.c(c13486b.u());
        c10.a(true, new w0(new C3360o0(bArr), AbstractC14551y.F(c13486b.x()).H()));
        return c10.c(b10, 0, b10.length);
    }
}
