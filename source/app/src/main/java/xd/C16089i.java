package xd;

import java.util.ArrayList;
import java.util.List;

public class C16089i {

    public final List<C16088h> f128111a = new ArrayList(4);

    public List<C16088h> a() {
        return this.f128111a;
    }

    public boolean b() {
        if (this.f128111a.isEmpty()) {
            return false;
        }
        return this.f128111a.get(0).a();
    }

    public boolean c() {
        if (this.f128111a.isEmpty()) {
            return false;
        }
        return this.f128111a.get(0).b();
    }

    public boolean d() {
        if (this.f128111a.isEmpty()) {
            return false;
        }
        return this.f128111a.get(0).c();
    }
}
