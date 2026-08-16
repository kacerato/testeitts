package nf;

import b2.AbstractC3834c;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C14420k0<T> implements I<T>, Serializable {

    @NotNull
    public static final a f98205e = new a(null);

    public static final AtomicReferenceFieldUpdater<C14420k0<?>, Object> f98206f = AtomicReferenceFieldUpdater.newUpdater(C14420k0.class, Object.class, AbstractC3834c.f32824b1);

    @Nullable
    public volatile Mf.a<? extends T> f98207b;

    @Nullable
    public volatile Object f98208c;

    @NotNull
    public final Object f98209d;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public C14420k0(@NotNull Mf.a<? extends T> initializer) {
        kotlin.jvm.internal.M.p(initializer, "initializer");
        this.f98207b = initializer;
        J0 j02 = J0.f98183a;
        this.f98208c = j02;
        this.f98209d = j02;
    }

    public static void a() {
    }

    public final void b(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    public final Object c() {
        return new C14395E(getValue());
    }

    @Override
    public T getValue() {
        T t10 = (T) this.f98208c;
        J0 j02 = J0.f98183a;
        if (t10 != j02) {
            return t10;
        }
        Mf.a<? extends T> aVar = this.f98207b;
        if (aVar != null) {
            T invoke = aVar.invoke();
            if (androidx.concurrent.futures.a.a(f98206f, this, j02, invoke)) {
                this.f98207b = null;
                return invoke;
            }
        }
        return (T) this.f98208c;
    }

    @Override
    public boolean isInitialized() {
        return this.f98208c != J0.f98183a;
    }

    @NotNull
    public String toString() {
        return isInitialized() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
