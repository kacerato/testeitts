package androidx.activity.result;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.contract.ActivityResultContract;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import nf.P0;

public final class ActivityResultCallerLauncher$resultContract$2 extends O implements Mf.a<AnonymousClass1> {
    final ActivityResultCallerLauncher<I, O> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityResultCallerLauncher$resultContract$2(ActivityResultCallerLauncher<I, O> activityResultCallerLauncher) {
        super(0);
        this.this$0 = activityResultCallerLauncher;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.activity.result.ActivityResultCallerLauncher$resultContract$2$1] */
    @Override
    public final AnonymousClass1 invoke() {
        final ActivityResultCallerLauncher<I, O> activityResultCallerLauncher = this.this$0;
        return new ActivityResultContract<P0, O>() {
            @Override
            public O parseResult(int i10, Intent intent) {
                return (O) activityResultCallerLauncher.getCallerContract().parseResult(i10, intent);
            }

            @Override
            public Intent createIntent(Context context, P0 input) {
                M.p(context, "context");
                M.p(input, "input");
                return activityResultCallerLauncher.getCallerContract().createIntent(context, activityResultCallerLauncher.getCallerInput());
            }
        };
    }
}
