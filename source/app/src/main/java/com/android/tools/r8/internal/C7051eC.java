package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

public final class C7051eC extends WB {

    public Object[] f47636a = new Object[4];

    public int f47637b = 0;

    public boolean f47638c;

    @Override
    public final C7051eC a(Object obj) {
        obj.getClass();
        a(this.f47637b + 1);
        Object[] objArr = this.f47636a;
        int i10 = this.f47637b;
        this.f47637b = i10 + 1;
        objArr[i10] = obj;
        return this;
    }

    public final void a(int i10) {
        Object[] objArr = this.f47636a;
        if (objArr.length < i10) {
            this.f47636a = Arrays.copyOf(objArr, WB.a(objArr.length, i10));
            this.f47638c = false;
        } else if (this.f47638c) {
            this.f47636a = Arrays.copyOf(objArr, objArr.length);
            this.f47638c = false;
        }
    }

    public final C7051eC b(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            a(collection.size() + this.f47637b);
            if (collection instanceof XB) {
                this.f47637b = ((XB) collection).a(this.f47637b, this.f47636a);
                return this;
            }
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        return this;
    }

    public final void a(int i10, Object[] objArr) {
        a(this.f47637b + i10);
        System.arraycopy(objArr, 0, this.f47636a, this.f47637b, i10);
        this.f47637b += i10;
    }

    public final AbstractC7552hC a() {
        this.f47638c = true;
        return AbstractC7552hC.b(this.f47637b, this.f47636a);
    }

    public final C7051eC a(C7051eC c7051eC) {
        c7051eC.getClass();
        a(c7051eC.f47637b, c7051eC.f47636a);
        return this;
    }
}
