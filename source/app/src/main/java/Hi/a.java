package Hi;

import Bi.InterfaceC2382n;
import java.util.Collections;
import java.util.Set;
import org.bouncycastle.crypto.CryptoServiceConstraintsException;

public class a extends f {

    public final int f8471c;

    public a(int i10) {
        super(Collections.EMPTY_SET);
        this.f8471c = i10;
    }

    @Override
    public void a(InterfaceC2382n interfaceC2382n) {
        if (!b(interfaceC2382n.getServiceName()) && interfaceC2382n.b() < this.f8471c) {
            throw new CryptoServiceConstraintsException("service does not provide " + this.f8471c + " bits of security only " + interfaceC2382n.b());
        }
    }

    public a(int i10, Set<String> set) {
        super(set);
        this.f8471c = i10;
    }
}
