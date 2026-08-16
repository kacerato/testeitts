package com.android.tools.r8.internal;

import java.util.HashMap;

public final class UK extends EC {

    public final HashMap f44720f;

    public final AbstractC7552hC f44721g;

    public final long f44722h;

    public transient CC f44723i;

    public UK(HashMap hashMap, AbstractC7552hC abstractC7552hC, long j10) {
        this.f44720f = hashMap;
        this.f44721g = abstractC7552hC;
        this.f44722h = j10;
    }

    @Override
    public final int b(Object obj) {
        return ((Integer) this.f44720f.getOrDefault(obj, 0)).intValue();
    }

    @Override
    public final boolean g() {
        return false;
    }

    @Override
    public final QC w() {
        CC cc2 = this.f44723i;
        if (cc2 != null) {
            return cc2;
        }
        CC cc3 = new CC(this.f44721g, this);
        this.f44723i = cc3;
        return cc3;
    }

    @Override
    public final MY j(int i10) {
        return (MY) this.f44721g.get(i10);
    }

    @Override
    public final int size() {
        return HJ.a(this.f44722h);
    }
}
