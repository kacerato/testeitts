package com.android.tools.r8.internal;

import java.lang.annotation.RetentionPolicy;

public final class HM {

    public static final boolean f40738c = true;

    public C8415mP f40739a = C8415mP.a();

    public int f40740b = 0;

    public final HM a(RetentionPolicy retentionPolicy) {
        int i10 = GM.f40468a[retentionPolicy.ordinal()];
        if (i10 == 1) {
            this.f40740b |= 1;
            return this;
        }
        if (i10 == 2) {
            this.f40740b |= 2;
            return this;
        }
        if (i10 != 3) {
            throw new FN("Invalid policy: " + ((Object) retentionPolicy));
        }
        throw new FN("Retention policy SOURCE cannot be used in patterns");
    }

    public final IM a() {
        if (this.f40740b != 0) {
            if (this.f40739a.c()) {
                int i10 = this.f40740b;
                if (i10 == 1) {
                    return IM.f41062d;
                }
                if (i10 == 2) {
                    return IM.f41063e;
                }
                if (i10 == 3) {
                    return IM.f41061c;
                }
                throw new FN("Invalid retention policy value: " + this.f40740b);
            }
            return new IM(this.f40739a, this.f40740b);
        }
        throw new FN("Invalid empty retention policy");
    }
}
