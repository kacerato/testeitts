package yb;

import java.lang.ref.WeakReference;
import ub.g;

public class C16166c {

    public WeakReference<g> f130167a;

    public final String f130168b;

    public C16166c(g texture, String project) {
        this.f130167a = null;
        this.f130167a = new WeakReference<>(texture);
        this.f130168b = project;
    }

    public boolean a() {
        return this.f130167a.get() != null;
    }

    public boolean b() {
        return this.f130167a.get() != null;
    }
}
