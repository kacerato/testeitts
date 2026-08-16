package G0;

import B0.C2318c;
import android.app.PendingIntent;
import android.os.Bundle;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;

public abstract class AbstractC2588r0 extends F0 {

    public final int f7479d;

    @Nullable
    public final Bundle f7480e;

    public final AbstractC2564f f7481f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @BinderThread
    public AbstractC2588r0(AbstractC2564f abstractC2564f, @Nullable int i10, Bundle bundle) {
        super(abstractC2564f, Boolean.TRUE);
        this.f7481f = abstractC2564f;
        this.f7479d = i10;
        this.f7480e = bundle;
    }

    @Override
    public final void a(Object obj) {
        if (this.f7479d != 0) {
            this.f7481f.r0(1, null);
            Bundle bundle = this.f7480e;
            f(new C2318c(this.f7479d, bundle != null ? (PendingIntent) bundle.getParcelable(AbstractC2564f.f7366J) : null));
        } else {
            if (g()) {
                return;
            }
            this.f7481f.r0(1, null);
            f(new C2318c(8, null));
        }
    }

    @Override
    public final void b() {
    }

    public abstract void f(C2318c c2318c);

    public abstract boolean g();
}
