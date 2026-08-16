package androidx.activity.result;

import Mf.l;
import androidx.activity.result.contract.ActivityResultContract;
import kotlin.jvm.internal.M;
import nf.P0;

public final class ActivityResultCallerKt {
    public static final <I, O> ActivityResultLauncher<P0> registerForActivityResult(ActivityResultCaller activityResultCaller, ActivityResultContract<I, O> contract, I i10, ActivityResultRegistry registry, final l<? super O, P0> callback) {
        M.p(activityResultCaller, "<this>");
        M.p(contract, "contract");
        M.p(registry, "registry");
        M.p(callback, "callback");
        ActivityResultLauncher<I> registerForActivityResult = activityResultCaller.registerForActivityResult(contract, registry, new ActivityResultCallback() {
            @Override
            public final void onActivityResult(Object obj) {
                ActivityResultCallerKt.m671registerForActivityResult$lambda0(l.this, obj);
            }
        });
        M.o(registerForActivityResult, "registerForActivityResul\u2026egistry) { callback(it) }");
        return new ActivityResultCallerLauncher(registerForActivityResult, contract, i10);
    }

    public static final void m671registerForActivityResult$lambda0(l callback, Object obj) {
        M.p(callback, "$callback");
        callback.invoke(obj);
    }

    public static final void m672registerForActivityResult$lambda1(l callback, Object obj) {
        M.p(callback, "$callback");
        callback.invoke(obj);
    }

    public static final <I, O> ActivityResultLauncher<P0> registerForActivityResult(ActivityResultCaller activityResultCaller, ActivityResultContract<I, O> contract, I i10, final l<? super O, P0> callback) {
        M.p(activityResultCaller, "<this>");
        M.p(contract, "contract");
        M.p(callback, "callback");
        ActivityResultLauncher<I> registerForActivityResult = activityResultCaller.registerForActivityResult(contract, new ActivityResultCallback() {
            @Override
            public final void onActivityResult(Object obj) {
                ActivityResultCallerKt.m672registerForActivityResult$lambda1(l.this, obj);
            }
        });
        M.o(registerForActivityResult, "registerForActivityResul\u2026ontract) { callback(it) }");
        return new ActivityResultCallerLauncher(registerForActivityResult, contract, i10);
    }
}
