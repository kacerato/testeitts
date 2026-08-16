package androidx.privacysandbox.ads.adservices.customaudience;

import android.adservices.customaudience.FetchAndJoinCustomAudienceRequest;
import android.net.Uri;
import androidx.privacysandbox.ads.adservices.common.AdSelectionSignals;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import java.time.Instant;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;

@ExperimentalFeatures.Ext10OptIn
public final class FetchAndJoinCustomAudienceRequest {
    private final Instant activationTime;
    private final Instant expirationTime;
    private final Uri fetchUri;
    private final String name;
    private final AdSelectionSignals userBiddingSignals;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FetchAndJoinCustomAudienceRequest(Uri fetchUri) {
        this(fetchUri, null, null, null, null, 30, null);
        M.p(fetchUri, "fetchUri");
    }

    public final android.adservices.customaudience.FetchAndJoinCustomAudienceRequest convertToAdServices$ads_adservices_release() {
        FetchAndJoinCustomAudienceRequest.Builder name;
        FetchAndJoinCustomAudienceRequest.Builder activationTime;
        FetchAndJoinCustomAudienceRequest.Builder expirationTime;
        FetchAndJoinCustomAudienceRequest.Builder userBiddingSignals;
        android.adservices.customaudience.FetchAndJoinCustomAudienceRequest build;
        I.a();
        name = H.a(this.fetchUri).setName(this.name);
        activationTime = name.setActivationTime(this.activationTime);
        expirationTime = activationTime.setExpirationTime(this.expirationTime);
        AdSelectionSignals adSelectionSignals = this.userBiddingSignals;
        userBiddingSignals = expirationTime.setUserBiddingSignals(adSelectionSignals != null ? adSelectionSignals.convertToAdServices$ads_adservices_release() : null);
        build = userBiddingSignals.build();
        M.o(build, "Builder(fetchUri)\n      \u2026s())\n            .build()");
        return build;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FetchAndJoinCustomAudienceRequest)) {
            return false;
        }
        FetchAndJoinCustomAudienceRequest fetchAndJoinCustomAudienceRequest = (FetchAndJoinCustomAudienceRequest) obj;
        return M.g(this.fetchUri, fetchAndJoinCustomAudienceRequest.fetchUri) && M.g(this.name, fetchAndJoinCustomAudienceRequest.name) && M.g(this.activationTime, fetchAndJoinCustomAudienceRequest.activationTime) && M.g(this.expirationTime, fetchAndJoinCustomAudienceRequest.expirationTime) && M.g(this.userBiddingSignals, fetchAndJoinCustomAudienceRequest.userBiddingSignals);
    }

    public final Instant getActivationTime() {
        return this.activationTime;
    }

    public final Instant getExpirationTime() {
        return this.expirationTime;
    }

    public final Uri getFetchUri() {
        return this.fetchUri;
    }

    public final String getName() {
        return this.name;
    }

    public final AdSelectionSignals getUserBiddingSignals() {
        return this.userBiddingSignals;
    }

    public int hashCode() {
        int hashCode = this.fetchUri.hashCode() * 31;
        String str = this.name;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        Instant instant = this.activationTime;
        int hashCode3 = (hashCode2 + (instant != null ? instant.hashCode() : 0)) * 31;
        Instant instant2 = this.expirationTime;
        int hashCode4 = (hashCode3 + (instant2 != null ? instant2.hashCode() : 0)) * 31;
        AdSelectionSignals adSelectionSignals = this.userBiddingSignals;
        return hashCode4 + (adSelectionSignals != null ? adSelectionSignals.hashCode() : 0);
    }

    public String toString() {
        return "FetchAndJoinCustomAudienceRequest: fetchUri=" + ((Object) this.fetchUri) + ", name=" + this.name + ", activationTime=" + ((Object) this.activationTime) + ", expirationTime=" + ((Object) this.expirationTime) + ", userBiddingSignals=" + ((Object) this.userBiddingSignals);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FetchAndJoinCustomAudienceRequest(Uri fetchUri, String str) {
        this(fetchUri, str, null, null, null, 28, null);
        M.p(fetchUri, "fetchUri");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FetchAndJoinCustomAudienceRequest(Uri fetchUri, String str, Instant instant) {
        this(fetchUri, str, instant, null, null, 24, null);
        M.p(fetchUri, "fetchUri");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FetchAndJoinCustomAudienceRequest(Uri fetchUri, String str, Instant instant, Instant instant2) {
        this(fetchUri, str, instant, instant2, null, 16, null);
        M.p(fetchUri, "fetchUri");
    }

    public FetchAndJoinCustomAudienceRequest(Uri fetchUri, String str, Instant instant, Instant instant2, AdSelectionSignals adSelectionSignals) {
        M.p(fetchUri, "fetchUri");
        this.fetchUri = fetchUri;
        this.name = str;
        this.activationTime = instant;
        this.expirationTime = instant2;
        this.userBiddingSignals = adSelectionSignals;
    }

    public FetchAndJoinCustomAudienceRequest(Uri uri, String str, Instant instant, Instant instant2, AdSelectionSignals adSelectionSignals, int i10, C14026x c14026x) {
        this(uri, (i10 & 2) != 0 ? null : str, (i10 & 4) != 0 ? null : instant, (i10 & 8) != 0 ? null : instant2, (i10 & 16) != 0 ? null : adSelectionSignals);
    }
}
