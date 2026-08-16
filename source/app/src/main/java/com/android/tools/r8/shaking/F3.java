package com.android.tools.r8.shaking;

import com.android.tools.r8.shaking.AbstractC11198f3;
import com.android.tools.r8.shaking.L3;

public final class F3 extends L3.a {

    public static final boolean f56451s = true;

    public K3 f56452r = null;

    @Override
    public final AbstractC11198f3.a c() {
        return this;
    }

    @Override
    public final G3 a() {
        if (f56451s || this.f56452r != null) {
            return new G3(this.f57291a, b(), this.f57294d, this.f57295e.a(), this.f57296f, this.f57297g, this.f57298h, this.f57299i, this.f57300j, this.f57301k.a(), this.f57302l, this.f57303m, this.f57304n, this.f56452r, null);
        }
        throw new AssertionError((Object) "Option -if without a subsequent rule.");
    }
}
