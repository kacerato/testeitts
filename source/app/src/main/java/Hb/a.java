package Hb;

import JAVARuntime.GizmoElement;
import java.lang.ref.WeakReference;

public class a {

    public WeakReference<GizmoElement> f8325a;

    public a(GizmoElement gizmoObject) {
        this.f8325a = null;
        this.f8325a = new WeakReference<>(gizmoObject);
    }

    public GizmoElement a() {
        return this.f8325a.get();
    }

    public boolean b() {
        return this.f8325a.get() != null;
    }

    public boolean c() {
        return this.f8325a.get() != null;
    }
}
