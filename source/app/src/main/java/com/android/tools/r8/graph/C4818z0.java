package com.android.tools.r8.graph;

import com.android.tools.r8.internal.QC;
import java.util.Set;

public final class C4818z0 {

    public final boolean f38452a;

    public final boolean f38453b;

    public final QC f38454c;

    public final QC f38455d;

    public final QC f38456e;

    public C4818z0(boolean z10, boolean z11, QC qc2, QC qc3, QC qc4) {
        this.f38452a = z10;
        this.f38453b = z11;
        this.f38454c = qc2;
        this.f38455d = qc3;
        this.f38456e = qc4;
    }

    public final Set a() {
        return this.f38456e;
    }

    public final Set b() {
        return this.f38455d;
    }

    public final boolean c() {
        return !this.f38456e.isEmpty();
    }

    public final boolean d() {
        return !this.f38455d.isEmpty();
    }
}
