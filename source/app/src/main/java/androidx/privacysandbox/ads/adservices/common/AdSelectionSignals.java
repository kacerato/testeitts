package androidx.privacysandbox.ads.adservices.common;

import kotlin.jvm.internal.M;

public final class AdSelectionSignals {
    private final String signals;

    public AdSelectionSignals(String signals) {
        M.p(signals, "signals");
        this.signals = signals;
    }

    public final android.adservices.common.AdSelectionSignals convertToAdServices$ads_adservices_release() {
        android.adservices.common.AdSelectionSignals fromString;
        fromString = android.adservices.common.AdSelectionSignals.fromString(this.signals);
        M.o(fromString, "fromString(signals)");
        return fromString;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdSelectionSignals) {
            return M.g(this.signals, ((AdSelectionSignals) obj).signals);
        }
        return false;
    }

    public final String getSignals() {
        return this.signals;
    }

    public int hashCode() {
        return this.signals.hashCode();
    }

    public String toString() {
        return "AdSelectionSignals: " + this.signals;
    }
}
