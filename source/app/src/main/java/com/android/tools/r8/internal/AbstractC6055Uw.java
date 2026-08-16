package com.android.tools.r8.internal;

public abstract class AbstractC6055Uw {

    public final int f44906a;

    public AbstractC6055Uw f44907b;

    public AbstractC6055Uw(int i10, AbstractC6055Uw abstractC6055Uw) {
        if (i10 != 589824 && i10 != 524288 && i10 != 458752 && i10 != 393216 && i10 != 327680 && i10 != 262144 && i10 != 17432576) {
            throw new IllegalArgumentException(T60.a(i10, "Unsupported api "));
        }
        if (i10 == 17432576) {
            AbstractC5040Dh.a(this);
        }
        this.f44906a = i10;
        this.f44907b = abstractC6055Uw;
    }

    public Q2 a(String str, boolean z10) {
        AbstractC6055Uw abstractC6055Uw = this.f44907b;
        if (abstractC6055Uw != null) {
            return abstractC6055Uw.a(str, z10);
        }
        return null;
    }

    public Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        if (this.f44906a >= 327680) {
            AbstractC6055Uw abstractC6055Uw = this.f44907b;
            if (abstractC6055Uw != null) {
                return abstractC6055Uw.a(i10, c9666tu0, str, z10);
            }
            return null;
        }
        throw new UnsupportedOperationException("This feature requires ASM5");
    }

    public void a(K4 k42) {
        AbstractC6055Uw abstractC6055Uw = this.f44907b;
        if (abstractC6055Uw != null) {
            abstractC6055Uw.a(k42);
        }
    }

    public void a() {
        AbstractC6055Uw abstractC6055Uw = this.f44907b;
        if (abstractC6055Uw != null) {
            abstractC6055Uw.a();
        }
    }
}
