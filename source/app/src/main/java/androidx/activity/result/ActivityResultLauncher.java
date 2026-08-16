package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContract;
import androidx.core.app.ActivityOptionsCompat;

public abstract class ActivityResultLauncher<I> {
    public abstract ActivityResultContract<I, ?> getContract();

    public void launch(I i10) {
        launch(i10, null);
    }

    public abstract void launch(I i10, ActivityOptionsCompat activityOptionsCompat);

    public abstract void unregister();
}
