package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collections;
import java.util.Objects;

public final class YD implements SD {

    public final C6949de f45953a;

    public final AbstractC8999pu0 f45954b;

    public YD(C6949de c6949de, AbstractC8999pu0 abstractC8999pu0) {
        this.f45953a = c6949de;
        this.f45954b = abstractC8999pu0;
    }

    @Override
    public final SD a(com.android.tools.r8.graph.proto.c cVar) {
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (YD.class != obj.getClass()) {
            return false;
        }
        YD yd2 = (YD) obj;
        return Objects.equals(this.f45953a, yd2.f45953a) && Objects.equals(this.f45954b, yd2.f45954b);
    }

    @Override
    public final boolean h() {
        return true;
    }

    public final int hashCode() {
        return Objects.hash(this.f45953a, this.f45954b);
    }

    public final String toString() {
        return "InstanceFieldTypeInitializationInfo";
    }

    @Override
    public final SD b(C4798y c4798y, com.android.tools.r8.graph.M2 m22, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        C8664nu I10 = c4798y.I();
        C6949de c6949de = this.f45953a;
        if (c6949de != null && I10.b(c6949de.E())) {
            return C9335rv0.f52224a;
        }
        if (this.f45954b.s() && I10.b(this.f45954b.b().E())) {
            return C9335rv0.f52224a;
        }
        C6949de c6949de2 = this.f45953a;
        C6949de b10 = c6949de2 != null ? c6949de2.a(c4798y, abstractC5308Hz, abstractC5308Hz2, Collections.EMPTY_SET).b() : null;
        AbstractC8999pu0 abstractC8999pu0 = this.f45954b;
        abstractC8999pu0.getClass();
        return new YD(b10, abstractC8999pu0.a(c4798y, abstractC5308Hz, abstractC5308Hz2, Collections.EMPTY_SET));
    }
}
