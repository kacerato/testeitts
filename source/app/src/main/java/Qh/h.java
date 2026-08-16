package qh;

import java.util.Iterator;
import oh.AbstractC14545v;
import oh.B;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import org.bouncycastle.util.a;

public class h extends AbstractC14545v implements org.bouncycastle.util.l<InterfaceC14516g> {

    public final InterfaceC14516g[] f108156b;

    public h(E e10) {
        this.f108156b = new InterfaceC14516g[e10.size()];
        int i10 = 0;
        while (true) {
            InterfaceC14516g[] interfaceC14516gArr = this.f108156b;
            if (i10 == interfaceC14516gArr.length) {
                return;
            }
            interfaceC14516gArr[i10] = C15106g.z(e10.I(i10));
            i10++;
        }
    }

    public static h u(Object obj) {
        if (obj instanceof h) {
            return (h) obj;
        }
        if (obj != null) {
            return new h(E.G(obj));
        }
        return null;
    }

    @Override
    public Iterator<InterfaceC14516g> iterator() {
        return new a.C1929a(this.f108156b);
    }

    @Override
    public B r() {
        return new G0(this.f108156b);
    }

    public h(C15106g[] c15106gArr) {
        InterfaceC14516g[] interfaceC14516gArr = new InterfaceC14516g[c15106gArr.length];
        this.f108156b = interfaceC14516gArr;
        System.arraycopy(c15106gArr, 0, interfaceC14516gArr, 0, c15106gArr.length);
    }
}
