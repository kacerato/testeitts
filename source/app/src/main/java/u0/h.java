package u0;

import G0.C2601y;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.C11894a;

@Deprecated
public final class h implements C11894a.d.f {

    public static final h f118316e = new h(new g());

    public final String f118317b = null;

    public final boolean f118318c;

    @Nullable
    public final String f118319d;

    public h(g gVar) {
        this.f118318c = gVar.f118314a.booleanValue();
        this.f118319d = gVar.f118315b;
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString("consumer_package", null);
        bundle.putBoolean("force_save_dialog", this.f118318c);
        bundle.putString("log_session_id", this.f118319d);
        return bundle;
    }

    public final boolean b() {
        return this.f118318c;
    }

    public final String c() {
        return this.f118319d;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        String str = hVar.f118317b;
        return C2601y.b(null, null) && this.f118318c == hVar.f118318c && C2601y.b(this.f118319d, hVar.f118319d);
    }

    public final int hashCode() {
        return C2601y.c(null, Boolean.valueOf(this.f118318c), this.f118319d);
    }
}
