package M0;

import D0.C2467s;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import java.util.concurrent.atomic.AtomicReference;
import v1.C15791l;

public final class x extends BinderC2813b {

    public final AtomicReference f14485e;

    public final C15791l f14486f;

    public final L0.a f14487g;

    public final B f14488h;

    public x(B b10, AtomicReference atomicReference, C15791l c15791l, L0.a aVar) {
        this.f14488h = b10;
        this.f14485e = atomicReference;
        this.f14486f = c15791l;
        this.f14487g = aVar;
    }

    @Override
    public final void K0(Status status, @Nullable L0.g gVar) {
        if (gVar != null) {
            this.f14485e.set(gVar);
        }
        C2467s.d(status, null, this.f14486f);
        if (!status.x0() || (gVar != null && gVar.b0())) {
            this.f14488h.R(com.google.android.gms.common.api.internal.g.c(this.f14487g, L0.a.class.getSimpleName()), 27306);
        }
    }
}
