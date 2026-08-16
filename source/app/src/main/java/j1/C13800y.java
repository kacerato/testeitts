package j1;

import java.util.Iterator;
import javax.annotation.CheckForNull;

public final class C13800y extends AbstractC13797v {

    public static final Object[] f92546i;

    public static final C13800y f92547j;

    public final transient Object[] f92548d;

    public final transient int f92549e;

    public final transient Object[] f92550f;

    public final transient int f92551g;

    public final transient int f92552h;

    static {
        Object[] objArr = new Object[0];
        f92546i = objArr;
        f92547j = new C13800y(objArr, 0, objArr, 0, 0);
    }

    public C13800y(Object[] objArr, int i10, Object[] objArr2, int i11, int i12) {
        this.f92548d = objArr;
        this.f92549e = i10;
        this.f92550f = objArr2;
        this.f92551g = i11;
        this.f92552h = i12;
    }

    @Override
    public final int a(Object[] objArr, int i10) {
        System.arraycopy(this.f92548d, 0, objArr, 0, this.f92552h);
        return this.f92552h;
    }

    @Override
    public final int b() {
        return this.f92552h;
    }

    @Override
    public final int c() {
        return 0;
    }

    @Override
    public final boolean contains(@CheckForNull Object obj) {
        Object[] objArr = this.f92550f;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int a10 = C13793q.a(obj.hashCode());
        while (true) {
            int i10 = a10 & this.f92551g;
            Object obj2 = objArr[i10];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            a10 = i10 + 1;
        }
    }

    @Override
    public final AbstractC13776A iterator() {
        return k().listIterator(0);
    }

    @Override
    public final Object[] g() {
        return this.f92548d;
    }

    @Override
    public final int hashCode() {
        return this.f92549e;
    }

    @Override
    public final Iterator iterator() {
        return k().listIterator(0);
    }

    @Override
    public final AbstractC13796u l() {
        return AbstractC13796u.i(this.f92548d, this.f92552h);
    }

    @Override
    public final boolean n() {
        return true;
    }

    @Override
    public final int size() {
        return this.f92552h;
    }
}
