package G0;

import B0.C2318c;
import android.os.Bundle;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;

public final class J0 extends AbstractC2588r0 {

    public final AbstractC2564f f7300g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @BinderThread
    public J0(AbstractC2564f abstractC2564f, @Nullable int i10, Bundle bundle) {
        super(abstractC2564f, i10, bundle);
        this.f7300g = abstractC2564f;
    }

    @Override
    public final void f(C2318c c2318c) {
        if (this.f7300g.A() && AbstractC2564f.q0(this.f7300g)) {
            AbstractC2564f.m0(this.f7300g, 16);
        } else {
            this.f7300g.f7391r.b(c2318c);
            this.f7300g.U(c2318c);
        }
    }

    @Override
    public final boolean g() {
        this.f7300g.f7391r.b(C2318c.f1201E);
        return true;
    }
}
