package d8;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class h {

    public SteppedArrayList f84389a;

    public List f84390b;

    public a f84391c;

    public enum a {
        SteppedArrayList,
        List
    }

    public h(SteppedArrayList arrayList) {
        this.f84389a = arrayList;
        this.f84391c = a.SteppedArrayList;
    }

    public Object a(int idx) {
        a aVar = this.f84391c;
        if (aVar == a.SteppedArrayList) {
            return this.f84389a.get(idx);
        }
        if (aVar == a.List) {
            return this.f84390b.get(idx);
        }
        return null;
    }

    public void b(int idx, Object value) {
        a aVar = this.f84391c;
        if (aVar == a.SteppedArrayList) {
            this.f84389a.set(idx, value);
        } else if (aVar == a.List) {
            this.f84390b.set(idx, value);
        }
    }

    public int c() {
        a aVar = this.f84391c;
        if (aVar == a.SteppedArrayList) {
            return this.f84389a.size();
        }
        if (aVar == a.List) {
            return this.f84390b.size();
        }
        return 0;
    }

    public h(List list) {
        this.f84390b = list;
        this.f84391c = a.List;
    }
}
