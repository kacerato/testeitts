package gc;

import Ic.C2634m;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class C13320a extends C2634m {

    public final String f88430b;

    public boolean f88431c;

    public boolean f88432d = false;

    public final List<C13321b> f88433e = new SteppedArrayList();

    public final List<C13321b> f88434g = new SteppedArrayList();

    public final List<C13321b> f88435i = new SteppedArrayList();

    public C13320a(String name) {
        if (name == null || name.isEmpty()) {
            throw new NullPointerException("name can't be null or empty");
        }
        this.f88430b = name;
    }

    public C13320a clone() {
        return new C13320a(this.f88430b);
    }

    public boolean f(String name) {
        if (name == null || name.isEmpty()) {
            throw new NullPointerException("name can't be null or empty");
        }
        return this.f88430b.equals(name);
    }

    public String getName() {
        return this.f88430b;
    }

    public boolean h() {
        return this.f88432d;
    }

    public boolean i() {
        return this.f88431c;
    }

    public boolean j() {
        return this.f88432d == this.f88431c;
    }

    public void k(boolean value) {
        this.f88431c = value;
    }

    public void l() {
        this.f88432d = this.f88431c;
    }
}
