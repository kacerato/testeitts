package nf;

import java.io.Serializable;
import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C14435s0<T> implements I<T>, Serializable {

    @Nullable
    public Mf.a<? extends T> f98219b;

    @Nullable
    public volatile Object f98220c;

    @NotNull
    public final Object f98221d;

    public C14435s0(@NotNull Mf.a<? extends T> initializer, @Nullable Object obj) {
        kotlin.jvm.internal.M.p(initializer, "initializer");
        this.f98219b = initializer;
        this.f98220c = J0.f98183a;
        this.f98221d = obj == null ? this : obj;
    }

    private final Object a() {
        return new C14395E(getValue());
    }

    @Override
    public T getValue() {
        T t10;
        T t11 = (T) this.f98220c;
        J0 j02 = J0.f98183a;
        if (t11 != j02) {
            return t11;
        }
        synchronized (this.f98221d) {
            t10 = (T) this.f98220c;
            if (t10 == j02) {
                Mf.a<? extends T> aVar = this.f98219b;
                kotlin.jvm.internal.M.m(aVar);
                t10 = aVar.invoke();
                this.f98220c = t10;
                this.f98219b = null;
            }
        }
        return t10;
    }

    @Override
    public boolean isInitialized() {
        return this.f98220c != J0.f98183a;
    }

    @NotNull
    public String toString() {
        return isInitialized() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }

    public C14435s0(Mf.a aVar, Object obj, int i10, C14026x c14026x) {
        this(aVar, (i10 & 2) != 0 ? null : obj);
    }
}
