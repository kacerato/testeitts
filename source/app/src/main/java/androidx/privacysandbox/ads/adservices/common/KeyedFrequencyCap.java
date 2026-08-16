package androidx.privacysandbox.ads.adservices.common;

import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import java.time.Duration;
import kotlin.jvm.internal.M;

@ExperimentalFeatures.Ext8OptIn
public final class KeyedFrequencyCap {
    private final int adCounterKey;
    private final Duration interval;
    private final int maxCount;

    public KeyedFrequencyCap(int i10, int i11, Duration interval) {
        M.p(interval, "interval");
        this.adCounterKey = i10;
        this.maxCount = i11;
        this.interval = interval;
    }

    public final android.adservices.common.KeyedFrequencyCap convertToAdServices$ads_adservices_release() {
        android.adservices.common.KeyedFrequencyCap build;
        u.a();
        build = t.a(this.adCounterKey, this.maxCount, this.interval).build();
        M.o(build, "Builder(adCounterKey, ma\u2026val)\n            .build()");
        return build;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeyedFrequencyCap)) {
            return false;
        }
        KeyedFrequencyCap keyedFrequencyCap = (KeyedFrequencyCap) obj;
        return this.adCounterKey == keyedFrequencyCap.adCounterKey && this.maxCount == keyedFrequencyCap.maxCount && M.g(this.interval, keyedFrequencyCap.interval);
    }

    public final int getAdCounterKey() {
        return this.adCounterKey;
    }

    public final Duration getInterval() {
        return this.interval;
    }

    public final int getMaxCount() {
        return this.maxCount;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.adCounterKey) * 31) + Integer.hashCode(this.maxCount)) * 31) + this.interval.hashCode();
    }

    public String toString() {
        return "KeyedFrequencyCap: adCounterKey=" + this.adCounterKey + ", maxCount=" + this.maxCount + ", interval=" + ((Object) this.interval);
    }
}
