package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import kotlin.jvm.internal.M;

public final class SavedStateHandleAttacher implements LifecycleEventObserver {
    private final SavedStateHandlesProvider provider;

    public SavedStateHandleAttacher(SavedStateHandlesProvider provider) {
        M.p(provider, "provider");
        this.provider = provider;
    }

    @Override
    public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
        M.p(source, "source");
        M.p(event, "event");
        if (event == Lifecycle.Event.ON_CREATE) {
            source.getLifecycle().removeObserver(this);
            this.provider.performRestore();
        } else {
            throw new IllegalStateException(("Next event must be ON_CREATE, it was " + ((Object) event)).toString());
        }
    }
}
