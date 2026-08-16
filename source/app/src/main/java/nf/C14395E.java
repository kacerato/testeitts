package nf;

import java.io.Serializable;
import org.jetbrains.annotations.NotNull;

public final class C14395E<T> implements I<T>, Serializable {

    public final T f98165b;

    public C14395E(T t10) {
        this.f98165b = t10;
    }

    @Override
    public T getValue() {
        return this.f98165b;
    }

    @Override
    public boolean isInitialized() {
        return true;
    }

    @NotNull
    public String toString() {
        return String.valueOf(getValue());
    }
}
