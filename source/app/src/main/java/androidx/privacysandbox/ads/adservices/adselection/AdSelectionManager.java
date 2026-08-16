package androidx.privacysandbox.ads.adservices.adselection;

import android.content.Context;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import androidx.privacysandbox.ads.adservices.internal.BackCompatManager;
import kotlin.jvm.internal.C14026x;
import nf.P0;

public abstract class AdSelectionManager {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @Lf.o
        public final AdSelectionManager obtain(Context context) {
            kotlin.jvm.internal.M.p(context, "context");
            AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
            if (adServicesInfo.adServicesVersion() >= 4) {
                return new AdSelectionManagerApi33Ext4Impl(context);
            }
            if (adServicesInfo.extServicesVersionS() >= 9) {
                return (AdSelectionManager) BackCompatManager.INSTANCE.getManager(context, "AdSelectionManager", new AdSelectionManager$Companion$obtain$1(context));
            }
            return null;
        }

        private Companion() {
        }
    }

    @Lf.o
    public static final AdSelectionManager obtain(Context context) {
        return Companion.obtain(context);
    }

    @ExperimentalFeatures.Ext10OptIn
    public abstract Object getAdSelectionData(GetAdSelectionDataRequest getAdSelectionDataRequest, yf.f<? super GetAdSelectionDataOutcome> fVar);

    @ExperimentalFeatures.Ext10OptIn
    public abstract Object persistAdSelectionResult(PersistAdSelectionResultRequest persistAdSelectionResultRequest, yf.f<? super AdSelectionOutcome> fVar);

    @ExperimentalFeatures.Ext8OptIn
    public abstract Object reportEvent(ReportEventRequest reportEventRequest, yf.f<? super P0> fVar);

    public abstract Object reportImpression(ReportImpressionRequest reportImpressionRequest, yf.f<? super P0> fVar);

    public abstract Object selectAds(AdSelectionConfig adSelectionConfig, yf.f<? super AdSelectionOutcome> fVar);

    @ExperimentalFeatures.Ext10OptIn
    public abstract Object selectAds(AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfig, yf.f<? super AdSelectionOutcome> fVar);

    @ExperimentalFeatures.Ext8OptIn
    public abstract Object updateAdCounterHistogram(UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest, yf.f<? super P0> fVar);
}
