package com.android.tools.r8.internal;

import java.util.HashSet;

public final class C6415aP {

    public final boolean f46511a;

    public final HashSet f46512b = new HashSet();

    public C6415aP(boolean z10) {
        this.f46511a = z10;
    }

    public final C6748cP a() {
        if (this.f46512b.isEmpty()) {
            if (this.f46511a) {
                return C6748cP.f47035b;
            }
            throw new FN("Invalid keep options that disallow nothing.");
        }
        int size = this.f46512b.size();
        EnumC6582bP[] enumC6582bPArr = EnumC6582bP.f46761h;
        if (size == ((EnumC6582bP[]) enumC6582bPArr.clone()).length) {
            if (this.f46511a) {
                throw new FN("Invalid keep options that allow everything.");
            }
            return C6748cP.f47035b;
        }
        if (this.f46511a) {
            return new C6748cP(QC.a(this.f46512b));
        }
        int i10 = QC.f43505c;
        IC ic2 = new IC();
        for (EnumC6582bP enumC6582bP : (EnumC6582bP[]) enumC6582bPArr.clone()) {
            if (!this.f46512b.contains(enumC6582bP)) {
                ic2.a(enumC6582bP);
            }
        }
        return new C6748cP(ic2.a());
    }
}
