package v1;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public final class C15795p implements InterfaceC15782c {

    public final Collection f121148a;

    public C15795p(Collection collection) {
        this.f121148a = collection;
    }

    @Override
    public final Object a(@NonNull AbstractC15790k abstractC15790k) throws Exception {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f121148a.iterator();
        while (it.hasNext()) {
            arrayList.add(((AbstractC15790k) it.next()).r());
        }
        return arrayList;
    }
}
