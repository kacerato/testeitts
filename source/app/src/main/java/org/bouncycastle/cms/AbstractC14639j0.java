package org.bouncycastle.cms;

import oh.AbstractC14551y;
import oh.C14539s;
import org.bouncycastle.operator.OperatorException;
import uh.C15634z;
import uh.InterfaceC15621l;

public abstract class AbstractC14639j0 implements G0 {

    public final AbstractC14635h0 f100790a;

    public C15634z f100791b;

    public byte[] f100792c;

    public AbstractC14639j0(C15634z c15634z, AbstractC14635h0 abstractC14635h0) {
        this.f100791b = c15634z;
        this.f100790a = abstractC14635h0;
    }

    @Override
    public final uh.Q a(Qk.r rVar) throws CMSException {
        try {
            byte[] b10 = this.f100790a.b(rVar);
            C15634z c15634z = this.f100791b;
            return new uh.Q(new uh.L(InterfaceC15621l.f120703H8, new uh.C(c15634z != null ? new uh.P(c15634z) : new uh.P((AbstractC14551y) new oh.C0(this.f100792c)), this.f100790a.a(), new oh.C0(this.f100790a.c()), this.f100790a.d(), new C14539s(this.f100790a.e()), null, this.f100790a.f(), new oh.C0(b10))));
        } catch (OperatorException e10) {
            throw new CMSException("exception wrapping content key: " + e10.getMessage(), e10);
        }
    }

    public AbstractC14639j0(byte[] bArr, AbstractC14635h0 abstractC14635h0) {
        this.f100792c = bArr;
        this.f100790a = abstractC14635h0;
    }
}
