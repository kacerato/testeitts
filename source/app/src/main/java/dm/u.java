package dm;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class u {

    public static final Comparator<byte[]> f84889b = new C12968b();

    public final LinkedList<s> f84890a = new LinkedList<>();

    public void a(s sVar) {
        if (this.f84890a.size() == 0 || f84889b.compare(sVar.f84886b, this.f84890a.get(0).f84886b) < 0) {
            this.f84890a.addFirst(sVar);
            return;
        }
        int i10 = 1;
        while (i10 < this.f84890a.size() && f84889b.compare(this.f84890a.get(i10).f84886b, sVar.f84886b) <= 0) {
            i10++;
        }
        if (i10 == this.f84890a.size()) {
            this.f84890a.add(sVar);
        } else {
            this.f84890a.add(i10, sVar);
        }
    }

    public s b() {
        return this.f84890a.getFirst();
    }

    public int c() {
        return this.f84890a.size();
    }

    public List<s> d() {
        return new ArrayList(this.f84890a);
    }
}
