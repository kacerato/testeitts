package org.bouncycastle.cms;

import Qk.AbstractC3011d;
import oh.AbstractC14551y;
import org.bouncycastle.operator.OperatorException;
import uh.C15634z;

public abstract class AbstractC14676r0 implements G0 {

    public final AbstractC3011d f101013a;

    public C15634z f101014b;

    public byte[] f101015c;

    public AbstractC14676r0(C15634z c15634z, AbstractC3011d abstractC3011d) {
        this.f101014b = c15634z;
        this.f101013a = abstractC3011d;
    }

    @Override
    public final uh.Q a(Qk.r rVar) throws CMSException {
        try {
            byte[] b10 = this.f101013a.b(rVar);
            C15634z c15634z = this.f101014b;
            return new uh.Q(new uh.F(c15634z != null ? new uh.P(c15634z) : new uh.P((AbstractC14551y) new oh.C0(this.f101015c)), this.f101013a.a(), new oh.C0(b10)));
        } catch (OperatorException e10) {
            throw new CMSException("exception wrapping content key: " + e10.getMessage(), e10);
        }
    }

    public AbstractC14676r0(byte[] bArr, AbstractC3011d abstractC3011d) {
        this.f101015c = bArr;
        this.f101013a = abstractC3011d;
    }
}
