package H3;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class c {

    public String f8003a;

    public final List<c> f8004b = new SteppedArrayList();

    public boolean f8005c = false;

    public c() {
    }

    public void a(c file) {
        this.f8004b.add(file);
    }

    public c b(int x10) {
        return this.f8004b.get(x10);
    }

    public int c() {
        return this.f8004b.size();
    }

    public String d() {
        return this.f8003a;
    }

    public boolean e() {
        return this.f8005c;
    }

    public void f(boolean directory) {
        this.f8005c = directory;
    }

    public void g(String name) {
        this.f8003a = name;
    }

    public c(String name) {
        this.f8003a = name;
    }
}
