package androidx.privacysandbox.ads.adservices.adselection;

import android.adservices.adselection.AdSelectionFromOutcomesConfig;
import android.net.Uri;
import androidx.privacysandbox.ads.adservices.common.AdSelectionSignals;
import androidx.privacysandbox.ads.adservices.common.AdTechIdentifier;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import java.util.List;

@ExperimentalFeatures.Ext10OptIn
public final class AdSelectionFromOutcomesConfig {
    private final List<Long> adSelectionIds;
    private final AdSelectionSignals adSelectionSignals;
    private Uri selectionLogicUri;
    private final AdTechIdentifier seller;

    public AdSelectionFromOutcomesConfig(AdTechIdentifier seller, List<Long> adSelectionIds, AdSelectionSignals adSelectionSignals, Uri selectionLogicUri) {
        kotlin.jvm.internal.M.p(seller, "seller");
        kotlin.jvm.internal.M.p(adSelectionIds, "adSelectionIds");
        kotlin.jvm.internal.M.p(adSelectionSignals, "adSelectionSignals");
        kotlin.jvm.internal.M.p(selectionLogicUri, "selectionLogicUri");
        this.seller = seller;
        this.adSelectionIds = adSelectionIds;
        this.adSelectionSignals = adSelectionSignals;
        this.selectionLogicUri = selectionLogicUri;
    }

    public final android.adservices.adselection.AdSelectionFromOutcomesConfig convertToAdServices$ads_adservices_release() {
        AdSelectionFromOutcomesConfig.Builder selectionSignals;
        AdSelectionFromOutcomesConfig.Builder adSelectionIds;
        AdSelectionFromOutcomesConfig.Builder selectionLogicUri;
        AdSelectionFromOutcomesConfig.Builder seller;
        android.adservices.adselection.AdSelectionFromOutcomesConfig build;
        selectionSignals = C3748o.a().setSelectionSignals(this.adSelectionSignals.convertToAdServices$ads_adservices_release());
        adSelectionIds = selectionSignals.setAdSelectionIds(this.adSelectionIds);
        selectionLogicUri = adSelectionIds.setSelectionLogicUri(this.selectionLogicUri);
        seller = selectionLogicUri.setSeller(this.seller.convertToAdServices$ads_adservices_release());
        build = seller.build();
        kotlin.jvm.internal.M.o(build, "Builder()\n            .s\u2026s())\n            .build()");
        return build;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdSelectionFromOutcomesConfig)) {
            return false;
        }
        AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfig = (AdSelectionFromOutcomesConfig) obj;
        return kotlin.jvm.internal.M.g(this.seller, adSelectionFromOutcomesConfig.seller) && kotlin.jvm.internal.M.g(this.adSelectionIds, adSelectionFromOutcomesConfig.adSelectionIds) && kotlin.jvm.internal.M.g(this.adSelectionSignals, adSelectionFromOutcomesConfig.adSelectionSignals) && kotlin.jvm.internal.M.g(this.selectionLogicUri, adSelectionFromOutcomesConfig.selectionLogicUri);
    }

    public final List<Long> getAdSelectionIds() {
        return this.adSelectionIds;
    }

    public final AdSelectionSignals getAdSelectionSignals() {
        return this.adSelectionSignals;
    }

    public final Uri getSelectionLogicUri() {
        return this.selectionLogicUri;
    }

    public final AdTechIdentifier getSeller() {
        return this.seller;
    }

    public int hashCode() {
        return (((((this.seller.hashCode() * 31) + this.adSelectionIds.hashCode()) * 31) + this.adSelectionSignals.hashCode()) * 31) + this.selectionLogicUri.hashCode();
    }

    public final void setSelectionLogicUri(Uri uri) {
        kotlin.jvm.internal.M.p(uri, "<set-?>");
        this.selectionLogicUri = uri;
    }

    public String toString() {
        return "AdSelectionFromOutcomesConfig: seller=" + ((Object) this.seller) + ", adSelectionIds='" + ((Object) this.adSelectionIds) + "', adSelectionSignals=" + ((Object) this.adSelectionSignals) + ", selectionLogicUri=" + ((Object) this.selectionLogicUri);
    }
}
