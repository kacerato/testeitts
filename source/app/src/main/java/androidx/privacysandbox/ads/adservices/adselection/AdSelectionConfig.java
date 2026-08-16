package androidx.privacysandbox.ads.adservices.adselection;

import android.adservices.adselection.AdSelectionConfig;
import android.net.Uri;
import androidx.privacysandbox.ads.adservices.common.AdSelectionSignals;
import androidx.privacysandbox.ads.adservices.common.AdTechIdentifier;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.C14026x;
import pf.o0;

public final class AdSelectionConfig {
    public static final Companion Companion = new Companion(null);
    private static final AdSelectionConfig EMPTY;
    private final AdSelectionSignals adSelectionSignals;
    private final List<AdTechIdentifier> customAudienceBuyers;
    private final Uri decisionLogicUri;
    private final Map<AdTechIdentifier, AdSelectionSignals> perBuyerSignals;
    private final AdTechIdentifier seller;
    private final AdSelectionSignals sellerSignals;
    private final Uri trustedScoringSignalsUri;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        public final AdSelectionConfig getEMPTY() {
            return AdSelectionConfig.EMPTY;
        }

        private Companion() {
        }
    }

    static {
        AdTechIdentifier adTechIdentifier = new AdTechIdentifier("");
        Uri EMPTY2 = Uri.EMPTY;
        kotlin.jvm.internal.M.o(EMPTY2, "EMPTY");
        List J10 = pf.H.J();
        AdSelectionSignals adSelectionSignals = new AdSelectionSignals("");
        AdSelectionSignals adSelectionSignals2 = new AdSelectionSignals("");
        Map z10 = o0.z();
        kotlin.jvm.internal.M.o(EMPTY2, "EMPTY");
        EMPTY = new AdSelectionConfig(adTechIdentifier, EMPTY2, J10, adSelectionSignals, adSelectionSignals2, z10, EMPTY2);
    }

    public AdSelectionConfig(AdTechIdentifier seller, Uri decisionLogicUri, List<AdTechIdentifier> customAudienceBuyers, AdSelectionSignals adSelectionSignals, AdSelectionSignals sellerSignals, Map<AdTechIdentifier, AdSelectionSignals> perBuyerSignals, Uri trustedScoringSignalsUri) {
        kotlin.jvm.internal.M.p(seller, "seller");
        kotlin.jvm.internal.M.p(decisionLogicUri, "decisionLogicUri");
        kotlin.jvm.internal.M.p(customAudienceBuyers, "customAudienceBuyers");
        kotlin.jvm.internal.M.p(adSelectionSignals, "adSelectionSignals");
        kotlin.jvm.internal.M.p(sellerSignals, "sellerSignals");
        kotlin.jvm.internal.M.p(perBuyerSignals, "perBuyerSignals");
        kotlin.jvm.internal.M.p(trustedScoringSignalsUri, "trustedScoringSignalsUri");
        this.seller = seller;
        this.decisionLogicUri = decisionLogicUri;
        this.customAudienceBuyers = customAudienceBuyers;
        this.adSelectionSignals = adSelectionSignals;
        this.sellerSignals = sellerSignals;
        this.perBuyerSignals = perBuyerSignals;
        this.trustedScoringSignalsUri = trustedScoringSignalsUri;
    }

    private final List<android.adservices.common.AdTechIdentifier> convertToAdServices(List<AdTechIdentifier> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<AdTechIdentifier> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().convertToAdServices$ads_adservices_release());
        }
        return arrayList;
    }

    public final android.adservices.adselection.AdSelectionConfig convertToAdServices$ads_adservices_release() {
        AdSelectionConfig.Builder adSelectionSignals;
        AdSelectionConfig.Builder customAudienceBuyers;
        AdSelectionConfig.Builder decisionLogicUri;
        AdSelectionConfig.Builder seller;
        AdSelectionConfig.Builder perBuyerSignals;
        AdSelectionConfig.Builder sellerSignals;
        AdSelectionConfig.Builder trustedScoringSignalsUri;
        android.adservices.adselection.AdSelectionConfig build;
        adSelectionSignals = C3742i.a().setAdSelectionSignals(this.adSelectionSignals.convertToAdServices$ads_adservices_release());
        customAudienceBuyers = adSelectionSignals.setCustomAudienceBuyers(convertToAdServices(this.customAudienceBuyers));
        decisionLogicUri = customAudienceBuyers.setDecisionLogicUri(this.decisionLogicUri);
        seller = decisionLogicUri.setSeller(this.seller.convertToAdServices$ads_adservices_release());
        perBuyerSignals = seller.setPerBuyerSignals(convertToAdServices(this.perBuyerSignals));
        sellerSignals = perBuyerSignals.setSellerSignals(this.sellerSignals.convertToAdServices$ads_adservices_release());
        trustedScoringSignalsUri = sellerSignals.setTrustedScoringSignalsUri(this.trustedScoringSignalsUri);
        build = trustedScoringSignalsUri.build();
        kotlin.jvm.internal.M.o(build, "Builder()\n            .s\u2026Uri)\n            .build()");
        return build;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdSelectionConfig)) {
            return false;
        }
        AdSelectionConfig adSelectionConfig = (AdSelectionConfig) obj;
        return kotlin.jvm.internal.M.g(this.seller, adSelectionConfig.seller) && kotlin.jvm.internal.M.g(this.decisionLogicUri, adSelectionConfig.decisionLogicUri) && kotlin.jvm.internal.M.g(this.customAudienceBuyers, adSelectionConfig.customAudienceBuyers) && kotlin.jvm.internal.M.g(this.adSelectionSignals, adSelectionConfig.adSelectionSignals) && kotlin.jvm.internal.M.g(this.sellerSignals, adSelectionConfig.sellerSignals) && kotlin.jvm.internal.M.g(this.perBuyerSignals, adSelectionConfig.perBuyerSignals) && kotlin.jvm.internal.M.g(this.trustedScoringSignalsUri, adSelectionConfig.trustedScoringSignalsUri);
    }

    public final AdSelectionSignals getAdSelectionSignals() {
        return this.adSelectionSignals;
    }

    public final List<AdTechIdentifier> getCustomAudienceBuyers() {
        return this.customAudienceBuyers;
    }

    public final Uri getDecisionLogicUri() {
        return this.decisionLogicUri;
    }

    public final Map<AdTechIdentifier, AdSelectionSignals> getPerBuyerSignals() {
        return this.perBuyerSignals;
    }

    public final AdTechIdentifier getSeller() {
        return this.seller;
    }

    public final AdSelectionSignals getSellerSignals() {
        return this.sellerSignals;
    }

    public final Uri getTrustedScoringSignalsUri() {
        return this.trustedScoringSignalsUri;
    }

    public int hashCode() {
        return (((((((((((this.seller.hashCode() * 31) + this.decisionLogicUri.hashCode()) * 31) + this.customAudienceBuyers.hashCode()) * 31) + this.adSelectionSignals.hashCode()) * 31) + this.sellerSignals.hashCode()) * 31) + this.perBuyerSignals.hashCode()) * 31) + this.trustedScoringSignalsUri.hashCode();
    }

    public String toString() {
        return "AdSelectionConfig: seller=" + ((Object) this.seller) + ", decisionLogicUri='" + ((Object) this.decisionLogicUri) + "', customAudienceBuyers=" + ((Object) this.customAudienceBuyers) + ", adSelectionSignals=" + ((Object) this.adSelectionSignals) + ", sellerSignals=" + ((Object) this.sellerSignals) + ", perBuyerSignals=" + ((Object) this.perBuyerSignals) + ", trustedScoringSignalsUri=" + ((Object) this.trustedScoringSignalsUri);
    }

    private final Map<android.adservices.common.AdTechIdentifier, android.adservices.common.AdSelectionSignals> convertToAdServices(Map<AdTechIdentifier, AdSelectionSignals> map) {
        HashMap hashMap = new HashMap();
        for (AdTechIdentifier adTechIdentifier : map.o()) {
            android.adservices.common.AdTechIdentifier convertToAdServices$ads_adservices_release = adTechIdentifier.convertToAdServices$ads_adservices_release();
            AdSelectionSignals adSelectionSignals = map.get(adTechIdentifier);
            hashMap.put(convertToAdServices$ads_adservices_release, adSelectionSignals != null ? adSelectionSignals.convertToAdServices$ads_adservices_release() : null);
        }
        return hashMap;
    }
}
