package androidx.activity;

import androidx.core.util.Consumer;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class OnBackPressedCallback {
    private CopyOnWriteArrayList<Cancellable> mCancellables = new CopyOnWriteArrayList<>();
    private boolean mEnabled;
    private Consumer<Boolean> mEnabledConsumer;

    public OnBackPressedCallback(boolean z10) {
        this.mEnabled = z10;
    }

    public void addCancellable(Cancellable cancellable) {
        this.mCancellables.add(cancellable);
    }

    public abstract void handleOnBackPressed();

    public final boolean isEnabled() {
        return this.mEnabled;
    }

    public final void remove() {
        Iterator<Cancellable> it = this.mCancellables.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
    }

    public void removeCancellable(Cancellable cancellable) {
        this.mCancellables.remove(cancellable);
    }

    public final void setEnabled(boolean z10) {
        this.mEnabled = z10;
        Consumer<Boolean> consumer = this.mEnabledConsumer;
        if (consumer != null) {
            consumer.accept(Boolean.valueOf(z10));
        }
    }

    public void setIsEnabledConsumer(Consumer<Boolean> consumer) {
        this.mEnabledConsumer = consumer;
    }
}
