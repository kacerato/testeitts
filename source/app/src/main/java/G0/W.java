package G0;

import D0.InterfaceC2448i;
import android.content.Intent;

public final class W extends X {

    public final Intent f7340b;

    public final InterfaceC2448i f7341c;

    public W(Intent intent, InterfaceC2448i interfaceC2448i, int i10) {
        this.f7340b = intent;
        this.f7341c = interfaceC2448i;
    }

    @Override
    public final void a() {
        Intent intent = this.f7340b;
        if (intent != null) {
            this.f7341c.startActivityForResult(intent, 2);
        }
    }
}
