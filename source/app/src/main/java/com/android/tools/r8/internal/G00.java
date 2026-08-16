package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;

public final class G00 extends AbstractC8194l4 {

    public static final boolean f40365d = true;

    public final ArrayList f40366c;

    public G00(ArrayList arrayList) {
        this.f40366c = arrayList;
    }

    @Override
    public final G00 a() {
        return this;
    }

    @Override
    public final boolean b() {
        return true;
    }

    @Override
    public final AbstractC8194l4 c(final C4798y c4798y) {
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                C6694c4 b10;
                b10 = ((C6694c4) obj).b(C4798y.this);
                return b10;
            }
        };
        ArrayList arrayList = new ArrayList(this.f40366c.size());
        ArrayList arrayList2 = this.f40366c;
        int size = arrayList2.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            arrayList.add((C6694c4) function.apply((C6694c4) obj));
        }
        return new G00(arrayList);
    }

    @Override
    public final boolean isEmpty() {
        return false;
    }

    @Override
    public final Iterator iterator() {
        return this.f40366c.iterator();
    }

    @Override
    public final G00 a(final C4798y c4798y, final AbstractC5308Hz abstractC5308Hz, C8659ns0 c8659ns0) {
        return (G00) c8659ns0.a("Rewrite NonEmptyArtProfileCollection", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return G00.this.a(c4798y, abstractC5308Hz);
            }
        });
    }

    public final G00 a(final C4798y c4798y, final AbstractC5308Hz abstractC5308Hz) {
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                C6694c4 a10;
                a10 = ((C6694c4) obj).a(C4798y.this, abstractC5308Hz);
                return a10;
            }
        };
        ArrayList arrayList = new ArrayList(this.f40366c.size());
        ArrayList arrayList2 = this.f40366c;
        int size = arrayList2.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            arrayList.add((C6694c4) function.apply((C6694c4) obj));
        }
        return new G00(arrayList);
    }

    @Override
    public final void a(C4798y c4798y) {
        C9362s4 q10 = c4798y.E().q();
        if (q10.f52268c) {
            boolean z10 = f40365d;
            if (!z10 && !C9362s4.f52265h && q10.f52272g == null) {
                throw new AssertionError();
            }
            if (!z10) {
                C4477h f10 = c4798y.f();
                if (q10.f52272g != null) {
                    String a10 = C9362s4.a(f10);
                    if (!C9362s4.f52265h && !a10.equals(q10.f52272g)) {
                        throw new AssertionError();
                    }
                } else {
                    q10.f52272g = C9362s4.a(f10);
                }
            }
        }
        int i10 = 0;
        if (q10.b()) {
            if (!f40365d) {
                AbstractC8528n4.a(c4798y, new EnumC8361m4[0]);
            }
            ArrayList arrayList = this.f40366c;
            boolean z11 = AT.f38618a;
            arrayList.remove(arrayList.size() - 1);
            if (this.f40366c.isEmpty()) {
                c4798y.f38411d = C5354It.f41240c;
                return;
            }
        }
        C8570nJ E10 = c4798y.E();
        List list = E10.q().f52266a;
        boolean z12 = f40365d;
        if (!z12 && list.isEmpty()) {
            throw new AssertionError();
        }
        if (!z12 && this.f40366c.size() != list.size()) {
            throw new AssertionError();
        }
        Iterator<E> it = list.iterator();
        ArrayList arrayList2 = this.f40366c;
        int size = arrayList2.size();
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            ((C6694c4) ((C6694c4) obj).a(c4798y)).a(c4798y, c4798y.s()).a(((C8862p4) it.next()).b(), E10.f50691j);
        }
    }

    @Override
    public final AbstractC8194l4 b(C4798y c4798y) {
        C9362s4 q10 = c4798y.E().q();
        boolean z10 = f40365d;
        if (!z10 && q10.f52268c) {
            throw new AssertionError();
        }
        if (q10.b()) {
            if (!z10) {
                AbstractC8528n4.a(c4798y, new EnumC8361m4[0]);
            }
            ArrayList arrayList = this.f40366c;
            boolean z11 = AT.f38618a;
            arrayList.remove(arrayList.size() - 1);
            if (this.f40366c.isEmpty()) {
                return C5354It.f41240c;
            }
        }
        return this;
    }

    @Override
    public final G00 a(final com.android.tools.r8.graph.O5 o52, C8659ns0 c8659ns0) {
        c8659ns0.b("Prune NonEmptyArtProfileCollection");
        forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C6694c4) obj).a(com.android.tools.r8.graph.O5.this);
            }
        });
        c8659ns0.d();
        return this;
    }
}
