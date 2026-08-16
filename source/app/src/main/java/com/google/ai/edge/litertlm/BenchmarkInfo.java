package com.google.ai.edge.litertlm;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class BenchmarkInfo {

    public final double f59856a;

    public final double f59857b;

    public final int f59858c;

    public final int f59859d;

    public final double f59860e;

    public final double f59861f;

    public BenchmarkInfo(double initTimeInSecond, double timeToFirstTokenInSecond, int lastPrefillTokenCount, int lastDecodeTokenCount, double lastPrefillTokensPerSecond, double lastDecodeTokensPerSecond) {
        this.f59856a = initTimeInSecond;
        this.f59857b = timeToFirstTokenInSecond;
        this.f59858c = lastPrefillTokenCount;
        this.f59859d = lastDecodeTokenCount;
        this.f59860e = lastPrefillTokensPerSecond;
        this.f59861f = lastDecodeTokensPerSecond;
    }

    public final double a() {
        return this.f59856a;
    }

    public final double b() {
        return this.f59857b;
    }

    public final int c() {
        return this.f59858c;
    }

    public final int d() {
        return this.f59859d;
    }

    public final double e() {
        return this.f59860e;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BenchmarkInfo)) {
            return false;
        }
        BenchmarkInfo benchmarkInfo = (BenchmarkInfo) other;
        return Double.compare(this.f59856a, benchmarkInfo.f59856a) == 0 && Double.compare(this.f59857b, benchmarkInfo.f59857b) == 0 && this.f59858c == benchmarkInfo.f59858c && this.f59859d == benchmarkInfo.f59859d && Double.compare(this.f59860e, benchmarkInfo.f59860e) == 0 && Double.compare(this.f59861f, benchmarkInfo.f59861f) == 0;
    }

    public final double f() {
        return this.f59861f;
    }

    @NotNull
    public final BenchmarkInfo g(double initTimeInSecond, double timeToFirstTokenInSecond, int lastPrefillTokenCount, int lastDecodeTokenCount, double lastPrefillTokensPerSecond, double lastDecodeTokensPerSecond) {
        return new BenchmarkInfo(initTimeInSecond, timeToFirstTokenInSecond, lastPrefillTokenCount, lastDecodeTokenCount, lastPrefillTokensPerSecond, lastDecodeTokensPerSecond);
    }

    public int hashCode() {
        return (((((((((Double.hashCode(this.f59856a) * 31) + Double.hashCode(this.f59857b)) * 31) + Integer.hashCode(this.f59858c)) * 31) + Integer.hashCode(this.f59859d)) * 31) + Double.hashCode(this.f59860e)) * 31) + Double.hashCode(this.f59861f);
    }

    public final double i() {
        return this.f59856a;
    }

    public final int j() {
        return this.f59859d;
    }

    public final double k() {
        return this.f59861f;
    }

    public final int l() {
        return this.f59858c;
    }

    public final double m() {
        return this.f59860e;
    }

    public final double n() {
        return this.f59857b;
    }

    @NotNull
    public String toString() {
        return "BenchmarkInfo(initTimeInSecond=" + this.f59856a + ", timeToFirstTokenInSecond=" + this.f59857b + ", lastPrefillTokenCount=" + this.f59858c + ", lastDecodeTokenCount=" + this.f59859d + ", lastPrefillTokensPerSecond=" + this.f59860e + ", lastDecodeTokensPerSecond=" + this.f59861f + ")";
    }
}
