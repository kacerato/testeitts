package dm;

import ci.C4191b;
import ci.C4198i;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.util.StoreException;

public class m implements org.bouncycastle.util.t<j> {

    public Map<a, List<j>> f84878b = new HashMap();

    public Qk.p f84879c;

    public static class a {

        public final byte[] f84880a;

        public final int f84881b;

        public a(byte[] bArr) {
            this.f84880a = bArr;
            this.f84881b = org.bouncycastle.util.a.t0(bArr);
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return org.bouncycastle.util.a.g(this.f84880a, ((a) obj).f84880a);
            }
            return false;
        }

        public int hashCode() {
            return this.f84881b;
        }
    }

    public m(Collection<j> collection) throws OperatorCreationException {
        this.f84879c = null;
        for (j jVar : collection) {
            C4191b c4191b = jVar.g()[0];
            if (this.f84879c == null) {
                this.f84879c = jVar.h().a(c4191b.v());
            }
            C4198i x10 = c4191b.x();
            if (x10 != null) {
                byte[][] y10 = x10.y();
                if (y10.length > 1) {
                    for (int i10 = 0; i10 != y10.length; i10++) {
                        b(new a(y10[i10]), jVar);
                    }
                    b(new a(q.j(this.f84879c, x10)), jVar);
                } else {
                    b(new a(y10[0]), jVar);
                }
            } else {
                b(new a(c4191b.B()), jVar);
            }
        }
    }

    @Override
    public Collection<j> a(org.bouncycastle.util.r<j> rVar) throws StoreException {
        if (rVar instanceof l) {
            List<j> list = this.f84878b.get(new a(((l) rVar).a().a(this.f84879c, null)));
            if (list == null) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (int i10 = 0; i10 != list.size(); i10++) {
                j jVar = list.get(i10);
                if (rVar.Z2(jVar)) {
                    arrayList.add(jVar);
                }
            }
            return Collections.unmodifiableList(arrayList);
        }
        if (rVar == null) {
            HashSet hashSet = new HashSet(this.f84878b.size());
            Iterator<List<j>> it = this.f84878b.values().iterator();
            while (it.hasNext()) {
                hashSet.addAll(it.next());
            }
            return Collections.unmodifiableList(new ArrayList(hashSet));
        }
        HashSet hashSet2 = new HashSet();
        for (List<j> list2 : this.f84878b.values()) {
            for (int i11 = 0; i11 != list2.size(); i11++) {
                if (rVar.Z2(list2.get(i11))) {
                    hashSet2.add(list2.get(i11));
                }
            }
        }
        return Collections.unmodifiableList(new ArrayList(hashSet2));
    }

    public final void b(a aVar, j jVar) {
        List<j> list = this.f84878b.get(aVar);
        if (list == null) {
            this.f84878b.put(aVar, Collections.singletonList(jVar));
            return;
        }
        ArrayList arrayList = new ArrayList(list.size() + 1);
        arrayList.addAll(list);
        arrayList.add(jVar);
        this.f84878b.put(aVar, arrayList);
    }
}
