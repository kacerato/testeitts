package s8;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class C15241e {

    public final String f109292a;

    public final Class f109293b;

    public final List<String> f109294c = new SteppedArrayList();

    public C15241e(String name, Class cls) {
        this.f109292a = name;
        this.f109293b = cls;
    }

    public void a(String s10) {
        this.f109294c.add(s10);
    }

    public Class b() {
        return this.f109293b;
    }

    public String c() {
        return this.f109292a;
    }

    public List<String> d() {
        return this.f109294c;
    }
}
