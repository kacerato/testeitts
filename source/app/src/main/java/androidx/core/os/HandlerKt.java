package androidx.core.os;

import android.os.Handler;
import kotlin.jvm.internal.M;
import nf.P0;

public final class HandlerKt {
    public static final Runnable postAtTime(Handler handler, long j10, Object obj, Mf.a<P0> action) {
        M.p(handler, "<this>");
        M.p(action, "action");
        HandlerKt$postAtTime$runnable$1 handlerKt$postAtTime$runnable$1 = new HandlerKt$postAtTime$runnable$1(action);
        handler.postAtTime(handlerKt$postAtTime$runnable$1, obj, j10);
        return handlerKt$postAtTime$runnable$1;
    }

    public static Runnable postAtTime$default(Handler handler, long j10, Object obj, Mf.a action, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            obj = null;
        }
        M.p(handler, "<this>");
        M.p(action, "action");
        HandlerKt$postAtTime$runnable$1 handlerKt$postAtTime$runnable$1 = new HandlerKt$postAtTime$runnable$1(action);
        handler.postAtTime(handlerKt$postAtTime$runnable$1, obj, j10);
        return handlerKt$postAtTime$runnable$1;
    }

    public static final Runnable postDelayed(Handler handler, long j10, Object obj, Mf.a<P0> action) {
        M.p(handler, "<this>");
        M.p(action, "action");
        HandlerKt$postDelayed$runnable$1 handlerKt$postDelayed$runnable$1 = new HandlerKt$postDelayed$runnable$1(action);
        if (obj == null) {
            handler.postDelayed(handlerKt$postDelayed$runnable$1, j10);
        } else {
            HandlerCompat.postDelayed(handler, handlerKt$postDelayed$runnable$1, obj, j10);
        }
        return handlerKt$postDelayed$runnable$1;
    }

    public static Runnable postDelayed$default(Handler handler, long j10, Object obj, Mf.a action, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            obj = null;
        }
        M.p(handler, "<this>");
        M.p(action, "action");
        HandlerKt$postDelayed$runnable$1 handlerKt$postDelayed$runnable$1 = new HandlerKt$postDelayed$runnable$1(action);
        if (obj == null) {
            handler.postDelayed(handlerKt$postDelayed$runnable$1, j10);
        } else {
            HandlerCompat.postDelayed(handler, handlerKt$postDelayed$runnable$1, obj, j10);
        }
        return handlerKt$postDelayed$runnable$1;
    }
}
