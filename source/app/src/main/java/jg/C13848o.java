package jg;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13848o {

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__CollectionKt", f = "Collection.kt", i = {0}, l = {26}, m = "toCollection", n = {FirebaseAnalytics.d.f67729z}, s = {"L$0"})
    public static final class a<T, C extends Collection<? super T>> extends Bf.d {

        public Object f93406b;

        public Object f93407c;

        public int f93408d;

        public a(yf.f<? super a> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93407c = obj;
            this.f93408d |= Integer.MIN_VALUE;
            return C13844k.X1(null, null, this);
        }
    }

    public static final class b<T> implements InterfaceC13843j {

        public final Collection f93409b;

        public b(Collection collection) {
            this.f93409b = collection;
        }

        @Override
        @Nullable
        public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            this.f93409b.add(t10);
            return P0.f98194a;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T, C extends Collection<? super T>> Object a(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull C c10, @NotNull yf.f<? super C> fVar) {
        a aVar;
        int i10;
        if (fVar instanceof a) {
            aVar = (a) fVar;
            int i11 = aVar.f93408d;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                aVar.f93408d = i11 - Integer.MIN_VALUE;
                Object obj = aVar.f93407c;
                Object l10 = Af.d.l();
                i10 = aVar.f93408d;
                if (i10 == 0) {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    Collection collection = (Collection) aVar.f93406b;
                    C14418j0.n(obj);
                    return collection;
                }
                C14418j0.n(obj);
                InterfaceC13843j<? super Object> bVar = new b<>(c10);
                aVar.f93406b = c10;
                aVar.f93408d = 1;
                return interfaceC13842i.a(bVar, aVar) == l10 ? l10 : c10;
            }
        }
        aVar = new a(fVar);
        Object obj2 = aVar.f93407c;
        Object l102 = Af.d.l();
        i10 = aVar.f93408d;
        if (i10 == 0) {
        }
    }

    @Nullable
    public static final <T> Object b(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull List<T> list, @NotNull yf.f<? super List<? extends T>> fVar) {
        return C13844k.X1(interfaceC13842i, list, fVar);
    }

    public static Object c(InterfaceC13842i interfaceC13842i, List list, yf.f fVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = new ArrayList();
        }
        return C13844k.Y1(interfaceC13842i, list, fVar);
    }

    @Nullable
    public static final <T> Object d(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Set<T> set, @NotNull yf.f<? super Set<? extends T>> fVar) {
        return C13844k.X1(interfaceC13842i, set, fVar);
    }

    public static Object e(InterfaceC13842i interfaceC13842i, Set set, yf.f fVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            set = new LinkedHashSet();
        }
        return C13844k.a2(interfaceC13842i, set, fVar);
    }
}
