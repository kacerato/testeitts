package java.util;

import java.util.function.Consumer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Iterator.class
 */
public interface Iterator<E> {
    boolean hasNext();

    E next();

    default void remove() {
        throw new RuntimeException("Stub!");
    }

    default void forEachRemaining(Consumer<? super E> action) {
        throw new RuntimeException("Stub!");
    }
}
