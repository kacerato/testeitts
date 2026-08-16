package androidx.privacysandbox.ads.adservices.customaudience;

import android.net.Uri;
import androidx.privacysandbox.ads.adservices.common.AdData;
import androidx.privacysandbox.ads.adservices.common.AdSelectionSignals;
import androidx.privacysandbox.ads.adservices.common.AdTechIdentifier;
import java.time.Instant;
import java.util.List;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;

public final class CustomAudience {
    private final Instant activationTime;
    private final List<AdData> ads;
    private final Uri biddingLogicUri;
    private final AdTechIdentifier buyer;
    private final Uri dailyUpdateUri;
    private final Instant expirationTime;
    private final String name;
    private final TrustedBiddingData trustedBiddingSignals;
    private final AdSelectionSignals userBiddingSignals;

    public static final class Builder {
        private Instant activationTime;
        private List<AdData> ads;
        private Uri biddingLogicUri;
        private AdTechIdentifier buyer;
        private Uri dailyUpdateUri;
        private Instant expirationTime;
        private String name;
        private TrustedBiddingData trustedBiddingData;
        private AdSelectionSignals userBiddingSignals;

        public Builder(AdTechIdentifier buyer, String name, Uri dailyUpdateUri, Uri biddingLogicUri, List<AdData> ads) {
            M.p(buyer, "buyer");
            M.p(name, "name");
            M.p(dailyUpdateUri, "dailyUpdateUri");
            M.p(biddingLogicUri, "biddingLogicUri");
            M.p(ads, "ads");
            this.buyer = buyer;
            this.name = name;
            this.dailyUpdateUri = dailyUpdateUri;
            this.biddingLogicUri = biddingLogicUri;
            this.ads = ads;
        }

        public final CustomAudience build() {
            return new CustomAudience(this.buyer, this.name, this.dailyUpdateUri, this.biddingLogicUri, this.ads, this.activationTime, this.expirationTime, this.userBiddingSignals, this.trustedBiddingData);
        }

        public final Builder setActivationTime(Instant activationTime) {
            M.p(activationTime, "activationTime");
            this.activationTime = activationTime;
            return this;
        }

        public final Builder setAds(List<AdData> ads) {
            M.p(ads, "ads");
            this.ads = ads;
            return this;
        }

        public final Builder setBiddingLogicUri(Uri biddingLogicUri) {
            M.p(biddingLogicUri, "biddingLogicUri");
            this.biddingLogicUri = biddingLogicUri;
            return this;
        }

        public final Builder setBuyer(AdTechIdentifier buyer) {
            M.p(buyer, "buyer");
            this.buyer = buyer;
            return this;
        }

        public final Builder setDailyUpdateUri(Uri dailyUpdateUri) {
            M.p(dailyUpdateUri, "dailyUpdateUri");
            this.dailyUpdateUri = dailyUpdateUri;
            return this;
        }

        public final Builder setExpirationTime(Instant expirationTime) {
            M.p(expirationTime, "expirationTime");
            this.expirationTime = expirationTime;
            return this;
        }

        public final Builder setName(String name) {
            M.p(name, "name");
            this.name = name;
            return this;
        }

        public final Builder setTrustedBiddingData(TrustedBiddingData trustedBiddingSignals) {
            M.p(trustedBiddingSignals, "trustedBiddingSignals");
            this.trustedBiddingData = trustedBiddingSignals;
            return this;
        }

        public final Builder setUserBiddingSignals(AdSelectionSignals userBiddingSignals) {
            M.p(userBiddingSignals, "userBiddingSignals");
            this.userBiddingSignals = userBiddingSignals;
            return this;
        }
    }

    public CustomAudience(AdTechIdentifier buyer, String name, Uri dailyUpdateUri, Uri biddingLogicUri, List<AdData> ads, Instant instant, Instant instant2, AdSelectionSignals adSelectionSignals, TrustedBiddingData trustedBiddingData) {
        M.p(buyer, "buyer");
        M.p(name, "name");
        M.p(dailyUpdateUri, "dailyUpdateUri");
        M.p(biddingLogicUri, "biddingLogicUri");
        M.p(ads, "ads");
        this.buyer = buyer;
        this.name = name;
        this.dailyUpdateUri = dailyUpdateUri;
        this.biddingLogicUri = biddingLogicUri;
        this.ads = ads;
        this.activationTime = instant;
        this.expirationTime = instant2;
        this.userBiddingSignals = adSelectionSignals;
        this.trustedBiddingSignals = trustedBiddingData;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomAudience)) {
            return false;
        }
        CustomAudience customAudience = (CustomAudience) obj;
        return M.g(this.buyer, customAudience.buyer) && M.g(this.name, customAudience.name) && M.g(this.activationTime, customAudience.activationTime) && M.g(this.expirationTime, customAudience.expirationTime) && M.g(this.dailyUpdateUri, customAudience.dailyUpdateUri) && M.g(this.userBiddingSignals, customAudience.userBiddingSignals) && M.g(this.trustedBiddingSignals, customAudience.trustedBiddingSignals) && M.g(this.ads, customAudience.ads);
    }

    public final Instant getActivationTime() {
        return this.activationTime;
    }

    public final List<AdData> getAds() {
        return this.ads;
    }

    public final Uri getBiddingLogicUri() {
        return this.biddingLogicUri;
    }

    public final AdTechIdentifier getBuyer() {
        return this.buyer;
    }

    public final Uri getDailyUpdateUri() {
        return this.dailyUpdateUri;
    }

    public final Instant getExpirationTime() {
        return this.expirationTime;
    }

    public final String getName() {
        return this.name;
    }

    public final TrustedBiddingData getTrustedBiddingSignals() {
        return this.trustedBiddingSignals;
    }

    public final AdSelectionSignals getUserBiddingSignals() {
        return this.userBiddingSignals;
    }

    public int hashCode() {
        int hashCode = ((this.buyer.hashCode() * 31) + this.name.hashCode()) * 31;
        Instant instant = this.activationTime;
        int hashCode2 = (hashCode + (instant != null ? instant.hashCode() : 0)) * 31;
        Instant instant2 = this.expirationTime;
        int hashCode3 = (((hashCode2 + (instant2 != null ? instant2.hashCode() : 0)) * 31) + this.dailyUpdateUri.hashCode()) * 31;
        AdSelectionSignals adSelectionSignals = this.userBiddingSignals;
        int hashCode4 = (hashCode3 + (adSelectionSignals != null ? adSelectionSignals.hashCode() : 0)) * 31;
        TrustedBiddingData trustedBiddingData = this.trustedBiddingSignals;
        return ((((hashCode4 + (trustedBiddingData != null ? trustedBiddingData.hashCode() : 0)) * 31) + this.biddingLogicUri.hashCode()) * 31) + this.ads.hashCode();
    }

    public String toString() {
        return "CustomAudience: buyer=" + ((Object) this.biddingLogicUri) + ", name=" + this.name + ", activationTime=" + ((Object) this.activationTime) + ", expirationTime=" + ((Object) this.expirationTime) + ", dailyUpdateUri=" + ((Object) this.dailyUpdateUri) + ", userBiddingSignals=" + ((Object) this.userBiddingSignals) + ", trustedBiddingSignals=" + ((Object) this.trustedBiddingSignals) + ", biddingLogicUri=" + ((Object) this.biddingLogicUri) + ", ads=" + ((Object) this.ads);
    }

    public CustomAudience(AdTechIdentifier adTechIdentifier, String str, Uri uri, Uri uri2, List list, Instant instant, Instant instant2, AdSelectionSignals adSelectionSignals, TrustedBiddingData trustedBiddingData, int i10, C14026x c14026x) {
        this(adTechIdentifier, str, uri, uri2, list, (i10 & 32) != 0 ? null : instant, (i10 & 64) != 0 ? null : instant2, (i10 & 128) != 0 ? null : adSelectionSignals, (i10 & 256) != 0 ? null : trustedBiddingData);
    }
}
