package o6;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.JavaComponent.JavaComponent;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class i {

    public String f98589a;

    public int f98590b = 0;

    public final List<f> f98591c = new SteppedArrayList();

    public final Map<Object, f> f98592d = new HashMap();

    public boolean f98593e = false;

    public long f98594f = 0;

    public int f98595g = 0;

    public i(String stackPath, int depth) {
        m(stackPath, depth);
    }

    public static String d(Component component) {
        String className;
        if (component == null) {
            return "Unknown";
        }
        if ((component instanceof JavaComponent) && (className = ((JavaComponent) component).getClassName()) != null && !className.isEmpty()) {
            return className;
        }
        Class<?> cls = component.getClass();
        String simpleName = cls.getSimpleName();
        return simpleName.length() == 0 ? cls.getName() : simpleName;
    }

    public static Object n(Component component) {
        String className;
        if (component == null) {
            return null;
        }
        return (!(component instanceof JavaComponent) || (className = ((JavaComponent) component).getClassName()) == null || className.isEmpty()) ? component.getClass() : className;
    }

    public synchronized void a(Component component, int amount) {
        try {
            Object n10 = n(component);
            if (n10 != null && amount > 0) {
                f fVar = this.f98592d.get(n10);
                if (fVar == null) {
                    fVar = h.b(d(component), n10);
                    this.f98592d.put(n10, fVar);
                    this.f98591c.add(fVar);
                }
                fVar.a(amount);
                this.f98595g += amount;
            }
        } finally {
        }
    }

    public synchronized void b(Component component, long elapsedNanos) {
        try {
            Object n10 = n(component);
            if (n10 != null && elapsedNanos > 0) {
                f fVar = this.f98592d.get(n10);
                if (fVar == null) {
                    fVar = h.b(d(component), n10);
                    this.f98592d.put(n10, fVar);
                    this.f98591c.add(fVar);
                }
                fVar.b(elapsedNanos);
                this.f98594f += elapsedNanos;
            }
        } finally {
        }
    }

    public void c(StringBuilder builder, String tab) {
        builder.append(tab);
        builder.append(this.f98589a);
        builder.append(": ");
        builder.append(h());
        builder.append(" ms");
    }

    public int e() {
        return this.f98590b;
    }

    public String f() {
        return this.f98589a;
    }

    public synchronized int g() {
        return this.f98595g;
    }

    public synchronized double h() {
        return this.f98594f / 1000000.0d;
    }

    public boolean i() {
        return this.f98593e;
    }

    public synchronized f j(int i10) {
        return this.f98591c.get(i10);
    }

    public synchronized int k() {
        return this.f98591c.size();
    }

    public synchronized void l() {
        for (int i10 = 0; i10 < this.f98591c.size(); i10++) {
            try {
                f fVar = this.f98591c.get(i10);
                fVar.h();
                h.c(fVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f98591c.clear();
        this.f98592d.clear();
        this.f98594f = 0L;
        this.f98595g = 0;
    }

    public void m(String stackPath, int depth) {
        this.f98589a = stackPath;
        this.f98590b = depth;
        l();
        this.f98593e = false;
    }

    public void o(boolean UIOpen) {
        this.f98593e = UIOpen;
    }
}
