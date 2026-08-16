package com.jme3.app.state;

import com.jme3.app.Application;
import com.jme3.util.SafeArrayList;

public class CompositeAppState extends BaseAppState {
    private boolean attached;
    private boolean childrenEnabled;
    private AppStateManager stateManager;
    private final SafeArrayList<AppStateEntry> states = new SafeArrayList<>(AppStateEntry.class);

    public class AppStateEntry {
        boolean enabled;
        boolean override;
        AppState state;

        public AppStateEntry(AppState appState, boolean z10) {
            this.state = appState;
            this.override = z10;
            this.enabled = appState.isEnabled();
        }

        public void setEnabled(boolean z10) {
            if (!this.override) {
                this.state.setEnabled(z10);
            } else if (z10) {
                this.state.setEnabled(this.enabled);
            } else {
                this.enabled = this.state.isEnabled();
                this.state.setEnabled(false);
            }
        }
    }

    public CompositeAppState(AppState... appStateArr) {
        for (AppState appState : appStateArr) {
            this.states.add(new AppStateEntry(appState, false));
        }
    }

    private AppStateEntry entry(AppState appState) {
        for (AppStateEntry appStateEntry : this.states.getArray()) {
            if (appStateEntry.state == appState) {
                return appStateEntry;
            }
        }
        return null;
    }

    private int indexOf(AppState appState) {
        for (int i10 = 0; i10 < this.states.size(); i10++) {
            if (this.states.get(i10).state == appState) {
                return i10;
            }
        }
        return -1;
    }

    public <T extends AppState> T addChild(T t10) {
        return (T) addChild(t10, false);
    }

    @Override
    public void cleanup(Application application) {
    }

    public void clearChildren() {
        for (AppStateEntry appStateEntry : this.states.getArray()) {
            removeChild(appStateEntry.state);
        }
    }

    public <T extends AppState> T getChild(Class<T> cls) {
        for (AppStateEntry appStateEntry : this.states.getArray()) {
            if (cls.isInstance(appStateEntry.state)) {
                return cls.cast(appStateEntry.state);
            }
        }
        return null;
    }

    @Override
    public void initialize(Application application) {
    }

    @Override
    public void onDisable() {
        setChildrenEnabled(false);
    }

    @Override
    public void onEnable() {
        setChildrenEnabled(true);
    }

    public void removeChild(AppState appState) {
        int indexOf = indexOf(appState);
        if (indexOf < 0) {
            return;
        }
        this.states.remove(indexOf);
        if (this.attached) {
            this.stateManager.detach(appState);
        }
    }

    public void setChildrenEnabled(boolean z10) {
        if (this.childrenEnabled == z10) {
            return;
        }
        this.childrenEnabled = z10;
        for (AppStateEntry appStateEntry : this.states.getArray()) {
            appStateEntry.setEnabled(z10);
        }
    }

    public void setOverrideEnabled(AppState appState, boolean z10) {
        AppStateEntry entry = entry(appState);
        if (entry == null) {
            throw new IllegalArgumentException("State not managed:" + ((Object) appState));
        }
        if (z10) {
            entry.override = true;
        } else {
            entry.override = false;
            entry.state.setEnabled(isEnabled());
        }
    }

    @Override
    public void stateAttached(AppStateManager appStateManager) {
        this.stateManager = appStateManager;
        for (AppStateEntry appStateEntry : this.states.getArray()) {
            appStateManager.attach(appStateEntry.state);
        }
        this.attached = true;
    }

    @Override
    public void stateDetached(AppStateManager appStateManager) {
        for (int size = this.states.size() - 1; size >= 0; size--) {
            appStateManager.detach(this.states.get(size).state);
        }
        this.attached = false;
        this.stateManager = null;
    }

    public <T extends AppState> T addChild(T t10, boolean z10) {
        if (indexOf(t10) >= 0) {
            return t10;
        }
        this.states.add(new AppStateEntry(t10, z10));
        if (this.attached) {
            this.stateManager.attach(t10);
        }
        return t10;
    }
}
