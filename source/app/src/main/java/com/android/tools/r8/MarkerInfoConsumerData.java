package com.android.tools.r8;

import com.android.tools.r8.origin.Origin;
import java.util.Collection;

public interface MarkerInfoConsumerData {
    Origin getInputOrigin();

    Collection<MarkerInfo> getMarkers();

    boolean hasMarkers();
}
