package Vf;

import java.lang.Comparable;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import nf.InterfaceC14441w;
import nf.T0;
import org.jetbrains.annotations.NotNull;

@T0(markerClass = {InterfaceC14441w.class})
@InterfaceC14422l0(version = "1.9")
public interface r<T extends Comparable<? super T>> {

    public static final class a {
        public static <T extends Comparable<? super T>> boolean a(@NotNull r<T> rVar, @NotNull T value) {
            M.p(value, "value");
            return value.compareTo(rVar.getStart()) >= 0 && value.compareTo(rVar.b()) < 0;
        }

        public static <T extends Comparable<? super T>> boolean b(@NotNull r<T> rVar) {
            return rVar.getStart().compareTo(rVar.b()) >= 0;
        }
    }

    @NotNull
    T b();

    boolean contains(@NotNull T t10);

    @NotNull
    T getStart();

    boolean isEmpty();
}
