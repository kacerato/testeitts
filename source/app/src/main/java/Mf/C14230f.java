package mf;

import com.jme3.bullet.debug.BulletDebugAppState;
import java.util.ArrayList;
import java.util.Collection;
import java.util.logging.Logger;
import p000if.C13702E;

public class C14230f implements BulletDebugAppState.DebugAppStateFilter {

    public static final Logger f96963c = Logger.getLogger(C14230f.class.getName());

    public static final boolean f96964d = false;

    public final boolean f96965a;

    public final Collection<Object> f96966b = new ArrayList(32);

    public C14230f(boolean z10) {
        this.f96965a = z10;
    }

    public void a(Object obj) {
        C13702E.t(obj, "exception");
        if (this.f96966b.contains(obj)) {
            return;
        }
        this.f96966b.add(obj);
    }

    public void b() {
        this.f96966b.clear();
    }

    public int c() {
        return this.f96966b.size();
    }

    public boolean d() {
        return this.f96965a;
    }

    @Override
    public boolean displayObject(Object obj) {
        return this.f96966b.contains(obj) ? !this.f96965a : this.f96965a;
    }

    public Object[] e() {
        Object[] objArr = new Object[c()];
        this.f96966b.toArray(objArr);
        return objArr;
    }

    public void f(Object obj) {
        C13702E.t(obj, "exception");
        this.f96966b.remove(obj);
    }
}
