package androidx.privacysandbox.ads.adservices.common;

import android.adservices.common.AdFilters;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import kotlin.jvm.internal.M;

@ExperimentalFeatures.Ext8OptIn
public final class AdFilters {
    private final FrequencyCapFilters frequencyCapFilters;

    public AdFilters(FrequencyCapFilters frequencyCapFilters) {
        this.frequencyCapFilters = frequencyCapFilters;
    }

    public final android.adservices.common.AdFilters convertToAdServices$ads_adservices_release() {
        AdFilters.Builder frequencyCapFilters;
        android.adservices.common.AdFilters build;
        AdFilters.Builder a10 = j.a();
        FrequencyCapFilters frequencyCapFilters2 = this.frequencyCapFilters;
        frequencyCapFilters = a10.setFrequencyCapFilters(frequencyCapFilters2 != null ? frequencyCapFilters2.convertToAdServices$ads_adservices_release() : null);
        build = frequencyCapFilters.build();
        M.o(build, "Builder()\n            .s\u2026s())\n            .build()");
        return build;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdFilters) {
            return M.g(this.frequencyCapFilters, ((AdFilters) obj).frequencyCapFilters);
        }
        return false;
    }

    public final FrequencyCapFilters getFrequencyCapFilters() {
        return this.frequencyCapFilters;
    }

    public int hashCode() {
        FrequencyCapFilters frequencyCapFilters = this.frequencyCapFilters;
        if (frequencyCapFilters != null) {
            return frequencyCapFilters.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "AdFilters: frequencyCapFilters=" + ((Object) this.frequencyCapFilters);
    }
}
