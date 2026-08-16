package kotlin.jvm.internal;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

public final class C14012i {
    @NotNull
    public static final <T> Iterator<T> a(@NotNull T[] array) {
        M.p(array, "array");
        return new C14011h(array);
    }
}
