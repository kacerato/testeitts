package com.android.tools.r8.internal;

import java.util.HashSet;
import java.util.Objects;

public final class NC extends PC {

    public final HashSet f42537c;

    public NC(PC pc2) {
        super(pc2);
        this.f42537c = new HashSet(AbstractC9595tV.a(this.f43165b));
        for (int i10 = 0; i10 < this.f43165b; i10++) {
            HashSet hashSet = this.f42537c;
            Object obj = this.f43164a[i10];
            Objects.requireNonNull(obj);
            hashSet.add(obj);
        }
    }

    @Override
    public final PC a(Object obj) {
        obj.getClass();
        if (this.f42537c.add(obj)) {
            b(obj);
        }
        return this;
    }

    @Override
    public final PC b() {
        return new NC(this);
    }

    @Override
    public final QC a() {
        int i10 = this.f43165b;
        if (i10 == 0) {
            int i11 = QC.f43505c;
            return C7119ef0.f47742j;
        }
        if (i10 != 1) {
            return new VK(this.f42537c, AbstractC7552hC.b(this.f43165b, this.f43164a));
        }
        Object obj = this.f43164a[0];
        Objects.requireNonNull(obj);
        int i12 = QC.f43505c;
        return new C5978Tm0(obj);
    }
}
