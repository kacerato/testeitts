package dm;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class h extends f {

    public List<g> f84867b;

    public h(g gVar) {
        this.f84867b = Collections.singletonList(gVar);
    }

    @Override
    public byte[] a(Qk.p pVar, byte[] bArr) {
        List<byte[]> c10 = c(pVar, bArr);
        return c10.size() > 1 ? q.g(pVar, c10.iterator()) : c10.get(0);
    }

    @Override
    public byte[] b(Qk.p pVar, byte[] bArr) {
        List<byte[]> c10 = c(pVar, bArr);
        if (c10.size() <= 1) {
            return c10.get(0);
        }
        ArrayList arrayList = new ArrayList(c10.size());
        for (int i10 = 0; i10 != arrayList.size(); i10++) {
            arrayList.add(c10.get(i10));
        }
        return q.g(pVar, arrayList.iterator());
    }

    public List<byte[]> c(Qk.p pVar, byte[] bArr) {
        return q.a(pVar, this.f84867b, bArr);
    }

    public int d() {
        return this.f84867b.size();
    }

    public h(List<g> list) {
        ArrayList arrayList = new ArrayList(list.size());
        this.f84867b = arrayList;
        arrayList.addAll(list);
    }

    public h(g... gVarArr) {
        ArrayList arrayList = new ArrayList(gVarArr.length);
        this.f84867b = arrayList;
        arrayList.addAll(Arrays.asList(gVarArr));
    }
}
