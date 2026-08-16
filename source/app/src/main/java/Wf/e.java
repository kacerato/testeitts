package Wf;

import kotlin.jvm.internal.M;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class e {
    @Nullable
    public static final String a(@NotNull KClass<?> kClass) {
        M.p(kClass, "<this>");
        return kClass.getQualifiedName();
    }
}
