package com.android.tools.r8.internal;

public abstract class JC extends QC {

    public transient AbstractC7552hC f41348d;

    @Override
    public final AbstractC7552hC a() {
        AbstractC7552hC abstractC7552hC = this.f41348d;
        if (abstractC7552hC != null) {
            return abstractC7552hC;
        }
        AbstractC7552hC j10 = j();
        this.f41348d = j10;
        return j10;
    }

    public AbstractC7552hC j() {
        return new C5902Se0(this, toArray(XB.f45636b));
    }
}
