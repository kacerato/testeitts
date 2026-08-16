package L2;

import android.os.Bundle;
import androidx.annotation.NonNull;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class c {

    @NotNull
    public final Bundle f11550a = new Bundle();

    @NotNull
    public final Bundle a() {
        return this.f11550a;
    }

    public final void b(@NonNull String key, double d10) {
        M.p(key, "key");
        this.f11550a.putDouble(key, d10);
    }

    public final void c(@NonNull String key, long j10) {
        M.p(key, "key");
        this.f11550a.putLong(key, j10);
    }

    public final void d(@NonNull String key, @NonNull Bundle value) {
        M.p(key, "key");
        M.p(value, "value");
        this.f11550a.putBundle(key, value);
    }

    public final void e(@NonNull String key, @NonNull String value) {
        M.p(key, "key");
        M.p(value, "value");
        this.f11550a.putString(key, value);
    }

    public final void f(@NonNull String key, @NonNull Bundle[] value) {
        M.p(key, "key");
        M.p(value, "value");
        this.f11550a.putParcelableArray(key, value);
    }
}
