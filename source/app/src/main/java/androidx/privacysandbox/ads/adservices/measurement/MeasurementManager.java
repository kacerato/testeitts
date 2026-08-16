package androidx.privacysandbox.ads.adservices.measurement;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import android.view.InputEvent;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import androidx.privacysandbox.ads.adservices.internal.BackCompatManager;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.P0;

public abstract class MeasurementManager {
    public static final Companion Companion = new Companion(null);
    public static final int MEASUREMENT_API_STATE_DISABLED = 0;
    public static final int MEASUREMENT_API_STATE_ENABLED = 1;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @Lf.o
        public final MeasurementManager obtain(Context context) {
            M.p(context, "context");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("AdServicesInfo.version=");
            AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
            sb2.append(adServicesInfo.adServicesVersion());
            Log.d("MeasurementManager", sb2.toString());
            if (adServicesInfo.adServicesVersion() >= 5) {
                return new MeasurementManagerApi33Ext5Impl(context);
            }
            if (adServicesInfo.extServicesVersionS() >= 9) {
                return (MeasurementManager) BackCompatManager.INSTANCE.getManager(context, "MeasurementManager", new MeasurementManager$Companion$obtain$1(context));
            }
            return null;
        }

        private Companion() {
        }
    }

    @Lf.o
    public static final MeasurementManager obtain(Context context) {
        return Companion.obtain(context);
    }

    public abstract Object deleteRegistrations(DeletionRequest deletionRequest, yf.f<? super P0> fVar);

    public abstract Object getMeasurementApiStatus(yf.f<? super Integer> fVar);

    public abstract Object registerSource(Uri uri, InputEvent inputEvent, yf.f<? super P0> fVar);

    @ExperimentalFeatures.RegisterSourceOptIn
    public abstract Object registerSource(SourceRegistrationRequest sourceRegistrationRequest, yf.f<? super P0> fVar);

    public abstract Object registerTrigger(Uri uri, yf.f<? super P0> fVar);

    public abstract Object registerWebSource(WebSourceRegistrationRequest webSourceRegistrationRequest, yf.f<? super P0> fVar);

    public abstract Object registerWebTrigger(WebTriggerRegistrationRequest webTriggerRegistrationRequest, yf.f<? super P0> fVar);
}
