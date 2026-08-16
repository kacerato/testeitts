package androidx.core.util;

import kotlin.jvm.internal.M;
import nf.P0;
import yf.f;

public final class RunnableKt {
    public static final Runnable asRunnable(f<? super P0> fVar) {
        M.p(fVar, "<this>");
        return new ContinuationRunnable(fVar);
    }
}
