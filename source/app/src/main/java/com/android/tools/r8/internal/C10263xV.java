package com.android.tools.r8.internal;

import com.android.tools.r8.MarkerInfo;
import com.android.tools.r8.MarkerInfoConsumer;
import com.android.tools.r8.MarkerInfoConsumerData;
import java.util.ArrayList;
import java.util.Iterator;

public final class C10263xV implements MarkerInfoConsumer {

    public final ArrayList f53769a;

    public C10263xV(ArrayList arrayList) {
        this.f53769a = arrayList;
    }

    @Override
    public final void acceptMarkerInfo(MarkerInfoConsumerData markerInfoConsumerData) {
        if (markerInfoConsumerData.hasMarkers()) {
            Iterator<MarkerInfo> it = markerInfoConsumerData.getMarkers().iterator();
            while (it.hasNext()) {
                this.f53769a.add(((C10096wV) it.next()).f53517a);
            }
        }
    }

    @Override
    public final void finished() {
    }
}
