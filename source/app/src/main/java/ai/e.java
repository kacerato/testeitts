package Ai;

import Bi.InterfaceC2379k;
import Qk.K;
import Rk.v;
import hi.C13486b;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.InterfaceC14627d0;
import org.bouncycastle.operator.OperatorException;

public abstract class e implements InterfaceC14627d0 {

    public K f809c;

    public e(v vVar) {
        this.f809c = vVar;
    }

    public InterfaceC2379k g(C13486b c13486b, C13486b c13486b2, byte[] bArr) throws CMSException {
        try {
            return o.a(this.f809c.b(c13486b2, bArr));
        } catch (OperatorException e10) {
            throw new CMSException("exception unwrapping key: " + e10.getMessage(), e10);
        }
    }
}
