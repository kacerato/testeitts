package java.util.function;

import java.util.Comparator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/function/BinaryOperator.class
 */
@FunctionalInterface
public interface BinaryOperator<T> extends BiFunction<T, T, T> {
    static <T> BinaryOperator<T> minBy(Comparator<? super T> comparator) {
        throw new RuntimeException("Stub!");
    }

    static <T> BinaryOperator<T> maxBy(Comparator<? super T> comparator) {
        throw new RuntimeException("Stub!");
    }
}
