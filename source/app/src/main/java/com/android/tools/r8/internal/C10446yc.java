package com.android.tools.r8.internal;

public final class C10446yc extends AbstractC7611hc0 {

    public boolean f54071b;

    public C10446yc(int i10, AbstractC7611hc0 abstractC7611hc0) {
        super(i10, abstractC7611hc0);
    }

    @Override
    public final Q2 a(String str, boolean z10) {
        if (!this.f54071b) {
            C9444sc.d(49, str);
            AbstractC7611hc0 abstractC7611hc0 = this.f48624a;
            return new C7610hc(abstractC7611hc0 != null ? abstractC7611hc0.a(str, z10) : null);
        }
        throw new IllegalStateException("Cannot call a visit method after visitEnd has been called");
    }

    @Override
    public final void a(K4 k42) {
        if (!this.f54071b) {
            AbstractC7611hc0 abstractC7611hc0 = this.f48624a;
            if (abstractC7611hc0 != null) {
                abstractC7611hc0.a(k42);
                return;
            }
            return;
        }
        throw new IllegalStateException("Cannot call a visit method after visitEnd has been called");
    }

    @Override
    public final void a() {
        if (!this.f54071b) {
            this.f54071b = true;
            AbstractC7611hc0 abstractC7611hc0 = this.f48624a;
            if (abstractC7611hc0 != null) {
                abstractC7611hc0.a();
                return;
            }
            return;
        }
        throw new IllegalStateException("Cannot call a visit method after visitEnd has been called");
    }

    @Override
    public final Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        if (this.f54071b) {
            throw new IllegalStateException("Cannot call a visit method after visitEnd has been called");
        }
        int i11 = i10 >>> 24;
        if (i11 == 19) {
            AbstractC8443mc.a(i10);
            C9444sc.d(49, str);
            AbstractC7611hc0 abstractC7611hc0 = this.f48624a;
            return new C7610hc(abstractC7611hc0 != null ? abstractC7611hc0.a(i10, c9666tu0, str, z10) : null);
        }
        throw new IllegalArgumentException(AbstractC5091Ee0.a("Invalid type reference sort 0x", Integer.toHexString(i11)));
    }
}
