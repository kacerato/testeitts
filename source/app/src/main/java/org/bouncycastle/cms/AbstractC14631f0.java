package org.bouncycastle.cms;

import org.bouncycastle.operator.OperatorException;
import uh.C15609A;

public abstract class AbstractC14631f0 implements G0 {

    public final C15609A f100749a;

    public final Qk.L f100750b;

    public AbstractC14631f0(C15609A c15609a, Qk.L l10) {
        this.f100749a = c15609a;
        this.f100750b = l10;
    }

    @Override
    public final uh.Q a(Qk.r rVar) throws CMSException {
        try {
            return new uh.Q(new uh.B(this.f100749a, this.f100750b.a(), new oh.C0(this.f100750b.b(rVar))));
        } catch (OperatorException e10) {
            throw new CMSException("exception wrapping content key: " + e10.getMessage(), e10);
        }
    }
}
