package M9;

import java.lang.ref.WeakReference;
import java.util.List;

public class h {

    public final g f14823a;

    public final WeakReference<b> f14824b;

    public final Class f14825c;

    public List<h> f14826d;

    public int f14827e;

    public h(g owner, b listener, Class listenerClass, List<h> ownerList, int indexInOwnerList) {
        this.f14823a = owner;
        this.f14824b = new WeakReference<>(listener);
        this.f14825c = listenerClass;
        this.f14826d = ownerList;
        this.f14827e = indexInOwnerList;
    }
}
