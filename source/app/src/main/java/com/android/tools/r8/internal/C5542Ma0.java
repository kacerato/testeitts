package com.android.tools.r8.internal;

public final class C5542Ma0 extends ZQ implements InterfaceC8676ny {

    public final AbstractC5963Tf0 f42322b;

    public final C5600Na0 f42323c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5542Ma0(AbstractC5963Tf0 abstractC5963Tf0, C5600Na0 c5600Na0) {
        super(1);
        this.f42322b = abstractC5963Tf0;
        this.f42323c = c5600Na0;
    }

    @Override
    public final Object a(Object obj) {
        C8330lu c8330lu = (C8330lu) obj;
        GJ.c(c8330lu, "<name for destructuring parameter 0>");
        int i10 = c8330lu.f50133a;
        C6024Ug0 c6024Ug0 = c8330lu.f50136d;
        C8623ng0 c8623ng0 = (C8623ng0) this.f42322b.f44525b.f49014d.get(Integer.valueOf(i10));
        if (c8623ng0 == null) {
            return null;
        }
        C5600Na0 c5600Na0 = this.f42323c;
        return new C9451se0(c5600Na0.f42633a, this.f42322b, c6024Ug0, c8623ng0);
    }
}
