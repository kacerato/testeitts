package j1;

import java.util.Iterator;
import javax.annotation.CheckForNull;

public final class C13801z extends AbstractC13797v {

    public final transient Object f92553d;

    public C13801z(Object obj) {
        obj.getClass();
        this.f92553d = obj;
    }

    @Override
    public final int a(Object[] objArr, int i10) {
        objArr[0] = this.f92553d;
        return 1;
    }

    @Override
    public final boolean contains(@CheckForNull Object obj) {
        return this.f92553d.equals(obj);
    }

    @Override
    public final AbstractC13776A iterator() {
        return new C13798w(this.f92553d);
    }

    @Override
    public final int hashCode() {
        return this.f92553d.hashCode();
    }

    @Override
    public final Iterator iterator() {
        return new C13798w(this.f92553d);
    }

    @Override
    public final int size() {
        return 1;
    }

    @Override
    public final String toString() {
        return "[" + this.f92553d.toString() + "]";
    }
}
