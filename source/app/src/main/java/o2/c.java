package O2;

import android.os.Bundle;
import androidx.annotation.NonNull;
import kotlin.jvm.internal.M;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;

@InterfaceC14427o(message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration.")
public final class c {

    @NotNull
    public final Bundle f16458a = new Bundle();

    @NotNull
    public final Bundle a() {
        return this.f16458a;
    }

    @InterfaceC14427o(message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration.")
    public final void b(@NonNull String key, double d10) {
        M.p(key, "key");
        this.f16458a.putDouble(key, d10);
    }

    @InterfaceC14427o(message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration.")
    public final void c(@NonNull String key, long j10) {
        M.p(key, "key");
        this.f16458a.putLong(key, j10);
    }

    @InterfaceC14427o(message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration.")
    public final void d(@NonNull String key, @NonNull Bundle value) {
        M.p(key, "key");
        M.p(value, "value");
        this.f16458a.putBundle(key, value);
    }

    @InterfaceC14427o(message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration.")
    public final void e(@NonNull String key, @NonNull String value) {
        M.p(key, "key");
        M.p(value, "value");
        this.f16458a.putString(key, value);
    }

    @InterfaceC14427o(message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration.")
    public final void f(@NonNull String key, @NonNull Bundle[] value) {
        M.p(key, "key");
        M.p(value, "value");
        this.f16458a.putParcelableArray(key, value);
    }
}
