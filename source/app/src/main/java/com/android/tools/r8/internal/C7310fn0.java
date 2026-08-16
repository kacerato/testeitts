package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class C7310fn0 implements Iterator {

    public int f48093b = -1;

    public boolean f48094c;

    public Iterator f48095d;

    public final AbstractC7810in0 f48096e;

    public C7310fn0(AbstractC7810in0 abstractC7810in0) {
        this.f48096e = abstractC7810in0;
    }

    @Override
    public final boolean hasNext() {
        if (this.f48093b + 1 >= this.f48096e.f49057c.size()) {
            if (this.f48096e.f49058d.isEmpty()) {
                return false;
            }
            if (this.f48095d == null) {
                this.f48095d = this.f48096e.f49058d.entrySet().iterator();
            }
            if (!this.f48095d.hasNext()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object next() {
        this.f48094c = true;
        int i10 = this.f48093b + 1;
        this.f48093b = i10;
        if (i10 < this.f48096e.f49057c.size()) {
            return (Map.Entry) this.f48096e.f49057c.get(this.f48093b);
        }
        if (this.f48095d == null) {
            this.f48095d = this.f48096e.f49058d.entrySet().iterator();
        }
        return (Map.Entry) this.f48095d.next();
    }

    @Override
    public final void remove() {
        if (!this.f48094c) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f48094c = false;
        AbstractC7810in0 abstractC7810in0 = this.f48096e;
        int i10 = AbstractC7810in0.f49055h;
        abstractC7810in0.e();
        if (this.f48093b >= this.f48096e.f49057c.size()) {
            if (this.f48095d == null) {
                this.f48095d = this.f48096e.f49058d.entrySet().iterator();
            }
            this.f48095d.remove();
            return;
        }
        AbstractC7810in0 abstractC7810in02 = this.f48096e;
        int i11 = this.f48093b;
        this.f48093b = i11 - 1;
        abstractC7810in02.e();
        Object obj = ((C6977dn0) abstractC7810in02.f49057c.remove(i11)).f47517c;
        if (abstractC7810in02.f49058d.isEmpty()) {
            return;
        }
        Iterator it = abstractC7810in02.j().entrySet().iterator();
        abstractC7810in02.f49057c.add(new C6977dn0(abstractC7810in02, (Map.Entry) it.next()));
        it.remove();
    }
}
