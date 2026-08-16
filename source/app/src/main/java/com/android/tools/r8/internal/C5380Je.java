package com.android.tools.r8.internal;

import java.util.EnumSet;
import java.util.stream.Collector;

public final class C5380Je {

    public static final Collector f41446b = AbstractC5438Ke.b();

    public EnumSet f41447a;

    public final void a(Enum r22) {
        EnumSet enumSet = this.f41447a;
        if (enumSet == null) {
            this.f41447a = EnumSet.of(r22);
        } else {
            enumSet.add(r22);
        }
    }

    public final C5380Je a(C5380Je c5380Je) {
        EnumSet enumSet = this.f41447a;
        if (enumSet == null) {
            return c5380Je;
        }
        EnumSet enumSet2 = c5380Je.f41447a;
        if (enumSet2 == null) {
            return this;
        }
        enumSet.addAll(enumSet2);
        return this;
    }

    public final QC a() {
        QC qc2;
        EnumSet enumSet = this.f41447a;
        if (enumSet == null) {
            int i10 = QC.f43505c;
            return C7119ef0.f47742j;
        }
        int i11 = C6552bC.f46725f;
        int size = enumSet.size();
        if (size == 0) {
            qc2 = C7119ef0.f47742j;
        } else if (size != 1) {
            qc2 = new C6552bC(enumSet);
        } else {
            qc2 = new C5978Tm0((Enum) AbstractC9907vK.a(enumSet));
        }
        this.f41447a = null;
        return qc2;
    }
}
