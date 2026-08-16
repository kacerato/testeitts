package androidx.privacysandbox.ads.adservices.common;

import android.adservices.common.FrequencyCapFilters;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import of.EnumC14501a;
import pf.H;

@ExperimentalFeatures.Ext8OptIn
public final class FrequencyCapFilters {
    public static final int AD_EVENT_TYPE_CLICK = 3;
    public static final int AD_EVENT_TYPE_IMPRESSION = 1;
    public static final int AD_EVENT_TYPE_VIEW = 2;
    public static final int AD_EVENT_TYPE_WIN = 0;
    public static final Companion Companion = new Companion(null);
    private final List<KeyedFrequencyCap> keyedFrequencyCapsForClickEvents;
    private final List<KeyedFrequencyCap> keyedFrequencyCapsForImpressionEvents;
    private final List<KeyedFrequencyCap> keyedFrequencyCapsForViewEvents;
    private final List<KeyedFrequencyCap> keyedFrequencyCapsForWinEvents;

    @of.e(EnumC14501a.SOURCE)
    @Retention(RetentionPolicy.SOURCE)
    public @interface AdEventType {
    }

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        private Companion() {
        }
    }

    public FrequencyCapFilters() {
        this(null, null, null, null, 15, null);
    }

    private final List<android.adservices.common.KeyedFrequencyCap> convertToAdServices(List<KeyedFrequencyCap> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<KeyedFrequencyCap> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().convertToAdServices$ads_adservices_release());
        }
        return arrayList;
    }

    public final android.adservices.common.FrequencyCapFilters convertToAdServices$ads_adservices_release() {
        FrequencyCapFilters.Builder keyedFrequencyCapsForWinEvents;
        FrequencyCapFilters.Builder keyedFrequencyCapsForImpressionEvents;
        FrequencyCapFilters.Builder keyedFrequencyCapsForViewEvents;
        FrequencyCapFilters.Builder keyedFrequencyCapsForClickEvents;
        android.adservices.common.FrequencyCapFilters build;
        keyedFrequencyCapsForWinEvents = r.a().setKeyedFrequencyCapsForWinEvents(convertToAdServices(this.keyedFrequencyCapsForWinEvents));
        keyedFrequencyCapsForImpressionEvents = keyedFrequencyCapsForWinEvents.setKeyedFrequencyCapsForImpressionEvents(convertToAdServices(this.keyedFrequencyCapsForImpressionEvents));
        keyedFrequencyCapsForViewEvents = keyedFrequencyCapsForImpressionEvents.setKeyedFrequencyCapsForViewEvents(convertToAdServices(this.keyedFrequencyCapsForViewEvents));
        keyedFrequencyCapsForClickEvents = keyedFrequencyCapsForViewEvents.setKeyedFrequencyCapsForClickEvents(convertToAdServices(this.keyedFrequencyCapsForClickEvents));
        build = keyedFrequencyCapsForClickEvents.build();
        M.o(build, "Builder()\n            .s\u2026   )\n            .build()");
        return build;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FrequencyCapFilters)) {
            return false;
        }
        FrequencyCapFilters frequencyCapFilters = (FrequencyCapFilters) obj;
        return M.g(this.keyedFrequencyCapsForWinEvents, frequencyCapFilters.keyedFrequencyCapsForWinEvents) && M.g(this.keyedFrequencyCapsForImpressionEvents, frequencyCapFilters.keyedFrequencyCapsForImpressionEvents) && M.g(this.keyedFrequencyCapsForViewEvents, frequencyCapFilters.keyedFrequencyCapsForViewEvents) && M.g(this.keyedFrequencyCapsForClickEvents, frequencyCapFilters.keyedFrequencyCapsForClickEvents);
    }

    public final List<KeyedFrequencyCap> getKeyedFrequencyCapsForClickEvents() {
        return this.keyedFrequencyCapsForClickEvents;
    }

    public final List<KeyedFrequencyCap> getKeyedFrequencyCapsForImpressionEvents() {
        return this.keyedFrequencyCapsForImpressionEvents;
    }

    public final List<KeyedFrequencyCap> getKeyedFrequencyCapsForViewEvents() {
        return this.keyedFrequencyCapsForViewEvents;
    }

    public final List<KeyedFrequencyCap> getKeyedFrequencyCapsForWinEvents() {
        return this.keyedFrequencyCapsForWinEvents;
    }

    public int hashCode() {
        return (((((this.keyedFrequencyCapsForWinEvents.hashCode() * 31) + this.keyedFrequencyCapsForImpressionEvents.hashCode()) * 31) + this.keyedFrequencyCapsForViewEvents.hashCode()) * 31) + this.keyedFrequencyCapsForClickEvents.hashCode();
    }

    public String toString() {
        return "FrequencyCapFilters: keyedFrequencyCapsForWinEvents=" + ((Object) this.keyedFrequencyCapsForWinEvents) + ", keyedFrequencyCapsForImpressionEvents=" + ((Object) this.keyedFrequencyCapsForImpressionEvents) + ", keyedFrequencyCapsForViewEvents=" + ((Object) this.keyedFrequencyCapsForViewEvents) + ", keyedFrequencyCapsForClickEvents=" + ((Object) this.keyedFrequencyCapsForClickEvents);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FrequencyCapFilters(List<KeyedFrequencyCap> keyedFrequencyCapsForWinEvents) {
        this(keyedFrequencyCapsForWinEvents, null, null, null, 14, null);
        M.p(keyedFrequencyCapsForWinEvents, "keyedFrequencyCapsForWinEvents");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FrequencyCapFilters(List<KeyedFrequencyCap> keyedFrequencyCapsForWinEvents, List<KeyedFrequencyCap> keyedFrequencyCapsForImpressionEvents) {
        this(keyedFrequencyCapsForWinEvents, keyedFrequencyCapsForImpressionEvents, null, null, 12, null);
        M.p(keyedFrequencyCapsForWinEvents, "keyedFrequencyCapsForWinEvents");
        M.p(keyedFrequencyCapsForImpressionEvents, "keyedFrequencyCapsForImpressionEvents");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FrequencyCapFilters(List<KeyedFrequencyCap> keyedFrequencyCapsForWinEvents, List<KeyedFrequencyCap> keyedFrequencyCapsForImpressionEvents, List<KeyedFrequencyCap> keyedFrequencyCapsForViewEvents) {
        this(keyedFrequencyCapsForWinEvents, keyedFrequencyCapsForImpressionEvents, keyedFrequencyCapsForViewEvents, null, 8, null);
        M.p(keyedFrequencyCapsForWinEvents, "keyedFrequencyCapsForWinEvents");
        M.p(keyedFrequencyCapsForImpressionEvents, "keyedFrequencyCapsForImpressionEvents");
        M.p(keyedFrequencyCapsForViewEvents, "keyedFrequencyCapsForViewEvents");
    }

    public FrequencyCapFilters(List<KeyedFrequencyCap> keyedFrequencyCapsForWinEvents, List<KeyedFrequencyCap> keyedFrequencyCapsForImpressionEvents, List<KeyedFrequencyCap> keyedFrequencyCapsForViewEvents, List<KeyedFrequencyCap> keyedFrequencyCapsForClickEvents) {
        M.p(keyedFrequencyCapsForWinEvents, "keyedFrequencyCapsForWinEvents");
        M.p(keyedFrequencyCapsForImpressionEvents, "keyedFrequencyCapsForImpressionEvents");
        M.p(keyedFrequencyCapsForViewEvents, "keyedFrequencyCapsForViewEvents");
        M.p(keyedFrequencyCapsForClickEvents, "keyedFrequencyCapsForClickEvents");
        this.keyedFrequencyCapsForWinEvents = keyedFrequencyCapsForWinEvents;
        this.keyedFrequencyCapsForImpressionEvents = keyedFrequencyCapsForImpressionEvents;
        this.keyedFrequencyCapsForViewEvents = keyedFrequencyCapsForViewEvents;
        this.keyedFrequencyCapsForClickEvents = keyedFrequencyCapsForClickEvents;
    }

    public FrequencyCapFilters(List list, List list2, List list3, List list4, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? H.J() : list, (i10 & 2) != 0 ? H.J() : list2, (i10 & 4) != 0 ? H.J() : list3, (i10 & 8) != 0 ? H.J() : list4);
    }
}
