package androidx.privacysandbox.ads.adservices.common;

import android.adservices.common.AdData;
import android.net.Uri;
import android.util.Log;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import java.util.Set;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import pf.z0;

public final class AdData {
    private final Set<Integer> adCounterKeys;
    private final AdFilters adFilters;
    private final String adRenderId;
    private final String metadata;
    private final Uri renderUri;

    public static final class Ext10Impl {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public Companion(C14026x c14026x) {
                this();
            }

            public final android.adservices.common.AdData convertAdData(AdData adData) {
                AdData.Builder metadata;
                AdData.Builder renderUri;
                AdData.Builder adCounterKeys;
                AdData.Builder adFilters;
                AdData.Builder adRenderId;
                android.adservices.common.AdData build;
                M.p(adData, "adData");
                metadata = g.a().setMetadata(adData.getMetadata());
                renderUri = metadata.setRenderUri(adData.getRenderUri());
                adCounterKeys = renderUri.setAdCounterKeys(adData.getAdCounterKeys());
                AdFilters adFilters2 = adData.getAdFilters();
                adFilters = adCounterKeys.setAdFilters(adFilters2 != null ? adFilters2.convertToAdServices$ads_adservices_release() : null);
                adRenderId = adFilters.setAdRenderId(adData.getAdRenderId());
                build = adRenderId.build();
                M.o(build, "Builder()\n              \u2026                 .build()");
                return build;
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

            public final android.adservices.common.AdData convertAdData(AdData adData) {
                AdData.Builder metadata;
                AdData.Builder renderUri;
                android.adservices.common.AdData build;
                M.p(adData, "adData");
                if (!adData.getAdCounterKeys().isEmpty()) {
                    Log.w("AdData", "adCounterKeys is ignored. Min version to use adCounterKeys is API 33 ext 8 or API 31/32 ext 9");
                }
                if (adData.getAdFilters() != null) {
                    Log.w("AdData", "adFilters is ignored. Min version to use adFilters is API 33 ext 8 or API 31/32 ext 9");
                }
                if (adData.getAdRenderId() != null) {
                    Log.w("AdData", "adRenderId is ignored. Min version to use adRenderId is API 31 ext 10");
                }
                metadata = g.a().setMetadata(adData.getMetadata());
                renderUri = metadata.setRenderUri(adData.getRenderUri());
                build = renderUri.build();
                M.o(build, "Builder()\n              \u2026                 .build()");
                return build;
            }

            private Companion() {
            }
        }

        private Ext4Impl() {
        }
    }

    public static final class Ext8Impl {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public Companion(C14026x c14026x) {
                this();
            }

            public final android.adservices.common.AdData convertAdData(AdData adData) {
                AdData.Builder metadata;
                AdData.Builder renderUri;
                AdData.Builder adCounterKeys;
                AdData.Builder adFilters;
                android.adservices.common.AdData build;
                M.p(adData, "adData");
                if (adData.getAdRenderId() != null) {
                    Log.w("AdData", "adRenderId is ignored. Min version to use adRenderId is API 31 ext 10");
                }
                metadata = g.a().setMetadata(adData.getMetadata());
                renderUri = metadata.setRenderUri(adData.getRenderUri());
                adCounterKeys = renderUri.setAdCounterKeys(adData.getAdCounterKeys());
                AdFilters adFilters2 = adData.getAdFilters();
                adFilters = adCounterKeys.setAdFilters(adFilters2 != null ? adFilters2.convertToAdServices$ads_adservices_release() : null);
                build = adFilters.build();
                M.o(build, "Builder()\n              \u2026                 .build()");
                return build;
            }

            private Companion() {
            }
        }

        private Ext8Impl() {
        }
    }

    @ExperimentalFeatures.Ext10OptIn
    public AdData(Uri renderUri, String metadata, Set<Integer> adCounterKeys, AdFilters adFilters, String str) {
        M.p(renderUri, "renderUri");
        M.p(metadata, "metadata");
        M.p(adCounterKeys, "adCounterKeys");
        this.renderUri = renderUri;
        this.metadata = metadata;
        this.adCounterKeys = adCounterKeys;
        this.adFilters = adFilters;
        this.adRenderId = str;
    }

    public final android.adservices.common.AdData convertToAdServices$ads_adservices_release() {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        return (adServicesInfo.adServicesVersion() >= 10 || adServicesInfo.extServicesVersionS() >= 10) ? Ext10Impl.Companion.convertAdData(this) : (adServicesInfo.adServicesVersion() >= 8 || adServicesInfo.extServicesVersionS() >= 9) ? Ext8Impl.Companion.convertAdData(this) : Ext4Impl.Companion.convertAdData(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdData)) {
            return false;
        }
        AdData adData = (AdData) obj;
        return M.g(this.renderUri, adData.renderUri) && M.g(this.metadata, adData.metadata) && M.g(this.adCounterKeys, adData.adCounterKeys) && M.g(this.adFilters, adData.adFilters) && M.g(this.adRenderId, adData.adRenderId);
    }

    public final Set<Integer> getAdCounterKeys() {
        return this.adCounterKeys;
    }

    public final AdFilters getAdFilters() {
        return this.adFilters;
    }

    public final String getAdRenderId() {
        return this.adRenderId;
    }

    public final String getMetadata() {
        return this.metadata;
    }

    public final Uri getRenderUri() {
        return this.renderUri;
    }

    public int hashCode() {
        int hashCode = ((((this.renderUri.hashCode() * 31) + this.metadata.hashCode()) * 31) + this.adCounterKeys.hashCode()) * 31;
        AdFilters adFilters = this.adFilters;
        int hashCode2 = (hashCode + (adFilters != null ? adFilters.hashCode() : 0)) * 31;
        String str = this.adRenderId;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "AdData: renderUri=" + ((Object) this.renderUri) + ", metadata='" + this.metadata + "', adCounterKeys=" + ((Object) this.adCounterKeys) + ", adFilters=" + ((Object) this.adFilters) + ", adRenderId=" + this.adRenderId;
    }

    public AdData(Uri uri, String str, Set set, AdFilters adFilters, String str2, int i10, C14026x c14026x) {
        this(uri, str, (i10 & 4) != 0 ? z0.k() : set, (i10 & 8) != 0 ? null : adFilters, (i10 & 16) != 0 ? null : str2);
    }

    public AdData(Uri uri, String str, Set set, AdFilters adFilters, int i10, C14026x c14026x) {
        this(uri, str, (i10 & 4) != 0 ? z0.k() : set, (i10 & 8) != 0 ? null : adFilters);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ExperimentalFeatures.Ext8OptIn
    public AdData(Uri renderUri, String metadata, Set<Integer> adCounterKeys, AdFilters adFilters) {
        this(renderUri, metadata, adCounterKeys, adFilters, null);
        M.p(renderUri, "renderUri");
        M.p(metadata, "metadata");
        M.p(adCounterKeys, "adCounterKeys");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AdData(Uri renderUri, String metadata) {
        this(renderUri, metadata, z0.k(), null);
        M.p(renderUri, "renderUri");
        M.p(metadata, "metadata");
    }
}
