package com.google.ai.edge.litertlm;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Config.kt\ncom/google/ai/edge/litertlm/SamplerConfig\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,156:1\n1#2:157\n*E\n"})
public final class SamplerConfig {

    public final int f59869a;

    public final double f59870b;

    public final double f59871c;

    public final int f59872d;

    public SamplerConfig(int topK, double topP, double temperature, int seed) {
        this.f59869a = topK;
        this.f59870b = topP;
        this.f59871c = temperature;
        this.f59872d = seed;
        if (topK <= 0) {
            throw new IllegalArgumentException(("topK should be positive, but got " + topK + ".").toString());
        }
        if (topP < 0.0d || topP > 1.0d) {
            throw new IllegalArgumentException(("topP should between 0 and 1 inclusively, but got " + topP + ".").toString());
        }
        if (temperature >= 0.0d) {
            return;
        }
        throw new IllegalArgumentException(("temperature should be non-negative, but got " + temperature + ".").toString());
    }

    public static SamplerConfig f(SamplerConfig samplerConfig, int i10, double d10, double d11, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = samplerConfig.f59869a;
        }
        if ((i12 & 2) != 0) {
            d10 = samplerConfig.f59870b;
        }
        double d12 = d10;
        if ((i12 & 4) != 0) {
            d11 = samplerConfig.f59871c;
        }
        double d13 = d11;
        if ((i12 & 8) != 0) {
            i11 = samplerConfig.f59872d;
        }
        return samplerConfig.e(i10, d12, d13, i11);
    }

    public final int a() {
        return this.f59869a;
    }

    public final double b() {
        return this.f59870b;
    }

    public final double c() {
        return this.f59871c;
    }

    public final int d() {
        return this.f59872d;
    }

    @NotNull
    public final SamplerConfig e(int topK, double topP, double temperature, int seed) {
        return new SamplerConfig(topK, topP, temperature, seed);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SamplerConfig)) {
            return false;
        }
        SamplerConfig samplerConfig = (SamplerConfig) other;
        return this.f59869a == samplerConfig.f59869a && Double.compare(this.f59870b, samplerConfig.f59870b) == 0 && Double.compare(this.f59871c, samplerConfig.f59871c) == 0 && this.f59872d == samplerConfig.f59872d;
    }

    public final int g() {
        return this.f59872d;
    }

    public final double h() {
        return this.f59871c;
    }

    public int hashCode() {
        return (((((Integer.hashCode(this.f59869a) * 31) + Double.hashCode(this.f59870b)) * 31) + Double.hashCode(this.f59871c)) * 31) + Integer.hashCode(this.f59872d);
    }

    public final int i() {
        return this.f59869a;
    }

    public final double j() {
        return this.f59870b;
    }

    @NotNull
    public String toString() {
        return "SamplerConfig(topK=" + this.f59869a + ", topP=" + this.f59870b + ", temperature=" + this.f59871c + ", seed=" + this.f59872d + ")";
    }

    public SamplerConfig(int i10, double d10, double d11, int i11, int i12, C14026x c14026x) {
        this(i10, d10, d11, (i12 & 8) != 0 ? 0 : i11);
    }
}
