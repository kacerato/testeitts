package u0;

import G0.C2570i;
import android.content.Context;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.C11894a;
import java.util.Collections;
import java.util.List;
import z0.C16224i;

public final class f extends C11894a.AbstractC0948a {
    @Override
    public final List a(@Nullable Object obj) {
        GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
        return googleSignInOptions == null ? Collections.emptyList() : googleSignInOptions.n0();
    }

    @Override
    public final C11894a.f d(Context context, Looper looper, C2570i c2570i, @Nullable Object obj, AbstractC11908l.b bVar, AbstractC11908l.c cVar) {
        return new C16224i(context, looper, c2570i, (GoogleSignInOptions) obj, bVar, cVar);
    }
}
