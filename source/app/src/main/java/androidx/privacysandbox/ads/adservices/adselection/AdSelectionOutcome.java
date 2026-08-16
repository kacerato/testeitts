package androidx.privacysandbox.ads.adservices.adselection;

import android.net.Uri;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import kotlin.jvm.internal.C14026x;

public final class AdSelectionOutcome {
    public static final Companion Companion = new Companion(null);
    public static final AdSelectionOutcome NO_OUTCOME;
    private final long adSelectionId;
    private final Uri renderUri;

    @ExperimentalFeatures.Ext10OptIn
    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @ExperimentalFeatures.Ext10OptIn
        public static void getNO_OUTCOME$annotations() {
        }

        private Companion() {
        }
    }

    static {
        Uri EMPTY = Uri.EMPTY;
        kotlin.jvm.internal.M.o(EMPTY, "EMPTY");
        NO_OUTCOME = new AdSelectionOutcome(0L, EMPTY);
    }

    public AdSelectionOutcome(long j10, Uri renderUri) {
        kotlin.jvm.internal.M.p(renderUri, "renderUri");
        this.adSelectionId = j10;
        this.renderUri = renderUri;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdSelectionOutcome)) {
            return false;
        }
        AdSelectionOutcome adSelectionOutcome = (AdSelectionOutcome) obj;
        return this.adSelectionId == adSelectionOutcome.adSelectionId && kotlin.jvm.internal.M.g(this.renderUri, adSelectionOutcome.renderUri);
    }

    public final long getAdSelectionId() {
        return this.adSelectionId;
    }

    public final Uri getRenderUri() {
        return this.renderUri;
    }

    @ExperimentalFeatures.Ext10OptIn
    public final boolean hasOutcome() {
        return !kotlin.jvm.internal.M.g(this, NO_OUTCOME);
    }

    public int hashCode() {
        return (Long.hashCode(this.adSelectionId) * 31) + this.renderUri.hashCode();
    }

    public String toString() {
        return "AdSelectionOutcome: adSelectionId=" + this.adSelectionId + ", renderUri=" + ((Object) this.renderUri);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AdSelectionOutcome(android.adservices.adselection.AdSelectionOutcome response) {
        this(r0, r4);
        long adSelectionId;
        Uri renderUri;
        kotlin.jvm.internal.M.p(response, "response");
        adSelectionId = response.getAdSelectionId();
        renderUri = response.getRenderUri();
        kotlin.jvm.internal.M.o(renderUri, "response.renderUri");
    }
}
