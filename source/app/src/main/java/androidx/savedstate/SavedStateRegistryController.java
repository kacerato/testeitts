package androidx.savedstate;

import Lf.o;
import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;

public final class SavedStateRegistryController {
    public static final Companion Companion = new Companion(null);
    private boolean attached;
    private final SavedStateRegistryOwner owner;
    private final SavedStateRegistry savedStateRegistry;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @o
        public final SavedStateRegistryController create(SavedStateRegistryOwner owner) {
            M.p(owner, "owner");
            return new SavedStateRegistryController(owner, null);
        }

        private Companion() {
        }
    }

    public SavedStateRegistryController(SavedStateRegistryOwner savedStateRegistryOwner, C14026x c14026x) {
        this(savedStateRegistryOwner);
    }

    @o
    public static final SavedStateRegistryController create(SavedStateRegistryOwner savedStateRegistryOwner) {
        return Companion.create(savedStateRegistryOwner);
    }

    public final SavedStateRegistry getSavedStateRegistry() {
        return this.savedStateRegistry;
    }

    public final void performAttach() {
        Lifecycle lifecycle = this.owner.getLifecycle();
        M.o(lifecycle, "owner.lifecycle");
        if (lifecycle.getCurrentState() != Lifecycle.State.INITIALIZED) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        lifecycle.addObserver(new Recreator(this.owner));
        this.savedStateRegistry.performAttach$savedstate_release(lifecycle);
        this.attached = true;
    }

    public final void performRestore(Bundle bundle) {
        if (!this.attached) {
            performAttach();
        }
        Lifecycle lifecycle = this.owner.getLifecycle();
        M.o(lifecycle, "owner.lifecycle");
        if (!lifecycle.getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            this.savedStateRegistry.performRestore$savedstate_release(bundle);
            return;
        }
        throw new IllegalStateException(("performRestore cannot be called when owner is " + ((Object) lifecycle.getCurrentState())).toString());
    }

    public final void performSave(Bundle outBundle) {
        M.p(outBundle, "outBundle");
        this.savedStateRegistry.performSave(outBundle);
    }

    private SavedStateRegistryController(SavedStateRegistryOwner savedStateRegistryOwner) {
        this.owner = savedStateRegistryOwner;
        this.savedStateRegistry = new SavedStateRegistry();
    }
}
