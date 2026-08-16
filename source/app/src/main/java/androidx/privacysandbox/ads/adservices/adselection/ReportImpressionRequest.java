package androidx.privacysandbox.ads.adservices.adselection;

import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import kotlin.jvm.internal.C14026x;

public final class ReportImpressionRequest {
    private final AdSelectionConfig adSelectionConfig;
    private final long adSelectionId;

    public static final class Ext10Impl {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public Companion(C14026x c14026x) {
                this();
            }

            public final android.adservices.adselection.ReportImpressionRequest convertReportImpressionRequest(ReportImpressionRequest request) {
                kotlin.jvm.internal.M.p(request, "request");
                if (kotlin.jvm.internal.M.g(request.getAdSelectionConfig(), AdSelectionConfig.Companion.getEMPTY())) {
                    V.a();
                    return T.a(request.getAdSelectionId());
                }
                V.a();
                return U.a(request.getAdSelectionId(), request.getAdSelectionConfig().convertToAdServices$ads_adservices_release());
            }

            private Companion() {
            }
        }

        private Ext10Impl() {
        }
    }

    public static final class Ext4Impl {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public Companion(C14026x c14026x) {
                this();
            }

            public final android.adservices.adselection.ReportImpressionRequest convertReportImpressionRequest(ReportImpressionRequest request) {
                kotlin.jvm.internal.M.p(request, "request");
                if (kotlin.jvm.internal.M.g(request.getAdSelectionConfig(), AdSelectionConfig.Companion.getEMPTY())) {
                    throw new UnsupportedOperationException("adSelectionConfig is mandatory forAPI versions lower than ext 10");
                }
                V.a();
                return U.a(request.getAdSelectionId(), request.getAdSelectionConfig().convertToAdServices$ads_adservices_release());
            }

            private Companion() {
            }
        }

        private Ext4Impl() {
        }
    }

    public ReportImpressionRequest(long j10, AdSelectionConfig adSelectionConfig) {
        kotlin.jvm.internal.M.p(adSelectionConfig, "adSelectionConfig");
        this.adSelectionId = j10;
        this.adSelectionConfig = adSelectionConfig;
    }

    public final android.adservices.adselection.ReportImpressionRequest convertToAdServices$ads_adservices_release() {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        return (adServicesInfo.adServicesVersion() >= 10 || adServicesInfo.extServicesVersionS() >= 10) ? Ext10Impl.Companion.convertReportImpressionRequest(this) : Ext4Impl.Companion.convertReportImpressionRequest(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReportImpressionRequest)) {
            return false;
        }
        ReportImpressionRequest reportImpressionRequest = (ReportImpressionRequest) obj;
        return this.adSelectionId == reportImpressionRequest.adSelectionId && kotlin.jvm.internal.M.g(this.adSelectionConfig, reportImpressionRequest.adSelectionConfig);
    }

    public final AdSelectionConfig getAdSelectionConfig() {
        return this.adSelectionConfig;
    }

    public final long getAdSelectionId() {
        return this.adSelectionId;
    }

    public int hashCode() {
        return (Long.hashCode(this.adSelectionId) * 31) + this.adSelectionConfig.hashCode();
    }

    public String toString() {
        return "ReportImpressionRequest: adSelectionId=" + this.adSelectionId + ", adSelectionConfig=" + ((Object) this.adSelectionConfig);
    }

    @ExperimentalFeatures.Ext8OptIn
    public ReportImpressionRequest(long j10) {
        this(j10, AdSelectionConfig.Companion.getEMPTY());
    }
}
