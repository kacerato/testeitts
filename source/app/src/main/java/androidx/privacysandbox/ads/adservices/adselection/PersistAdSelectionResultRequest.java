package androidx.privacysandbox.ads.adservices.adselection;

import android.adservices.adselection.PersistAdSelectionResultRequest;
import androidx.privacysandbox.ads.adservices.common.AdTechIdentifier;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import java.util.Arrays;
import kotlin.jvm.internal.C14026x;

@ExperimentalFeatures.Ext10OptIn
public final class PersistAdSelectionResultRequest {
    private final long adSelectionId;
    private final byte[] adSelectionResult;
    private final AdTechIdentifier seller;

    public PersistAdSelectionResultRequest(long j10) {
        this(j10, null, null, 6, null);
    }

    public final android.adservices.adselection.PersistAdSelectionResultRequest convertToAdServices$ads_adservices_release() {
        PersistAdSelectionResultRequest.Builder adSelectionId;
        PersistAdSelectionResultRequest.Builder seller;
        PersistAdSelectionResultRequest.Builder adSelectionResult;
        android.adservices.adselection.PersistAdSelectionResultRequest build;
        adSelectionId = N.a().setAdSelectionId(this.adSelectionId);
        AdTechIdentifier adTechIdentifier = this.seller;
        seller = adSelectionId.setSeller(adTechIdentifier != null ? adTechIdentifier.convertToAdServices$ads_adservices_release() : null);
        adSelectionResult = seller.setAdSelectionResult(this.adSelectionResult);
        build = adSelectionResult.build();
        kotlin.jvm.internal.M.o(build, "Builder()\n            .s\u2026ult)\n            .build()");
        return build;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PersistAdSelectionResultRequest)) {
            return false;
        }
        PersistAdSelectionResultRequest persistAdSelectionResultRequest = (PersistAdSelectionResultRequest) obj;
        return this.adSelectionId == persistAdSelectionResultRequest.adSelectionId && kotlin.jvm.internal.M.g(this.seller, persistAdSelectionResultRequest.seller) && Arrays.equals(this.adSelectionResult, persistAdSelectionResultRequest.adSelectionResult);
    }

    public final long getAdSelectionId() {
        return this.adSelectionId;
    }

    public final byte[] getAdSelectionResult() {
        return this.adSelectionResult;
    }

    public final AdTechIdentifier getSeller() {
        return this.seller;
    }

    public int hashCode() {
        int hashCode = Long.hashCode(this.adSelectionId) * 31;
        AdTechIdentifier adTechIdentifier = this.seller;
        int hashCode2 = (hashCode + (adTechIdentifier != null ? adTechIdentifier.hashCode() : 0)) * 31;
        byte[] bArr = this.adSelectionResult;
        return hashCode2 + (bArr != null ? bArr.hashCode() : 0);
    }

    public String toString() {
        return "PersistAdSelectionResultRequest: adSelectionId=" + this.adSelectionId + ", seller=" + ((Object) this.seller) + ", adSelectionResult=" + ((Object) this.adSelectionResult);
    }

    public PersistAdSelectionResultRequest(long j10, AdTechIdentifier adTechIdentifier) {
        this(j10, adTechIdentifier, null, 4, null);
    }

    public PersistAdSelectionResultRequest(long j10, AdTechIdentifier adTechIdentifier, byte[] bArr) {
        this.adSelectionId = j10;
        this.seller = adTechIdentifier;
        this.adSelectionResult = bArr;
    }

    public PersistAdSelectionResultRequest(long j10, AdTechIdentifier adTechIdentifier, byte[] bArr, int i10, C14026x c14026x) {
        this(j10, (i10 & 2) != 0 ? null : adTechIdentifier, (i10 & 4) != 0 ? null : bArr);
    }
}
