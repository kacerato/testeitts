package ri;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.bouncycastle.util.StoreException;
import org.bouncycastle.util.r;
import org.bouncycastle.util.t;

public class h implements t {

    public final Map f109048b;

    public h(List list) {
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C15183b c15183b = (C15183b) it.next();
            hashMap.put(c15183b.b(), c15183b);
        }
        this.f109048b = Collections.unmodifiableMap(hashMap);
    }

    @Override
    public Collection a(r rVar) throws StoreException {
        if (rVar == null) {
            return this.f109048b.values();
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : this.f109048b.values()) {
            if (rVar.Z2(obj)) {
                arrayList.add(obj);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public t b() {
        Collection a10 = a(null);
        ArrayList arrayList = new ArrayList(a10.size());
        Iterator it = a10.iterator();
        while (it.hasNext()) {
            arrayList.add(((C15183b) it.next()).a());
        }
        return new org.bouncycastle.util.e(arrayList);
    }
}
