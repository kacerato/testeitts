package u0;

import G0.C2601y;
import G0.F;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.C11894a;

@F
@C0.a
public final class C15561c implements C11894a.d.f {

    @NonNull
    public static final C15561c f117987c = new C15561c(new Bundle(), null);

    public final Bundle f117988b;

    public C15561c(Bundle bundle, j jVar) {
        this.f117988b = bundle;
    }

    @NonNull
    public final Bundle a() {
        return new Bundle(this.f117988b);
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C15561c) {
            return C2601y.a(this.f117988b, ((C15561c) obj).f117988b);
        }
        return false;
    }

    public final int hashCode() {
        return C2601y.c(this.f117988b);
    }
}
