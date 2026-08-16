package W0;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;

public final class l implements p {

    public final FrameLayout f27214a;

    public final LayoutInflater f27215b;

    public final ViewGroup f27216c;

    public final Bundle f27217d;

    public final a f27218e;

    public l(a aVar, FrameLayout frameLayout, LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f27218e = aVar;
        this.f27214a = frameLayout;
        this.f27215b = layoutInflater;
        this.f27216c = viewGroup;
        this.f27217d = bundle;
    }

    @Override
    public final int c() {
        return 2;
    }

    @Override
    public final void d(e eVar) {
        e eVar2;
        this.f27214a.removeAllViews();
        eVar2 = this.f27218e.f27200a;
        this.f27214a.addView(eVar2.g(this.f27215b, this.f27216c, this.f27217d));
    }
}
