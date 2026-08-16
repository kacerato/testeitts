package com.android.tools.r8.dex;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.C5;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import java.util.Collections;
import java.util.Set;

public final class K extends C5 {

    public final Set f35735c;

    public final L f35736d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K(L l10, C4798y c4798y, H2[] h2Arr) {
        super(c4798y);
        this.f35736d = l10;
        Set c10 = AbstractC5513Ll0.c();
        this.f35735c = c10;
        Collections.addAll(c10, h2Arr);
    }
}
