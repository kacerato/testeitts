package kotlin.jvm.internal;

import java.io.Serializable;
import nf.InterfaceC14422l0;

@InterfaceC14422l0(version = "1.7")
public class D extends H implements Serializable {

    public final Class f95702b;

    public D(Class cls) {
        super(1);
        this.f95702b = cls;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof D) {
            return this.f95702b.equals(((D) obj).f95702b);
        }
        return false;
    }

    @Override
    public int hashCode() {
        return this.f95702b.hashCode();
    }

    @Override
    public String toString() {
        return "fun interface " + this.f95702b.getName();
    }

    @Override
    public Wf.h getReflected() {
        throw new UnsupportedOperationException("Functional interface constructor does not support reflection");
    }
}
