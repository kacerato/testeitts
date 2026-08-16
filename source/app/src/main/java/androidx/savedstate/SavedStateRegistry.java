package androidx.savedstate;

import android.os.Bundle;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.Recreator;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;

public final class SavedStateRegistry {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final String SAVED_COMPONENTS_KEY = "androidx.lifecycle.BundlableSavedStateRegistry.key";
    private boolean attached;
    private final SafeIterableMap<String, SavedStateProvider> components = new SafeIterableMap<>();
    private boolean isAllowingSavingState = true;
    private boolean isRestored;
    private Recreator.SavedStateProvider recreatorProvider;
    private Bundle restoredState;

    public interface AutoRecreated {
        void onRecreated(SavedStateRegistryOwner savedStateRegistryOwner);
    }

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        private Companion() {
        }
    }

    public interface SavedStateProvider {
        Bundle saveState();
    }

    public static final void m686performAttach$lambda4(SavedStateRegistry this$0, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        M.p(this$0, "this$0");
        M.p(lifecycleOwner, "<anonymous parameter 0>");
        M.p(event, "event");
        if (event == Lifecycle.Event.ON_START) {
            this$0.isAllowingSavingState = true;
        } else if (event == Lifecycle.Event.ON_STOP) {
            this$0.isAllowingSavingState = false;
        }
    }

    public final Bundle consumeRestoredStateForKey(String key) {
        M.p(key, "key");
        if (!this.isRestored) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        Bundle bundle = this.restoredState;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle != null ? bundle.getBundle(key) : null;
        Bundle bundle3 = this.restoredState;
        if (bundle3 != null) {
            bundle3.remove(key);
        }
        Bundle bundle4 = this.restoredState;
        if (bundle4 == null || bundle4.isEmpty()) {
            this.restoredState = null;
        }
        return bundle2;
    }

    public final SavedStateProvider getSavedStateProvider(String key) {
        M.p(key, "key");
        Iterator<Map.Entry<String, SavedStateProvider>> it = this.components.iterator();
        while (it.hasNext()) {
            Map.Entry<String, SavedStateProvider> components = it.next();
            M.o(components, "components");
            String key2 = components.getKey();
            SavedStateProvider value = components.getValue();
            if (M.g(key2, key)) {
                return value;
            }
        }
        return null;
    }

    public final boolean isAllowingSavingState$savedstate_release() {
        return this.isAllowingSavingState;
    }

    public final boolean isRestored() {
        return this.isRestored;
    }

    public final void performAttach$savedstate_release(Lifecycle lifecycle) {
        M.p(lifecycle, "lifecycle");
        if (this.attached) {
            throw new IllegalStateException("SavedStateRegistry was already attached.");
        }
        lifecycle.addObserver(new LifecycleEventObserver() {
            @Override
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                SavedStateRegistry.m686performAttach$lambda4(SavedStateRegistry.this, lifecycleOwner, event);
            }
        });
        this.attached = true;
    }

    public final void performRestore$savedstate_release(Bundle bundle) {
        if (!this.attached) {
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).");
        }
        if (this.isRestored) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        this.restoredState = bundle != null ? bundle.getBundle(SAVED_COMPONENTS_KEY) : null;
        this.isRestored = true;
    }

    public final void performSave(Bundle outBundle) {
        M.p(outBundle, "outBundle");
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.restoredState;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        SafeIterableMap<String, SavedStateProvider>.IteratorWithAdditions iteratorWithAdditions = this.components.iteratorWithAdditions();
        M.o(iteratorWithAdditions, "this.components.iteratorWithAdditions()");
        while (iteratorWithAdditions.hasNext()) {
            Map.Entry next = iteratorWithAdditions.next();
            bundle.putBundle((String) next.getKey(), ((SavedStateProvider) next.getValue()).saveState());
        }
        if (bundle.isEmpty()) {
            return;
        }
        outBundle.putBundle(SAVED_COMPONENTS_KEY, bundle);
    }

    public final void registerSavedStateProvider(String key, SavedStateProvider provider) {
        M.p(key, "key");
        M.p(provider, "provider");
        if (this.components.putIfAbsent(key, provider) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    public final void runOnNextRecreation(Class<? extends AutoRecreated> clazz) {
        M.p(clazz, "clazz");
        if (!this.isAllowingSavingState) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        Recreator.SavedStateProvider savedStateProvider = this.recreatorProvider;
        if (savedStateProvider == null) {
            savedStateProvider = new Recreator.SavedStateProvider(this);
        }
        this.recreatorProvider = savedStateProvider;
        try {
            clazz.getDeclaredConstructor(null);
            Recreator.SavedStateProvider savedStateProvider2 = this.recreatorProvider;
            if (savedStateProvider2 != null) {
                String name = clazz.getName();
                M.o(name, "clazz.name");
                savedStateProvider2.add(name);
            }
        } catch (NoSuchMethodException e10) {
            throw new IllegalArgumentException("Class " + clazz.getSimpleName() + " must have default constructor in order to be automatically recreated", e10);
        }
    }

    public final void setAllowingSavingState$savedstate_release(boolean z10) {
        this.isAllowingSavingState = z10;
    }

    public final void unregisterSavedStateProvider(String key) {
        M.p(key, "key");
        this.components.remove(key);
    }
}
