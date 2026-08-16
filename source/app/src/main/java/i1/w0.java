package i1;

import android.app.Activity;
import androidx.annotation.Nullable;
import u2.C15569d;
import u2.InterfaceC15568c;

public final class w0 implements InterfaceC15568c {

    public final C13564n f91356a;

    public final K0 f91357b;

    public final C f91358c;

    public w0(C13564n c13564n, K0 k02, C c10) {
        this.f91356a = c13564n;
        this.f91357b = k02;
        this.f91358c = c10;
    }

    @Override
    public final int a() {
        return this.f91356a.a();
    }

    @Override
    public final boolean b() {
        return this.f91358c.c();
    }

    @Override
    public final void c(@Nullable Activity activity, C15569d c15569d, InterfaceC15568c.InterfaceC2023c interfaceC2023c, InterfaceC15568c.b bVar) {
        this.f91357b.c(activity, c15569d, interfaceC2023c, bVar);
    }

    @Override
    public final void reset() {
        this.f91358c.b(null);
        this.f91356a.d();
    }
}
