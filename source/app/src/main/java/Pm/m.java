package Pm;

import java.util.List;
import java.util.Map;

public class m implements Vm.b {

    public final List<Xm.a> f21804a;

    public final Map<String, Um.s> f21805b;

    public m(List<Xm.a> list, Map<String, Um.s> map) {
        this.f21804a = list;
        this.f21805b = map;
    }

    @Override
    public List<Xm.a> a() {
        return this.f21804a;
    }

    @Override
    public Um.s b(String str) {
        return this.f21805b.get(str);
    }
}
