package O2;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.LinkedHashMap;
import java.util.Map;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14427o(message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration.")
public final class b {

    @Nullable
    public FirebaseAnalytics.a f16456a;

    @Nullable
    public FirebaseAnalytics.a f16457b;

    @NotNull
    public final Map<FirebaseAnalytics.b, FirebaseAnalytics.a> a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        FirebaseAnalytics.a aVar = this.f16456a;
        if (aVar != null) {
            linkedHashMap.put(FirebaseAnalytics.b.AD_STORAGE, aVar);
        }
        FirebaseAnalytics.a aVar2 = this.f16457b;
        if (aVar2 != null) {
            linkedHashMap.put(FirebaseAnalytics.b.ANALYTICS_STORAGE, aVar2);
        }
        return linkedHashMap;
    }

    @androidx.annotation.Nullable
    public final FirebaseAnalytics.a b() {
        return this.f16456a;
    }

    @androidx.annotation.Nullable
    public final FirebaseAnalytics.a c() {
        return this.f16457b;
    }

    public final void d(@Nullable FirebaseAnalytics.a aVar) {
        this.f16456a = aVar;
    }

    public final void e(@Nullable FirebaseAnalytics.a aVar) {
        this.f16457b = aVar;
    }
}
