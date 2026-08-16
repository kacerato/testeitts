package com.android.tools.r8.internal;

import com.android.tools.r8.MarkerInfoConsumerData;
import com.android.tools.r8.origin.Origin;
import java.util.Collection;
import java.util.List;

public final class C9929vV implements MarkerInfoConsumerData {

    public final Origin f53131a;

    public final List f53132b;

    public C9929vV(List list, Origin origin) {
        this.f53131a = origin;
        this.f53132b = list;
    }

    @Override
    public final Origin getInputOrigin() {
        return this.f53131a;
    }

    @Override
    public final Collection getMarkers() {
        return this.f53132b;
    }

    @Override
    public final boolean hasMarkers() {
        return !this.f53132b.isEmpty();
    }
}
