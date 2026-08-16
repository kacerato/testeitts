package androidx.core.os;

import android.os.OutcomeReceiver;
import kotlin.jvm.internal.M;

public final class OutcomeReceiverKt {
    public static final <R, E extends Throwable> OutcomeReceiver asOutcomeReceiver(yf.f<? super R> fVar) {
        M.p(fVar, "<this>");
        return b.a(new ContinuationOutcomeReceiver(fVar));
    }
}
