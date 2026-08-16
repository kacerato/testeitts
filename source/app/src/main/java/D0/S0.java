package D0;

import android.app.Dialog;

public final class S0 extends AbstractC2447h0 {

    public final Dialog f4606a;

    public final T0 f4607b;

    public S0(T0 t02, Dialog dialog) {
        this.f4607b = t02;
        this.f4606a = dialog;
    }

    @Override
    public final void a() {
        this.f4607b.f4610c.p();
        if (this.f4606a.isShowing()) {
            this.f4606a.dismiss();
        }
    }
}
