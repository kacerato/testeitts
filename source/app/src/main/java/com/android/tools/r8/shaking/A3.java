package com.android.tools.r8.shaking;

import com.android.tools.r8.origin.Origin;

public final class A3 extends Origin {

    public final com.android.tools.r8.internal.C2 f56340f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public A3(Origin origin, com.android.tools.r8.internal.C2 c22) {
        super(origin);
        this.f56340f = c22;
    }

    @Override
    public final String part() {
        return "<SYNTHESIZED_FROM_API_LEVEL_" + this.f56340f.d() + ">";
    }
}
