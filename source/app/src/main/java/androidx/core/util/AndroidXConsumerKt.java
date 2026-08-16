package androidx.core.util;

import kotlin.jvm.internal.M;
import yf.f;

public final class AndroidXConsumerKt {
    public static final <T> Consumer<T> asAndroidXConsumer(f<? super T> fVar) {
        M.p(fVar, "<this>");
        return new AndroidXContinuationConsumer(fVar);
    }
}
