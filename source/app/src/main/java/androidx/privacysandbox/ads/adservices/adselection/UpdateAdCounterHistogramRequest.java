package androidx.privacysandbox.ads.adservices.adselection;

import androidx.privacysandbox.ads.adservices.common.AdTechIdentifier;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;

@ExperimentalFeatures.Ext8OptIn
public final class UpdateAdCounterHistogramRequest {
    private final int adEventType;
    private final long adSelectionId;
    private final AdTechIdentifier callerAdTech;

    public UpdateAdCounterHistogramRequest(long j10, int i10, AdTechIdentifier callerAdTech) {
        kotlin.jvm.internal.M.p(callerAdTech, "callerAdTech");
        this.adSelectionId = j10;
        this.adEventType = i10;
        this.callerAdTech = callerAdTech;
        if (i10 == 0) {
            throw new IllegalArgumentException("Win event types cannot be manually updated.");
        }
        if (i10 != 1 && i10 != 2 && i10 != 3) {
            throw new IllegalArgumentException("Ad event type must be one of AD_EVENT_TYPE_IMPRESSION, AD_EVENT_TYPE_VIEW, or AD_EVENT_TYPE_CLICK");
        }
    }

    public final android.adservices.adselection.UpdateAdCounterHistogramRequest convertToAdServices$ads_adservices_release() {
        android.adservices.adselection.UpdateAdCounterHistogramRequest build;
        Y.a();
        build = X.a(this.adSelectionId, this.adEventType, this.callerAdTech.convertToAdServices$ads_adservices_release()).build();
        kotlin.jvm.internal.M.o(build, "Builder(\n               \u2026   )\n            .build()");
        return build;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UpdateAdCounterHistogramRequest)) {
            return false;
        }
        UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest = (UpdateAdCounterHistogramRequest) obj;
        return this.adSelectionId == updateAdCounterHistogramRequest.adSelectionId && this.adEventType == updateAdCounterHistogramRequest.adEventType && kotlin.jvm.internal.M.g(this.callerAdTech, updateAdCounterHistogramRequest.callerAdTech);
    }

    public final int getAdEventType() {
        return this.adEventType;
    }

    public final long getAdSelectionId() {
        return this.adSelectionId;
    }

    public final AdTechIdentifier getCallerAdTech() {
        return this.callerAdTech;
    }

    public int hashCode() {
        return (((Long.hashCode(this.adSelectionId) * 31) + Integer.hashCode(this.adEventType)) * 31) + this.callerAdTech.hashCode();
    }

    public String toString() {
        int i10 = this.adEventType;
        return "UpdateAdCounterHistogramRequest: adSelectionId=" + this.adSelectionId + ", adEventType=" + (i10 != 0 ? i10 != 1 ? i10 != 2 ? i10 != 3 ? "Invalid ad event type" : "AD_EVENT_TYPE_CLICK" : "AD_EVENT_TYPE_VIEW" : "AD_EVENT_TYPE_IMPRESSION" : "AD_EVENT_TYPE_WIN") + ", callerAdTech=" + ((Object) this.callerAdTech);
    }
}
