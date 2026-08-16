package Ai;

import Bi.L;
import Bi.Z;
import Oi.J;
import Xh.q;
import Xi.C3360o0;
import Xi.w0;
import hi.C13486b;
import oh.AbstractC14551y;
import org.bouncycastle.cms.A0;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.crypto.InvalidCipherTextException;

public abstract class j implements A0 {

    public final char[] f814c;

    public int f815d = 1;

    public j(char[] cArr) {
        this.f814c = cArr;
    }

    @Override
    public byte[] c(int i10, C13486b c13486b, int i11) throws CMSException {
        q u10 = q.u(c13486b.x());
        byte[] b10 = i10 == 0 ? L.b(this.f814c) : L.c(this.f814c);
        try {
            J j10 = new J(p.f(u10.y()));
            j10.j(b10, u10.z(), u10.v().intValue());
            return ((C3360o0) j10.e(i11)).b();
        } catch (Exception e10) {
            throw new CMSException("exception creating derived key: " + e10.getMessage(), e10);
        }
    }

    @Override
    public int e() {
        return this.f815d;
    }

    public C3360o0 g(C13486b c13486b, C13486b c13486b2, byte[] bArr, byte[] bArr2) throws CMSException {
        Z c10 = p.c(c13486b.u());
        c10.a(false, new w0(new C3360o0(bArr), AbstractC14551y.F(c13486b.x()).H()));
        try {
            return new C3360o0(c10.d(bArr2, 0, bArr2.length));
        } catch (InvalidCipherTextException e10) {
            throw new CMSException("unable to unwrap key: " + e10.getMessage(), e10);
        }
    }

    @Override
    public char[] getPassword() {
        return this.f814c;
    }

    public j h(int i10) {
        this.f815d = i10;
        return this;
    }
}
