package androidx.privacysandbox.ads.adservices.adid;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;

public final class AdId {
    private final String adId;
    private final boolean isLimitAdTrackingEnabled;

    public AdId(String adId, boolean z10) {
        M.p(adId, "adId");
        this.adId = adId;
        this.isLimitAdTrackingEnabled = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdId)) {
            return false;
        }
        AdId adId = (AdId) obj;
        return M.g(this.adId, adId.adId) && this.isLimitAdTrackingEnabled == adId.isLimitAdTrackingEnabled;
    }

    public final String getAdId() {
        return this.adId;
    }

    public int hashCode() {
        return (this.adId.hashCode() * 31) + Boolean.hashCode(this.isLimitAdTrackingEnabled);
    }

    public final boolean isLimitAdTrackingEnabled() {
        return this.isLimitAdTrackingEnabled;
    }

    public String toString() {
        return "AdId: adId=" + this.adId + ", isLimitAdTrackingEnabled=" + this.isLimitAdTrackingEnabled;
    }

    public AdId(String str, boolean z10, int i10, C14026x c14026x) {
        this(str, (i10 & 2) != 0 ? false : z10);
    }
}
