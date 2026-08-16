package Ai;

import Bi.InterfaceC2379k;
import Rk.q;
import Xi.C3335c;
import hi.C13486b;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.InterfaceC14673p0;
import org.bouncycastle.operator.OperatorException;

public abstract class g implements InterfaceC14673p0 {

    public C3335c f810c;

    public g(C3335c c3335c) {
        this.f810c = c3335c;
    }

    public InterfaceC2379k g(C13486b c13486b, C13486b c13486b2, byte[] bArr) throws CMSException {
        try {
            return o.a(new q(c13486b, this.f810c).b(c13486b2, bArr));
        } catch (OperatorException e10) {
            throw new CMSException("exception unwrapping key: " + e10.getMessage(), e10);
        }
    }
}
