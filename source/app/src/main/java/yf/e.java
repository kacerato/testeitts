package yf;

import Mf.p;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14422l0;
import nf.P0;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

@t0({"SMAP\nCoroutineContextImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,200:1\n1#2:201\n*E\n"})
@InterfaceC14422l0(version = "1.3")
public final class e implements j, Serializable {

    @NotNull
    public final j f130242b;

    @NotNull
    public final j.b f130243c;

    @t0({"SMAP\nCoroutineContextImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext$Serialized\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,200:1\n13471#2,3:201\n*S KotlinDebug\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext$Serialized\n*L\n197#1:201,3\n*E\n"})
    public static final class a implements Serializable {

        @NotNull
        public static final C2224a f130244c = new C2224a(null);

        public static final long f130245d = 0;

        @NotNull
        public final j[] f130246b;

        public static final class C2224a {
            public C2224a(C14026x c14026x) {
                this();
            }

            public C2224a() {
            }
        }

        public a(@NotNull j[] elements) {
            M.p(elements, "elements");
            this.f130246b = elements;
        }

        @NotNull
        public final j[] a() {
            return this.f130246b;
        }

        public final Object b() {
            j[] jVarArr = this.f130246b;
            j jVar = l.f130251b;
            for (j jVar2 : jVarArr) {
                jVar = jVar.plus(jVar2);
            }
            return jVar;
        }
    }

    public e(@NotNull j left, @NotNull j.b element) {
        M.p(left, "left");
        M.p(element, "element");
        this.f130242b = left;
        this.f130243c = element;
    }

    private final void m(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final int o() {
        int i10 = 2;
        e eVar = this;
        while (true) {
            j jVar = eVar.f130242b;
            eVar = jVar instanceof e ? (e) jVar : null;
            if (eVar == null) {
                return i10;
            }
            i10++;
        }
    }

    public static final String p(String acc, j.b element) {
        M.p(acc, "acc");
        M.p(element, "element");
        if (acc.length() == 0) {
            return element.toString();
        }
        return acc + ", " + ((Object) element);
    }

    private final Object r() {
        int o10 = o();
        final j[] jVarArr = new j[o10];
        final m0.f fVar = new m0.f();
        fold(P0.f98194a, new p() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                P0 s10;
                s10 = e.s(jVarArr, fVar, (P0) obj, (j.b) obj2);
                return s10;
            }
        });
        if (fVar.f95752b == o10) {
            return new a(jVarArr);
        }
        throw new IllegalStateException("Check failed.");
    }

    public static final P0 s(j[] jVarArr, m0.f fVar, P0 p02, j.b element) {
        M.p(p02, "<unused var>");
        M.p(element, "element");
        int i10 = fVar.f95752b;
        fVar.f95752b = i10 + 1;
        jVarArr[i10] = element;
        return P0.f98194a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof e) {
                e eVar = (e) obj;
                if (eVar.o() != o() || !eVar.k(this)) {
                }
            }
            return false;
        }
        return true;
    }

    @Override
    public <R> R fold(R r10, @NotNull p<? super R, ? super j.b, ? extends R> operation) {
        M.p(operation, "operation");
        return operation.invoke((Object) this.f130242b.fold(r10, operation), this.f130243c);
    }

    @Override
    @Nullable
    public <E extends j.b> E get(@NotNull j.c<E> key) {
        M.p(key, "key");
        e eVar = this;
        while (true) {
            E e10 = (E) eVar.f130243c.get(key);
            if (e10 != null) {
                return e10;
            }
            j jVar = eVar.f130242b;
            if (!(jVar instanceof e)) {
                return (E) jVar.get(key);
            }
            eVar = (e) jVar;
        }
    }

    public int hashCode() {
        return this.f130242b.hashCode() + this.f130243c.hashCode();
    }

    public final boolean j(j.b bVar) {
        return M.g(get(bVar.getKey()), bVar);
    }

    public final boolean k(e eVar) {
        while (j(eVar.f130243c)) {
            j jVar = eVar.f130242b;
            if (!(jVar instanceof e)) {
                M.n(jVar, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                return j((j.b) jVar);
            }
            eVar = (e) jVar;
        }
        return false;
    }

    @Override
    @NotNull
    public j minusKey(@NotNull j.c<?> key) {
        M.p(key, "key");
        if (this.f130243c.get(key) != null) {
            return this.f130242b;
        }
        j minusKey = this.f130242b.minusKey(key);
        return minusKey == this.f130242b ? this : minusKey == l.f130251b ? this.f130243c : new e(minusKey, this.f130243c);
    }

    @Override
    @NotNull
    public j plus(@NotNull j jVar) {
        return j.a.b(this, jVar);
    }

    @NotNull
    public String toString() {
        return '[' + ((String) fold("", new p() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                String p10;
                p10 = e.p((String) obj, (j.b) obj2);
                return p10;
            }
        })) + JavaElement.JEM_TYPE_PARAMETER;
    }
}
