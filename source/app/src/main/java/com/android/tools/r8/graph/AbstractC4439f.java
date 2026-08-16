package com.android.tools.r8.graph;

public abstract class AbstractC4439f {

    public static final boolean f37167b = true;

    public final AbstractC4458g f37168a;

    public AbstractC4439f(AbstractC4458g abstractC4458g) {
        this.f37168a = abstractC4458g;
    }

    public abstract AbstractC4439f a();

    public final AbstractC4439f a(boolean z10) {
        if (z10) {
            this.f37168a.w();
        } else {
            this.f37168a.C();
        }
        return a();
    }
}
