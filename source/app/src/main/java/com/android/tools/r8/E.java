package com.android.tools.r8;

import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.origin.Origin;
import java.io.PrintStream;

public final class E implements MarkerInfoConsumer {

    public final PrintStream f35272a;

    public E(PrintStream printStream) {
        this.f35272a = printStream;
    }

    @Override
    public final void acceptMarkerInfo(MarkerInfoConsumerData markerInfoConsumerData) {
        if (!markerInfoConsumerData.hasMarkers()) {
            Origin inputOrigin = markerInfoConsumerData.getInputOrigin();
            String b10 = C10656zq0.b("no marker");
            this.f35272a.print(inputOrigin.toString());
            this.f35272a.print(": ");
            this.f35272a.print(b10);
            this.f35272a.println();
            return;
        }
        for (MarkerInfo markerInfo : markerInfoConsumerData.getMarkers()) {
            Origin inputOrigin2 = markerInfoConsumerData.getInputOrigin();
            String rawEncoding = markerInfo.getRawEncoding();
            this.f35272a.print(inputOrigin2.toString());
            this.f35272a.print(": ");
            this.f35272a.print(rawEncoding);
            this.f35272a.println();
        }
    }

    @Override
    public final void finished() {
    }
}
