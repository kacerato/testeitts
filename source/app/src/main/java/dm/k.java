package dm;

import ci.C4194e;
import ci.C4195f;
import ci.C4196g;
import java.util.ArrayList;
import java.util.List;
import org.bouncycastle.tsp.TSPException;
import org.bouncycastle.tsp.ers.ERSException;

public class k {

    public final Qk.q f84875a;

    public k(Qk.q qVar) {
        this.f84875a = qVar;
    }

    public j a(C12969c c12969c) throws TSPException, ERSException {
        return new j(new C4196g((C4194e) null, (C4195f) null, c12969c.k()), this.f84875a);
    }

    public List<j> b(List<C12969c> list) throws TSPException, ERSException {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i10 = 0; i10 != list.size(); i10++) {
            arrayList.add(new j(new C4196g((C4194e) null, (C4195f) null, list.get(i10).k()), this.f84875a));
        }
        return arrayList;
    }
}
