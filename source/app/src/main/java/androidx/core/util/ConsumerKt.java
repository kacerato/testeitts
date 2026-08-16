package androidx.core.util;

import kotlin.jvm.internal.M;
import yf.f;

public final class ConsumerKt {
    public static final <T> java.util.function.Consumer<T> asConsumer(f<? super T> fVar) {
        M.p(fVar, "<this>");
        return new ContinuationConsumer(fVar);
    }
}
