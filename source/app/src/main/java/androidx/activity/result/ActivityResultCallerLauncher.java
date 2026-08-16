package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContract;
import androidx.core.app.ActivityOptionsCompat;
import kotlin.jvm.internal.M;
import nf.I;
import nf.K;
import nf.P0;

public final class ActivityResultCallerLauncher<I, O> extends ActivityResultLauncher<P0> {
    private final ActivityResultContract<I, O> callerContract;
    private final I callerInput;
    private final ActivityResultLauncher<I> launcher;
    private final I resultContract$delegate;

    public ActivityResultCallerLauncher(ActivityResultLauncher<I> launcher, ActivityResultContract<I, O> callerContract, I i10) {
        M.p(launcher, "launcher");
        M.p(callerContract, "callerContract");
        this.launcher = launcher;
        this.callerContract = callerContract;
        this.callerInput = i10;
        this.resultContract$delegate = K.a(new ActivityResultCallerLauncher$resultContract$2(this));
    }

    public final ActivityResultContract<I, O> getCallerContract() {
        return this.callerContract;
    }

    public final I getCallerInput() {
        return this.callerInput;
    }

    @Override
    public ActivityResultContract<P0, ?> getContract() {
        return getResultContract();
    }

    public final ActivityResultLauncher<I> getLauncher() {
        return this.launcher;
    }

    public final ActivityResultContract<P0, O> getResultContract() {
        return (ActivityResultContract) this.resultContract$delegate.getValue();
    }

    @Override
    public void unregister() {
        this.launcher.unregister();
    }

    @Override
    public void launch(P0 input, ActivityOptionsCompat activityOptionsCompat) {
        M.p(input, "input");
        this.launcher.launch(this.callerInput, activityOptionsCompat);
    }
}
