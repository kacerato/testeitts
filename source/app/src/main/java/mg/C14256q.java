package mg;

import java.util.ArrayList;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nInlineList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,49:1\n1#2:50\n*E\n"})
@Lf.h
public final class C14256q<E> {

    @Nullable
    public final Object f97092a;

    public C14256q(Object obj) {
        this.f97092a = obj;
    }

    public static final C14256q a(Object obj) {
        return new C14256q(obj);
    }

    @NotNull
    public static <E> Object b(@Nullable Object obj) {
        return obj;
    }

    public static Object c(Object obj, int i10, C14026x c14026x) {
        if ((i10 & 1) != 0) {
            obj = null;
        }
        return b(obj);
    }

    public static boolean d(Object obj, Object obj2) {
        return (obj2 instanceof C14256q) && kotlin.jvm.internal.M.g(obj, ((C14256q) obj2).j());
    }

    public static final boolean e(Object obj, Object obj2) {
        return kotlin.jvm.internal.M.g(obj, obj2);
    }

    public static final void f(Object obj, @NotNull Mf.l<? super E, P0> lVar) {
        if (obj == null) {
            return;
        }
        if (!(obj instanceof ArrayList)) {
            lVar.invoke(obj);
            return;
        }
        kotlin.jvm.internal.M.n(obj, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
        ArrayList arrayList = (ArrayList) obj;
        int size = arrayList.size();
        while (true) {
            size--;
            if (-1 >= size) {
                return;
            } else {
                lVar.invoke((Object) arrayList.get(size));
            }
        }
    }

    public static int g(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    @NotNull
    public static final Object h(Object obj, E e10) {
        if (obj == null) {
            return b(e10);
        }
        if (obj instanceof ArrayList) {
            kotlin.jvm.internal.M.n(obj, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
            ((ArrayList) obj).add(e10);
            return b(obj);
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(e10);
        return b(arrayList);
    }

    public static String i(Object obj) {
        return "InlineList(holder=" + obj + ')';
    }

    public boolean equals(Object obj) {
        return d(this.f97092a, obj);
    }

    public int hashCode() {
        return g(this.f97092a);
    }

    public final Object j() {
        return this.f97092a;
    }

    public String toString() {
        return i(this.f97092a);
    }
}
