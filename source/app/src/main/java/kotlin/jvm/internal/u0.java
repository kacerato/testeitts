package kotlin.jvm.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

public class u0 {

    public final ArrayList<Object> f95786a;

    public u0(int i10) {
        this.f95786a = new ArrayList<>(i10);
    }

    public void a(Object obj) {
        this.f95786a.add(obj);
    }

    public void b(Object obj) {
        if (obj == null) {
            return;
        }
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (objArr.length > 0) {
                ArrayList<Object> arrayList = this.f95786a;
                arrayList.ensureCapacity(arrayList.size() + objArr.length);
                Collections.addAll(this.f95786a, objArr);
                return;
            }
            return;
        }
        if (obj instanceof Collection) {
            this.f95786a.addAll((Collection) obj);
            return;
        }
        if (obj instanceof Iterable) {
            Iterator it = ((Iterable) obj).iterator();
            while (it.hasNext()) {
                this.f95786a.add(it.next());
            }
            return;
        }
        if (obj instanceof Iterator) {
            Iterator it2 = (Iterator) obj;
            while (it2.hasNext()) {
                this.f95786a.add(it2.next());
            }
        } else {
            throw new UnsupportedOperationException("Don't know how to spread " + ((Object) obj.getClass()));
        }
    }

    public int c() {
        return this.f95786a.size();
    }

    public Object[] d(Object[] objArr) {
        return this.f95786a.toArray(objArr);
    }
}
