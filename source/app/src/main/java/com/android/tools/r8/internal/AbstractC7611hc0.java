package com.android.tools.r8.internal;

public abstract class AbstractC7611hc0 {

    public AbstractC7611hc0 f48624a;

    public AbstractC7611hc0(int i10, AbstractC7611hc0 abstractC7611hc0) {
        if (i10 != 589824 && i10 != 524288 && i10 != 458752 && i10 != 393216 && i10 != 327680 && i10 != 262144 && i10 != 17432576) {
            throw new IllegalArgumentException(T60.a(i10, "Unsupported api "));
        }
        if (i10 == 17432576) {
            AbstractC5040Dh.a(this);
        }
        this.f48624a = abstractC7611hc0;
    }

    public abstract Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10);

    public abstract Q2 a(String str, boolean z10);

    public abstract void a();

    public void a(K4 k42) {
        AbstractC7611hc0 abstractC7611hc0 = this.f48624a;
        if (abstractC7611hc0 != null) {
            abstractC7611hc0.a(k42);
        }
    }
}
