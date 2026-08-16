package D0;

import B0.C2318c;
import android.app.Dialog;
import android.app.PendingIntent;
import androidx.annotation.MainThread;
import com.google.android.gms.common.api.GoogleApiActivity;

public final class T0 implements Runnable {

    public final R0 f4609b;

    public final U0 f4610c;

    public T0(U0 u02, R0 r02) {
        this.f4610c = u02;
        this.f4609b = r02;
    }

    @Override
    @MainThread
    public final void run() {
        if (this.f4610c.f4612c) {
            C2318c b10 = this.f4609b.b();
            if (b10.n0()) {
                U0 u02 = this.f4610c;
                u02.f4660b.startActivityForResult(GoogleApiActivity.a(u02.b(), (PendingIntent) G0.A.r(b10.b0()), this.f4609b.a(), false), 1);
                return;
            }
            U0 u03 = this.f4610c;
            if (u03.f4615f.e(u03.b(), b10.n(), null) != null) {
                U0 u04 = this.f4610c;
                u04.f4615f.L(u04.b(), u04.f4660b, b10.n(), 2, this.f4610c);
                return;
            }
            if (b10.n() != 18) {
                this.f4610c.m(b10, this.f4609b.a());
                return;
            }
            U0 u05 = this.f4610c;
            Dialog G10 = u05.f4615f.G(u05.b(), u05);
            U0 u06 = this.f4610c;
            u06.f4615f.H(u06.b().getApplicationContext(), new S0(this, G10));
        }
    }
}
