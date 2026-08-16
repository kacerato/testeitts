package com.android.tools.r8.shaking;

import java.util.function.Consumer;

public final class Db implements Consumer {
    @Override
    public final void accept(Object obj) {
        ((AbstractC11401r4) obj).c();
    }
}
