package dm;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class t {

    public static final Comparator<byte[]> f84887b = new C12968b();

    public final LinkedList<byte[]> f84888a = new LinkedList<>();

    public void a(byte[] bArr) {
        if (this.f84888a.size() == 0 || f84887b.compare(bArr, this.f84888a.get(0)) < 0) {
            this.f84888a.addFirst(bArr);
            return;
        }
        int i10 = 1;
        while (i10 < this.f84888a.size() && f84887b.compare(this.f84888a.get(i10), bArr) <= 0) {
            i10++;
        }
        if (i10 == this.f84888a.size()) {
            this.f84888a.add(bArr);
        } else {
            this.f84888a.add(i10, bArr);
        }
    }

    public byte[] b() {
        return this.f84888a.getFirst();
    }

    public int c() {
        return this.f84888a.size();
    }

    public List<byte[]> d() {
        return new ArrayList(this.f84888a);
    }
}
