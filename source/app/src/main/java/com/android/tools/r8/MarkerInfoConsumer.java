package com.android.tools.r8;

public interface MarkerInfoConsumer {
    void acceptMarkerInfo(MarkerInfoConsumerData markerInfoConsumerData);

    void finished();
}
