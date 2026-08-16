package z0;

import android.content.Intent;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.Status;
import u0.C15559a;
import y0.InterfaceC16130a;

public final class C16223h implements InterfaceC16130a {
    public static final GoogleSignInOptions f(AbstractC11908l abstractC11908l) {
        return ((C16224i) abstractC11908l.o(C15559a.f117980f)).v0();
    }

    @Override
    public final com.google.android.gms.common.api.o<y0.d> a(AbstractC11908l abstractC11908l) {
        return C16232q.d(abstractC11908l, abstractC11908l.q(), f(abstractC11908l), false);
    }

    @Override
    public final Intent b(AbstractC11908l abstractC11908l) {
        return C16232q.a(abstractC11908l.q(), f(abstractC11908l));
    }

    @Override
    @Nullable
    public final y0.d c(Intent intent) {
        return C16232q.g(intent);
    }

    @Override
    public final com.google.android.gms.common.api.p<Status> d(AbstractC11908l abstractC11908l) {
        return C16232q.f(abstractC11908l, abstractC11908l.q(), false);
    }

    @Override
    public final com.google.android.gms.common.api.p<Status> e(AbstractC11908l abstractC11908l) {
        return C16232q.e(abstractC11908l, abstractC11908l.q(), false);
    }
}
