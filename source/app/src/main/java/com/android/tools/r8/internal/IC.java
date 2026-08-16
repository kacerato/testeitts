package com.android.tools.r8.internal;

import java.util.Objects;
import java.util.Set;

public final class IC extends WB {

    public PC f41038a = KC.f41616c;

    public boolean f41039b;

    @Override
    public final IC a(Object obj) {
        Objects.requireNonNull(this.f41038a);
        obj.getClass();
        if (this.f41039b) {
            Objects.requireNonNull(this.f41038a);
            this.f41038a = this.f41038a.b();
            this.f41039b = false;
        }
        this.f41038a = this.f41038a.a(obj);
        return this;
    }

    public final IC a(Set set) {
        a((Iterable) set);
        return this;
    }

    public final IC a(IC ic2) {
        Objects.requireNonNull(this.f41038a);
        Objects.requireNonNull(ic2.f41038a);
        if (this.f41039b) {
            Objects.requireNonNull(this.f41038a);
            this.f41038a = this.f41038a.b();
            this.f41039b = false;
        }
        PC pc2 = this.f41038a;
        PC pc3 = ic2.f41038a;
        pc2.getClass();
        for (int i10 = 0; i10 < pc3.f43165b; i10++) {
            Object obj = pc3.f43164a[i10];
            Objects.requireNonNull(obj);
            pc2 = pc2.a(obj);
        }
        this.f41038a = pc2;
        return this;
    }

    public final QC a() {
        Objects.requireNonNull(this.f41038a);
        this.f41039b = true;
        PC c10 = this.f41038a.c();
        this.f41038a = c10;
        return c10.a();
    }
}
