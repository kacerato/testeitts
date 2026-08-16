package G0;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.C11894a;

@C0.a
public class K implements C11894a.d.f {

    @NonNull
    public static final K f7301c = a().a();

    @Nullable
    public final String f7302b;

    @C0.a
    public static class a {

        @Nullable
        public String f7303a;

        public a() {
        }

        @NonNull
        @C0.a
        public K a() {
            return new K(this.f7303a, null);
        }

        @I2.a
        @NonNull
        @C0.a
        public a b(@Nullable String str) {
            this.f7303a = str;
            return this;
        }

        public a(P p10) {
        }
    }

    public K(String str, Q q10) {
        this.f7302b = str;
    }

    @NonNull
    @C0.a
    public static a a() {
        return new a(null);
    }

    @NonNull
    public final Bundle b() {
        Bundle bundle = new Bundle();
        String str = this.f7302b;
        if (str != null) {
            bundle.putString("api", str);
        }
        return bundle;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof K) {
            return C2601y.b(this.f7302b, ((K) obj).f7302b);
        }
        return false;
    }

    public final int hashCode() {
        return C2601y.c(this.f7302b);
    }
}
