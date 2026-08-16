package androidx.privacysandbox.ads.adservices.java.adselection;

import Lf.o;
import android.content.Context;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionConfig;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionFromOutcomesConfig;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionOutcome;
import androidx.privacysandbox.ads.adservices.adselection.GetAdSelectionDataOutcome;
import androidx.privacysandbox.ads.adservices.adselection.GetAdSelectionDataRequest;
import androidx.privacysandbox.ads.adservices.adselection.PersistAdSelectionResultRequest;
import androidx.privacysandbox.ads.adservices.adselection.ReportEventRequest;
import androidx.privacysandbox.ads.adservices.adselection.ReportImpressionRequest;
import androidx.privacysandbox.ads.adservices.adselection.UpdateAdCounterHistogramRequest;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import com.google.common.util.concurrent.Z;
import eg.C13122j0;
import eg.C13123k;
import eg.T;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.P0;

public abstract class AdSelectionManagerFutures {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @o
        public final AdSelectionManagerFutures from(Context context) {
            M.p(context, "context");
            AdSelectionManager obtain = AdSelectionManager.Companion.obtain(context);
            if (obtain != null) {
                return new Api33Ext4JavaImpl(obtain);
            }
            return null;
        }

        private Companion() {
        }
    }

    @o
    public static final AdSelectionManagerFutures from(Context context) {
        return Companion.from(context);
    }

    @ExperimentalFeatures.Ext10OptIn
    public abstract Z<GetAdSelectionDataOutcome> getAdSelectionDataAsync(GetAdSelectionDataRequest getAdSelectionDataRequest);

    @ExperimentalFeatures.Ext10OptIn
    public abstract Z<AdSelectionOutcome> persistAdSelectionResultAsync(PersistAdSelectionResultRequest persistAdSelectionResultRequest);

    @ExperimentalFeatures.Ext8OptIn
    public abstract Z<P0> reportEventAsync(ReportEventRequest reportEventRequest);

    public abstract Z<P0> reportImpressionAsync(ReportImpressionRequest reportImpressionRequest);

    public abstract Z<AdSelectionOutcome> selectAdsAsync(AdSelectionConfig adSelectionConfig);

    @ExperimentalFeatures.Ext10OptIn
    public abstract Z<AdSelectionOutcome> selectAdsAsync(AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfig);

    @ExperimentalFeatures.Ext8OptIn
    public abstract Z<P0> updateAdCounterHistogramAsync(UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest);

    public static final class Api33Ext4JavaImpl extends AdSelectionManagerFutures {
        private final AdSelectionManager mAdSelectionManager;

        public Api33Ext4JavaImpl(AdSelectionManager adSelectionManager) {
            this.mAdSelectionManager = adSelectionManager;
        }

        @Override
        public Z<GetAdSelectionDataOutcome> getAdSelectionDataAsync(GetAdSelectionDataRequest getAdSelectionDataRequest) {
            eg.Z b10;
            M.p(getAdSelectionDataRequest, "getAdSelectionDataRequest");
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$getAdSelectionDataAsync$1(this, getAdSelectionDataRequest, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override
        public Z<AdSelectionOutcome> persistAdSelectionResultAsync(PersistAdSelectionResultRequest persistAdSelectionResultRequest) {
            eg.Z b10;
            M.p(persistAdSelectionResultRequest, "persistAdSelectionResultRequest");
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$persistAdSelectionResultAsync$1(this, persistAdSelectionResultRequest, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override
        public Z<P0> reportEventAsync(ReportEventRequest reportEventRequest) {
            eg.Z b10;
            M.p(reportEventRequest, "reportEventRequest");
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$reportEventAsync$1(this, reportEventRequest, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override
        public Z<P0> reportImpressionAsync(ReportImpressionRequest reportImpressionRequest) {
            eg.Z b10;
            M.p(reportImpressionRequest, "reportImpressionRequest");
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$reportImpressionAsync$1(this, reportImpressionRequest, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override
        public Z<AdSelectionOutcome> selectAdsAsync(AdSelectionConfig adSelectionConfig) {
            eg.Z b10;
            M.p(adSelectionConfig, "adSelectionConfig");
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$selectAdsAsync$1(this, adSelectionConfig, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override
        public Z<P0> updateAdCounterHistogramAsync(UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest) {
            eg.Z b10;
            M.p(updateAdCounterHistogramRequest, "updateAdCounterHistogramRequest");
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$updateAdCounterHistogramAsync$1(this, updateAdCounterHistogramRequest, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override
        public Z<AdSelectionOutcome> selectAdsAsync(AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfig) {
            eg.Z b10;
            M.p(adSelectionFromOutcomesConfig, "adSelectionFromOutcomesConfig");
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$selectAdsAsync$2(this, adSelectionFromOutcomesConfig, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }
    }
}
