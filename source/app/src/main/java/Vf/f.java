package Vf;

import java.lang.Comparable;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

@InterfaceC14422l0(version = "1.1")
public interface f<T extends Comparable<? super T>> extends g<T> {

    public static final class a {
        public static <T extends Comparable<? super T>> boolean a(@NotNull f<T> fVar, @NotNull T value) {
            M.p(value, "value");
            return fVar.a(fVar.getStart(), value) && fVar.a(value, fVar.getEndInclusive());
        }

        public static <T extends Comparable<? super T>> boolean b(@NotNull f<T> fVar) {
            return !fVar.a(fVar.getStart(), fVar.getEndInclusive());
        }
    }

    boolean a(@NotNull T t10, @NotNull T t11);

    @Override
    boolean contains(@NotNull T t10);

    @Override
    boolean isEmpty();
}
