package gc;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class c {

    public final String f88439a;

    public int f88440b;

    public int f88441c = 0;

    public final List<d> f88442d = new SteppedArrayList();

    public final List<d> f88443e = new SteppedArrayList();

    public final List<d> f88444f = new SteppedArrayList();

    public c(String name) {
        if (name == null || name.isEmpty()) {
            throw new NullPointerException("name can't be null or empty");
        }
        this.f88439a = name;
    }

    public c clone() {
        return new c(this.f88439a);
    }

    public boolean b(String name) {
        if (name == null || name.isEmpty()) {
            throw new NullPointerException("name can't be null or empty");
        }
        return this.f88439a.equals(name);
    }

    public int c() {
        return this.f88441c;
    }

    public String d() {
        return this.f88439a;
    }

    public int e() {
        return this.f88440b;
    }

    public boolean f() {
        return this.f88441c == this.f88440b;
    }

    public void g(int value) {
        this.f88440b = value;
    }

    public void h() {
        this.f88441c = this.f88440b;
    }
}
