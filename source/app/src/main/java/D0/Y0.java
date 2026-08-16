package D0;

import B0.C2318c;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.C11894a;

public final class Y0 implements AbstractC11908l.b, AbstractC11908l.c {

    public final C11894a f4621e;

    public final boolean f4622f;

    @Nullable
    public Z0 f4623g;

    public Y0(C11894a c11894a, boolean z10) {
        this.f4621e = c11894a;
        this.f4622f = z10;
    }

    public final void a(Z0 z02) {
        this.f4623g = z02;
    }

    public final Z0 b() {
        G0.A.s(this.f4623g, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client.");
        return this.f4623g;
    }

    @Override
    public final void h(@Nullable Bundle bundle) {
        b().h(bundle);
    }

    @Override
    public final void k(int i10) {
        b().k(i10);
    }

    @Override
    public final void t(@NonNull C2318c c2318c) {
        b().l0(c2318c, this.f4621e, this.f4622f);
    }
}
