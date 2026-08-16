package p2;

import android.os.IBinder;
import java.util.Iterator;
import java.util.List;

public final class p extends j {

    public final IBinder f103430c;

    public final s f103431d;

    public p(s sVar, IBinder iBinder) {
        this.f103431d = sVar;
        this.f103430c = iBinder;
    }

    @Override
    public final void a() {
        List list;
        List list2;
        this.f103431d.f103433c.f103447m = e.k(this.f103430c);
        t.n(this.f103431d.f103433c);
        this.f103431d.f103433c.f103441g = false;
        list = this.f103431d.f103433c.f103438d;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        list2 = this.f103431d.f103433c.f103438d;
        list2.clear();
    }
}
