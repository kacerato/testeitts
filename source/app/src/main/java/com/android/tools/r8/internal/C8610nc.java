package com.android.tools.r8.internal;

public final class C8610nc extends AbstractC6055Uw {

    public boolean f50993c;

    public C8610nc(int i10, AbstractC6055Uw abstractC6055Uw) {
        super(i10, abstractC6055Uw);
    }

    @Override
    public final Q2 a(String str, boolean z10) {
        if (!this.f50993c) {
            C9444sc.d(49, str);
            return new C7610hc(super.a(str, z10));
        }
        throw new IllegalStateException("Cannot call a visit method after visitEnd has been called");
    }

    @Override
    public final void a(K4 k42) {
        if (!this.f50993c) {
            AbstractC6055Uw abstractC6055Uw = this.f44907b;
            if (abstractC6055Uw != null) {
                abstractC6055Uw.a(k42);
                return;
            }
            return;
        }
        throw new IllegalStateException("Cannot call a visit method after visitEnd has been called");
    }

    @Override
    public final void a() {
        if (!this.f50993c) {
            this.f50993c = true;
            AbstractC6055Uw abstractC6055Uw = this.f44907b;
            if (abstractC6055Uw != null) {
                abstractC6055Uw.a();
                return;
            }
            return;
        }
        throw new IllegalStateException("Cannot call a visit method after visitEnd has been called");
    }

    @Override
    public final Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        if (this.f50993c) {
            throw new IllegalStateException("Cannot call a visit method after visitEnd has been called");
        }
        int i11 = i10 >>> 24;
        if (i11 == 19) {
            AbstractC8443mc.a(i10);
            C9444sc.d(49, str);
            return new C7610hc(super.a(i10, c9666tu0, str, z10));
        }
        throw new IllegalArgumentException(AbstractC5091Ee0.a("Invalid type reference sort 0x", Integer.toHexString(i11)));
    }
}
