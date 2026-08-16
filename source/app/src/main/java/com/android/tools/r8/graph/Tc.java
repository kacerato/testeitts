package com.android.tools.r8.graph;

import com.android.tools.r8.internal.V60;

public final class Tc implements V60 {
    @Override
    public final boolean apply(Object obj) {
        return ((H2) obj).isInterface();
    }
}
