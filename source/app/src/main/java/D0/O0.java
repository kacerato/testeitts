package D0;

import B0.C2318c;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.AbstractC11908l;

public final class O0 implements AbstractC11908l.c {

    public final int f4588e;

    public final AbstractC11908l f4589f;

    @Nullable
    public final AbstractC11908l.c f4590g;

    public final P0 f4591h;

    public O0(P0 p02, int i10, @Nullable AbstractC11908l abstractC11908l, AbstractC11908l.c cVar) {
        this.f4591h = p02;
        this.f4588e = i10;
        this.f4589f = abstractC11908l;
        this.f4590g = cVar;
    }

    @Override
    public final void t(@NonNull C2318c c2318c) {
        Log.d("AutoManageHelper", "beginFailureResolution for ".concat(String.valueOf(c2318c)));
        this.f4591h.t(c2318c, this.f4588e);
    }
}
