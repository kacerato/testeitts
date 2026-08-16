package androidx.privacysandbox.ads.adservices.adselection;

import android.adservices.adselection.GetAdSelectionDataRequest;
import android.net.Uri;
import androidx.privacysandbox.ads.adservices.common.AdTechIdentifier;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import kotlin.jvm.internal.C14026x;

@ExperimentalFeatures.Ext10OptIn
public final class GetAdSelectionDataRequest {
    private final Uri coordinatorOriginUri;
    private final AdTechIdentifier seller;

    public static final class Ext10Impl {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public Companion(C14026x c14026x) {
                this();
            }

            public final android.adservices.adselection.GetAdSelectionDataRequest convertGetAdSelectionDataRequest(GetAdSelectionDataRequest request) {
                GetAdSelectionDataRequest.Builder seller;
                android.adservices.adselection.GetAdSelectionDataRequest build;
                kotlin.jvm.internal.M.p(request, "request");
                seller = H.a().setSeller(request.getSeller().convertToAdServices$ads_adservices_release());
                build = seller.build();
                kotlin.jvm.internal.M.o(build, "Builder()\n              \u2026                 .build()");
                return build;
            }

            private Companion() {
            }
        }

        private Ext10Impl() {
        }
    }

    public static final class Ext12Impl {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public Companion(C14026x c14026x) {
                this();
            }

            public final android.adservices.adselection.GetAdSelectionDataRequest convertGetAdSelectionDataRequest(GetAdSelectionDataRequest request) {
                GetAdSelectionDataRequest.Builder seller;
                GetAdSelectionDataRequest.Builder coordinatorOriginUri;
                android.adservices.adselection.GetAdSelectionDataRequest build;
                kotlin.jvm.internal.M.p(request, "request");
                seller = H.a().setSeller(request.getSeller().convertToAdServices$ads_adservices_release());
                coordinatorOriginUri = seller.setCoordinatorOriginUri(request.getCoordinatorOriginUri());
                build = coordinatorOriginUri.build();
                kotlin.jvm.internal.M.o(build, "Builder()\n              \u2026                 .build()");
                return build;
            }

            private Companion() {
            }
        }

        private Ext12Impl() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public GetAdSelectionDataRequest(AdTechIdentifier seller) {
        this(seller, null, 2, 0 == true ? 1 : 0);
        kotlin.jvm.internal.M.p(seller, "seller");
    }

    @ExperimentalFeatures.Ext12OptIn
    public static void getCoordinatorOriginUri$annotations() {
    }

    public final android.adservices.adselection.GetAdSelectionDataRequest convertToAdServices$ads_adservices_release() {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        return (adServicesInfo.adServicesVersion() >= 12 || adServicesInfo.extServicesVersionS() >= 12) ? Ext12Impl.Companion.convertGetAdSelectionDataRequest(this) : Ext10Impl.Companion.convertGetAdSelectionDataRequest(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetAdSelectionDataRequest)) {
            return false;
        }
        GetAdSelectionDataRequest getAdSelectionDataRequest = (GetAdSelectionDataRequest) obj;
        return kotlin.jvm.internal.M.g(this.seller, getAdSelectionDataRequest.seller) && kotlin.jvm.internal.M.g(this.coordinatorOriginUri, getAdSelectionDataRequest.coordinatorOriginUri);
    }

    public final Uri getCoordinatorOriginUri() {
        return this.coordinatorOriginUri;
    }

    public final AdTechIdentifier getSeller() {
        return this.seller;
    }

    public int hashCode() {
        int hashCode = this.seller.hashCode() * 31;
        Uri uri = this.coordinatorOriginUri;
        return hashCode + (uri != null ? uri.hashCode() : 0);
    }

    public String toString() {
        return "GetAdSelectionDataRequest: seller=" + ((Object) this.seller) + ", coordinatorOriginUri=" + ((Object) this.coordinatorOriginUri);
    }

    public GetAdSelectionDataRequest(AdTechIdentifier seller, Uri uri) {
        kotlin.jvm.internal.M.p(seller, "seller");
        this.seller = seller;
        this.coordinatorOriginUri = uri;
    }

    public GetAdSelectionDataRequest(AdTechIdentifier adTechIdentifier, Uri uri, int i10, C14026x c14026x) {
        this(adTechIdentifier, (i10 & 2) != 0 ? null : uri);
    }
}
