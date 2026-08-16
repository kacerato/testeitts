package Dk;

import oh.AbstractC14545v;
import oh.B;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;

public class f extends AbstractC14545v {

    public static final e f5275d = new e(1);

    public static final e f5276e = new e(2);

    public final e f5277b;

    public final InterfaceC14516g f5278c;

    public f(e eVar, InterfaceC14516g interfaceC14516g) {
        this.f5277b = eVar;
        if (eVar.u().intValue() != 1 && eVar.u().intValue() != 2) {
            throw new IllegalArgumentException("id not 1 (EtsiTs102941CrlRequest) or 2 (EtsiTs102941DeltaCtlRequest)");
        }
        this.f5278c = interfaceC14516g;
    }

    public static f u(b bVar) {
        return new f(f5275d, bVar);
    }

    public static f v(d dVar) {
        return new f(f5276e, dVar);
    }

    public static f z(Object obj) {
        if (obj instanceof f) {
            return (f) obj;
        }
        if (obj != null) {
            return new f(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return new G0(new InterfaceC14516g[]{this.f5277b, this.f5278c});
    }

    public InterfaceC14516g x() {
        return this.f5278c;
    }

    public e y() {
        return this.f5277b;
    }

    public f(E e10) {
        InterfaceC14516g z10;
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        e v10 = e.v(e10.I(0));
        this.f5277b = v10;
        if (v10.equals(f5275d)) {
            z10 = b.v(e10.I(1));
        } else {
            if (!v10.equals(f5276e)) {
                throw new IllegalArgumentException("id not 1 (EtsiTs102941CrlRequest) or 2 (EtsiTs102941DeltaCtlRequest)");
            }
            z10 = d.z(e10.I(1));
        }
        this.f5278c = z10;
    }
}
