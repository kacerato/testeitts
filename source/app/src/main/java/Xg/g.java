package Xg;

import java.util.ArrayList;
import java.util.List;

public final class g implements t {

    public String f28892a;

    public List<q> f28893b = new ArrayList();

    public g(String name) {
        this.f28892a = name;
    }

    public void a(q face) {
        this.f28893b.add(face);
    }

    @Override
    public q b(int index) {
        return this.f28893b.get(index);
    }

    @Override
    public String getName() {
        return this.f28892a;
    }

    @Override
    public int getNumFaces() {
        return this.f28893b.size();
    }

    public String toString() {
        return "ObjGroup[name=" + this.f28892a + ",#faces=" + this.f28893b.size() + "]";
    }
}
