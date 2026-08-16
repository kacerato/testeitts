package mg;

import eg.F0;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14410f0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@F0
@t0({"SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,367:1\n73#1,3:369\n1#2:368\n*S KotlinDebug\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n*L\n134#1:369,3\n*E\n"})
public class C14263y {

    @NotNull
    public static final AtomicReferenceFieldUpdater f97105b = AtomicReferenceFieldUpdater.newUpdater(C14263y.class, Object.class, "_next");

    @NotNull
    public static final AtomicReferenceFieldUpdater f97106c = AtomicReferenceFieldUpdater.newUpdater(C14263y.class, Object.class, "_prev");

    @NotNull
    public static final AtomicReferenceFieldUpdater f97107d = AtomicReferenceFieldUpdater.newUpdater(C14263y.class, Object.class, "_removedRef");

    @Lf.x
    @Nullable
    private volatile Object _next = this;

    @Lf.x
    @Nullable
    private volatile Object _prev = this;

    @Lf.x
    @Nullable
    private volatile Object _removedRef;

    @InterfaceC14410f0
    public static abstract class a extends AbstractC14241b<C14263y> {

        @Lf.g
        @NotNull
        public final C14263y f97108b;

        @Lf.g
        @Nullable
        public C14263y f97109c;

        public a(@NotNull C14263y c14263y) {
            this.f97108b = c14263y;
        }

        @Override
        public void c(@NotNull C14263y c14263y, @Nullable Object obj) {
            boolean z10 = obj == null;
            C14263y c14263y2 = z10 ? this.f97108b : this.f97109c;
            if (c14263y2 != null && androidx.concurrent.futures.a.a(C14263y.f97105b, c14263y, this, c14263y2) && z10) {
                C14263y c14263y3 = this.f97108b;
                C14263y c14263y4 = this.f97109c;
                kotlin.jvm.internal.M.m(c14263y4);
                c14263y3.z(c14263y4);
            }
        }
    }

    @t0({"SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1\n*L\n1#1,367:1\n*E\n"})
    public static final class b extends a {

        public final Mf.a<Boolean> f97110d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(C14263y c14263y, Mf.a<Boolean> aVar) {
            super(c14263y);
            this.f97110d = aVar;
        }

        @Override
        @Nullable
        public Object e(@NotNull C14263y c14263y) {
            if (this.f97110d.invoke().booleanValue()) {
                return null;
            }
            return C14262x.a();
        }
    }

    private final void K(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Mf.l<Object, P0> lVar, Object obj) {
        while (true) {
            lVar.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    @NotNull
    public final Object A() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f97105b;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof K)) {
                return obj;
            }
            ((K) obj).b(this);
        }
    }

    @NotNull
    public final C14263y B() {
        return C14262x.f(A());
    }

    @NotNull
    public final C14263y C() {
        C14263y x10 = x(null);
        return x10 == null ? y((C14263y) f97106c.get(this)) : x10;
    }

    public boolean E() {
        return A() instanceof M;
    }

    @InterfaceC14410f0
    @NotNull
    public final a O(@NotNull C14263y c14263y, @NotNull Mf.a<Boolean> aVar) {
        return new b(c14263y, aVar);
    }

    @Nullable
    public C14263y Q() {
        Object A10 = A();
        M m10 = A10 instanceof M ? (M) A10 : null;
        if (m10 != null) {
            return m10.f97031a;
        }
        return null;
    }

    public boolean R() {
        return U() == null;
    }

    @InterfaceC14410f0
    @Nullable
    public final C14263y U() {
        Object A10;
        C14263y c14263y;
        do {
            A10 = A();
            if (A10 instanceof M) {
                return ((M) A10).f97031a;
            }
            if (A10 == this) {
                return (C14263y) A10;
            }
            kotlin.jvm.internal.M.n(A10, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
            c14263y = (C14263y) A10;
        } while (!androidx.concurrent.futures.a.a(f97105b, this, A10, c14263y.V()));
        c14263y.x(null);
        return null;
    }

    public final M V() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f97107d;
        M m10 = (M) atomicReferenceFieldUpdater.get(this);
        if (m10 != null) {
            return m10;
        }
        M m11 = new M(this);
        atomicReferenceFieldUpdater.lazySet(this, m11);
        return m11;
    }

    @InterfaceC14410f0
    public final int W(@NotNull C14263y c14263y, @NotNull C14263y c14263y2, @NotNull a aVar) {
        f97106c.lazySet(c14263y, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f97105b;
        atomicReferenceFieldUpdater.lazySet(c14263y, c14263y2);
        aVar.f97109c = c14263y2;
        if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, c14263y2, aVar)) {
            return aVar.b(this) == null ? 1 : 2;
        }
        return 0;
    }

    public final void X(@NotNull C14263y c14263y, @NotNull C14263y c14263y2) {
    }

    public final void k(@NotNull C14263y c14263y) {
        do {
        } while (!C().t(c14263y, this));
    }

    public final boolean o(@NotNull C14263y c14263y, @NotNull Mf.a<Boolean> aVar) {
        int W10;
        b bVar = new b(c14263y, aVar);
        do {
            W10 = C().W(c14263y, this, bVar);
            if (W10 == 1) {
                return true;
            }
        } while (W10 != 2);
        return false;
    }

    @InterfaceC14410f0
    public final boolean t(@NotNull C14263y c14263y, @NotNull C14263y c14263y2) {
        f97106c.lazySet(c14263y, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f97105b;
        atomicReferenceFieldUpdater.lazySet(c14263y, c14263y2);
        if (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, c14263y2, c14263y)) {
            return false;
        }
        c14263y.z(c14263y2);
        return true;
    }

    @NotNull
    public String toString() {
        return ((Object) new kotlin.jvm.internal.g0(this) {
            @Override
            @Nullable
            public Object get() {
                return eg.W.a(this.receiver);
            }
        }) + '@' + eg.W.b(this);
    }

    public final boolean w(@NotNull C14263y c14263y) {
        f97106c.lazySet(c14263y, this);
        f97105b.lazySet(c14263y, this);
        while (A() == this) {
            if (androidx.concurrent.futures.a.a(f97105b, this, this, c14263y)) {
                c14263y.z(this);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0042, code lost:
    
        if (androidx.concurrent.futures.a.a(r4, r3, r2, ((mg.M) r5).f97031a) != false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C14263y x(K k10) {
        while (true) {
            C14263y c14263y = (C14263y) f97106c.get(this);
            C14263y c14263y2 = c14263y;
            while (true) {
                C14263y c14263y3 = null;
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f97105b;
                    Object obj = atomicReferenceFieldUpdater.get(c14263y2);
                    if (obj == this) {
                        if (c14263y == c14263y2 || androidx.concurrent.futures.a.a(f97106c, this, c14263y, c14263y2)) {
                            return c14263y2;
                        }
                    } else {
                        if (E()) {
                            return null;
                        }
                        if (obj == k10) {
                            return c14263y2;
                        }
                        if (obj instanceof K) {
                            ((K) obj).b(c14263y2);
                            break;
                        }
                        if (!(obj instanceof M)) {
                            kotlin.jvm.internal.M.n(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
                            c14263y3 = c14263y2;
                            c14263y2 = (C14263y) obj;
                        } else {
                            if (c14263y3 != null) {
                                break;
                            }
                            c14263y2 = (C14263y) f97106c.get(c14263y2);
                        }
                    }
                }
                c14263y2 = c14263y3;
            }
        }
    }

    public final C14263y y(C14263y c14263y) {
        while (c14263y.E()) {
            c14263y = (C14263y) f97106c.get(c14263y);
        }
        return c14263y;
    }

    public final void z(C14263y c14263y) {
        C14263y c14263y2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f97106c;
        do {
            c14263y2 = (C14263y) atomicReferenceFieldUpdater.get(c14263y);
            if (A() != c14263y) {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(f97106c, c14263y, c14263y2, this));
        if (E()) {
            c14263y.x(null);
        }
    }
}
