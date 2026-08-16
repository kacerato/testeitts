package com.android.tools.r8.shaking;

import com.android.tools.r8.origin.Origin;

public final class J3 extends Origin {
    public J3(Origin origin) {
        super(origin);
    }

    @Override
    public final String part() {
        return "<DEFAULT_KEEP_ALL_RULE>";
    }
}
