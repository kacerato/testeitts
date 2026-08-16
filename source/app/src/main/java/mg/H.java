package mg;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import pf.AbstractC14974g0;

@t0({"SMAP\nOnDemandAllocatingPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnDemandAllocatingPool.kt\nkotlinx/coroutines/internal/OnDemandAllocatingPool\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 OnDemandAllocatingPool.kt\nkotlinx/coroutines/internal/OnDemandAllocatingPoolKt\n*L\n1#1,107:1\n41#1:108\n41#1:109\n35#1,7:110\n41#1:127\n1549#2:117\n1620#2,2:118\n1622#2:122\n1549#2:123\n1620#2,3:124\n101#3,2:120\n*S KotlinDebug\n*F\n+ 1 OnDemandAllocatingPool.kt\nkotlinx/coroutines/internal/OnDemandAllocatingPool\n*L\n35#1:108\n54#1:109\n76#1:110,7\n92#1:127\n77#1:117\n77#1:118,2\n77#1:122\n91#1:123\n91#1:124,3\n79#1:120,2\n*E\n"})
public final class H<T> {

    @NotNull
    public static final AtomicIntegerFieldUpdater f97023d = AtomicIntegerFieldUpdater.newUpdater(H.class, "controlState");

    public final int f97024a;

    @NotNull
    public final Mf.l<Integer, T> f97025b;

    @NotNull
    public final AtomicReferenceArray f97026c;

    @Lf.x
    private volatile int controlState;

    /* JADX WARN: Multi-variable type inference failed */
    public H(int i10, @NotNull Mf.l<? super Integer, ? extends T> lVar) {
        this.f97024a = i10;
        this.f97025b = lVar;
        this.f97026c = new AtomicReferenceArray(i10);
    }

    public final boolean a() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f97023d;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            if ((Integer.MIN_VALUE & i10) != 0) {
                return false;
            }
            if (i10 >= this.f97024a) {
                return true;
            }
        } while (!f97023d.compareAndSet(this, i10, i10 + 1));
        this.f97026c.set(i10, this.f97025b.invoke(Integer.valueOf(i10)));
        return true;
    }

    @NotNull
    public final List<T> b() {
        int i10;
        Object andSet;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f97023d;
        while (true) {
            i10 = atomicIntegerFieldUpdater.get(this);
            if ((i10 & Integer.MIN_VALUE) != 0) {
                i10 = 0;
                break;
            }
            if (f97023d.compareAndSet(this, i10, Integer.MIN_VALUE | i10)) {
                break;
            }
        }
        Vf.l Y12 = Vf.u.Y1(0, i10);
        ArrayList arrayList = new ArrayList(pf.I.d0(Y12, 10));
        Iterator<Integer> it = Y12.iterator();
        while (it.hasNext()) {
            int nextInt = ((AbstractC14974g0) it).nextInt();
            do {
                andSet = this.f97026c.getAndSet(nextInt, null);
            } while (andSet == null);
            arrayList.add(andSet);
        }
        return arrayList;
    }

    public final boolean c(int i10) {
        return (i10 & Integer.MIN_VALUE) != 0;
    }

    public final void d(AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, Mf.l<? super Integer, P0> lVar, Object obj) {
        while (true) {
            lVar.invoke(Integer.valueOf(atomicIntegerFieldUpdater.get(obj)));
        }
    }

    @NotNull
    public final String e() {
        int i10 = f97023d.get(this);
        Vf.l Y12 = Vf.u.Y1(0, Integer.MAX_VALUE & i10);
        ArrayList arrayList = new ArrayList(pf.I.d0(Y12, 10));
        Iterator<Integer> it = Y12.iterator();
        while (it.hasNext()) {
            arrayList.add(this.f97026c.get(((AbstractC14974g0) it).nextInt()));
        }
        return arrayList.toString() + ((i10 & Integer.MIN_VALUE) != 0 ? "[closed]" : "");
    }

    public final int f() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f97023d;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            if ((i10 & Integer.MIN_VALUE) != 0) {
                return 0;
            }
        } while (!f97023d.compareAndSet(this, i10, Integer.MIN_VALUE | i10));
        return i10;
    }

    @NotNull
    public String toString() {
        return "OnDemandAllocatingPool(" + e() + ')';
    }
}
