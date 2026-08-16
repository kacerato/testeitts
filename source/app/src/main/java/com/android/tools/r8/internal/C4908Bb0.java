package com.android.tools.r8.internal;

import com.android.tools.r8.metadata.R8StatsMetadata;

public final class C4908Bb0 implements R8StatsMetadata {

    @InterfaceC9168qv
    @InterfaceC10474yl0("noObfuscationPercentage")
    public final float f38950a;

    @InterfaceC9168qv
    @InterfaceC10474yl0("noOptimizationPercentage")
    public final float f38951b;

    @InterfaceC9168qv
    @InterfaceC10474yl0("noShrinkingPercentage")
    public final float f38952c;

    public C4908Bb0(float f10, float f11, float f12) {
        this.f38950a = f10;
        this.f38951b = f11;
        this.f38952c = f12;
    }

    @Override
    public final float getNoObfuscationPercentage() {
        return this.f38950a;
    }

    @Override
    public final float getNoOptimizationPercentage() {
        return this.f38951b;
    }

    @Override
    public final float getNoShrinkingPercentage() {
        return this.f38952c;
    }
}
