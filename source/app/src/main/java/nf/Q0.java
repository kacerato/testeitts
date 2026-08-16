package nf;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class Q0<T> implements I<T>, Serializable {

    @Nullable
    public Mf.a<? extends T> f98195b;

    @Nullable
    public Object f98196c;

    public Q0(@NotNull Mf.a<? extends T> initializer) {
        kotlin.jvm.internal.M.p(initializer, "initializer");
        this.f98195b = initializer;
        this.f98196c = J0.f98183a;
    }

    private final void a(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final Object b() {
        return new C14395E(getValue());
    }

    @Override
    public T getValue() {
        if (this.f98196c == J0.f98183a) {
            Mf.a<? extends T> aVar = this.f98195b;
            kotlin.jvm.internal.M.m(aVar);
            this.f98196c = aVar.invoke();
            this.f98195b = null;
        }
        return (T) this.f98196c;
    }

    @Override
    public boolean isInitialized() {
        return this.f98196c != J0.f98183a;
    }

    @NotNull
    public String toString() {
        return isInitialized() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
