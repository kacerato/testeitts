package androidx.privacysandbox.ads.adservices.measurement;

import android.content.Context;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;

public final class MeasurementManager$Companion$obtain$1 extends O implements Mf.l<Context, MeasurementManagerApi31Ext9Impl> {
    final Context $context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MeasurementManager$Companion$obtain$1(Context context) {
        super(1);
        this.$context = context;
    }

    @Override
    public final MeasurementManagerApi31Ext9Impl invoke(Context it) {
        M.p(it, "it");
        return new MeasurementManagerApi31Ext9Impl(this.$context);
    }
}
