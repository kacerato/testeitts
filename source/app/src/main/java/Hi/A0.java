package hi;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;

public class A0 {

    public Hashtable f90513a = new Hashtable();

    public Vector f90514b = new Vector();

    public void a(C14549x c14549x, boolean z10, InterfaceC14516g interfaceC14516g) {
        try {
            b(c14549x, z10, interfaceC14516g.r().s(InterfaceC14520i.f98892a));
        } catch (IOException e10) {
            throw new IllegalArgumentException("error encoding value: " + ((Object) e10));
        }
    }

    public void b(C14549x c14549x, boolean z10, byte[] bArr) {
        if (!this.f90513a.containsKey(c14549x)) {
            this.f90514b.addElement(c14549x);
            this.f90513a.put(c14549x, new y0(z10, new oh.C0(bArr)));
        } else {
            throw new IllegalArgumentException("extension " + ((Object) c14549x) + " already added");
        }
    }

    public z0 c() {
        return new z0(this.f90514b, this.f90513a);
    }

    public boolean d() {
        return this.f90514b.isEmpty();
    }

    public void e() {
        this.f90513a = new Hashtable();
        this.f90514b = new Vector();
    }
}
