package yk;

import java.security.AccessController;
import java.security.PrivilegedAction;
import oh.AbstractC14545v;
import oh.B;
import oh.C14504a;
import oh.InterfaceC14516g;

public class i extends AbstractC14545v {

    public static final i f130478d = new i(false, null);

    public final boolean f130479b;

    public final InterfaceC14516g f130480c;

    public class a<T> implements PrivilegedAction<T> {

        public final Class f130481a;

        public a(Class cls) {
            this.f130481a = cls;
        }

        @Override
        public T run() {
            try {
                return (T) this.f130481a.cast(this.f130481a.getMethod("getInstance", Object.class).invoke(null, i.this.f130480c));
            } catch (Exception e10) {
                throw new IllegalStateException("could not invoke getInstance on type " + e10.getMessage(), e10);
            }
        }
    }

    public i(boolean z10, InterfaceC14516g interfaceC14516g) {
        this.f130479b = z10;
        this.f130480c = interfaceC14516g;
    }

    public static i w(Object obj) {
        return obj instanceof i ? (i) obj : obj instanceof InterfaceC14516g ? new i(true, (InterfaceC14516g) obj) : f130478d;
    }

    public static <T> T y(Class<T> cls, Object obj) {
        i w10 = w(obj);
        if (w10.f130479b) {
            return (T) w10.x(cls);
        }
        return null;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f130479b != iVar.f130479b) {
            return false;
        }
        InterfaceC14516g interfaceC14516g = this.f130480c;
        InterfaceC14516g interfaceC14516g2 = iVar.f130480c;
        return interfaceC14516g != null ? interfaceC14516g.equals(interfaceC14516g2) : interfaceC14516g2 == null;
    }

    @Override
    public int hashCode() {
        int hashCode = ((super.hashCode() * 31) + (this.f130479b ? 1 : 0)) * 31;
        InterfaceC14516g interfaceC14516g = this.f130480c;
        return hashCode + (interfaceC14516g != null ? interfaceC14516g.hashCode() : 0);
    }

    @Override
    public B r() {
        return !this.f130479b ? C14504a.f98847b : v().r();
    }

    public String toString() {
        if (!this.f130479b) {
            return "ABSENT";
        }
        return "OPTIONAL(" + ((Object) this.f130480c) + ")";
    }

    public InterfaceC14516g v() {
        return !this.f130479b ? f130478d : this.f130480c;
    }

    public <T> T x(Class<T> cls) {
        if (this.f130479b) {
            return this.f130480c.getClass().isInstance(cls) ? cls.cast(this.f130480c) : (T) AccessController.doPrivileged(new a(cls));
        }
        return null;
    }

    public boolean z() {
        return this.f130479b;
    }
}
