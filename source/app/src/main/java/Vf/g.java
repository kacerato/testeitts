package Vf;

import java.lang.Comparable;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public interface g<T extends Comparable<? super T>> {

    public static final class a {
        public static <T extends Comparable<? super T>> boolean a(@NotNull g<T> gVar, @NotNull T value) {
            M.p(value, "value");
            return value.compareTo(gVar.getStart()) >= 0 && value.compareTo(gVar.getEndInclusive()) <= 0;
        }

        public static <T extends Comparable<? super T>> boolean b(@NotNull g<T> gVar) {
            return gVar.getStart().compareTo(gVar.getEndInclusive()) > 0;
        }
    }

    boolean contains(@NotNull T t10);

    @NotNull
    T getEndInclusive();

    @NotNull
    T getStart();

    boolean isEmpty();
}
