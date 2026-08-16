package androidx.privacysandbox.ads.adservices.adselection;

import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import java.util.Arrays;
import kotlin.jvm.internal.C14026x;

@ExperimentalFeatures.Ext10OptIn
public final class GetAdSelectionDataOutcome {
    private final byte[] adSelectionData;
    private final long adSelectionId;

    public GetAdSelectionDataOutcome(long j10) {
        this(j10, null, 2, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetAdSelectionDataOutcome)) {
            return false;
        }
        GetAdSelectionDataOutcome getAdSelectionDataOutcome = (GetAdSelectionDataOutcome) obj;
        return this.adSelectionId == getAdSelectionDataOutcome.adSelectionId && Arrays.equals(this.adSelectionData, getAdSelectionDataOutcome.adSelectionData);
    }

    public final byte[] getAdSelectionData() {
        return this.adSelectionData;
    }

    public final long getAdSelectionId() {
        return this.adSelectionId;
    }

    public int hashCode() {
        int hashCode = Long.hashCode(this.adSelectionId) * 31;
        byte[] bArr = this.adSelectionData;
        return hashCode + (bArr != null ? bArr.hashCode() : 0);
    }

    public String toString() {
        return "GetAdSelectionDataOutcome: adSelectionId=" + this.adSelectionId + ", adSelectionData=" + ((Object) this.adSelectionData);
    }

    public GetAdSelectionDataOutcome(long j10, byte[] bArr) {
        this.adSelectionId = j10;
        this.adSelectionData = bArr;
    }

    public GetAdSelectionDataOutcome(long j10, byte[] bArr, int i10, C14026x c14026x) {
        this(j10, (i10 & 2) != 0 ? null : bArr);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public GetAdSelectionDataOutcome(android.adservices.adselection.GetAdSelectionDataOutcome response) {
        this(r0, r3);
        long adSelectionId;
        byte[] adSelectionData;
        kotlin.jvm.internal.M.p(response, "response");
        adSelectionId = response.getAdSelectionId();
        adSelectionData = response.getAdSelectionData();
    }
}
