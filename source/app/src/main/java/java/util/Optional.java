package java.util;

import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Optional.class
 */
public final class Optional<T> {
    Optional() {
        throw new RuntimeException("Stub!");
    }

    public static <T> Optional<T> empty() {
        throw new RuntimeException("Stub!");
    }

    public static <T> Optional<T> of(T value) {
        throw new RuntimeException("Stub!");
    }

    public static <T> Optional<T> ofNullable(T value) {
        throw new RuntimeException("Stub!");
    }

    public T get() {
        throw new RuntimeException("Stub!");
    }

    public boolean isPresent() {
        throw new RuntimeException("Stub!");
    }

    public void ifPresent(Consumer<? super T> consumer) {
        throw new RuntimeException("Stub!");
    }

    public Optional<T> filter(Predicate<? super T> predicate) {
        throw new RuntimeException("Stub!");
    }

    public <U> Optional<U> map(Function<? super T, ? extends U> mapper) {
        throw new RuntimeException("Stub!");
    }

    public <U> Optional<U> flatMap(Function<? super T, Optional<U>> mapper) {
        throw new RuntimeException("Stub!");
    }

    public T orElse(T other) {
        throw new RuntimeException("Stub!");
    }

    public T orElseGet(Supplier<? extends T> other) {
        throw new RuntimeException("Stub!");
    }

    public <X extends Throwable> T orElseThrow(Supplier<? extends X> exceptionSupplier) throws Throwable {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
