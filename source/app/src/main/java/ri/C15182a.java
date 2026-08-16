package ri;

import Qk.p;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.bouncycastle.cert.dane.DANEException;

public class C15182a {

    public final InterfaceC15186e f109033a;

    public final C15188g f109034b;

    public C15182a(InterfaceC15186e interfaceC15186e, p pVar) {
        this.f109033a = interfaceC15186e;
        this.f109034b = new C15188g(pVar);
    }

    public List a(String str) throws DANEException {
        C15187f a10 = this.f109034b.a(str);
        List<C15183b> entries = this.f109033a.a(a10.a()).getEntries();
        ArrayList arrayList = new ArrayList(entries.size());
        for (C15183b c15183b : entries) {
            if (a10.Z2(c15183b)) {
                arrayList.add(c15183b.a());
            }
        }
        return Collections.unmodifiableList(arrayList);
    }
}
