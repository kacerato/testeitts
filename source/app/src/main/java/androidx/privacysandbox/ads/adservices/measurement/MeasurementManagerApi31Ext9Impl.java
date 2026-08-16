package androidx.privacysandbox.ads.adservices.measurement;

import android.content.Context;
import kotlin.jvm.internal.M;

public final class MeasurementManagerApi31Ext9Impl extends MeasurementManagerImplCommon {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MeasurementManagerApi31Ext9Impl(Context context) {
        super(r2);
        android.adservices.measurement.MeasurementManager measurementManager;
        M.p(context, "context");
        measurementManager = android.adservices.measurement.MeasurementManager.get(context);
        M.o(measurementManager, "get(context)");
    }
}
