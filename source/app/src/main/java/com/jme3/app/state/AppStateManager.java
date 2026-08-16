package com.jme3.app.state;

import com.jme3.app.Application;
import com.jme3.renderer.RenderManager;
import com.jme3.util.SafeArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class AppStateManager {
    private final Application app;
    private final SafeArrayList<AppState> initializing = new SafeArrayList<>(AppState.class);
    private final SafeArrayList<AppState> states = new SafeArrayList<>(AppState.class);
    private final SafeArrayList<AppState> terminating = new SafeArrayList<>(AppState.class);
    private final ConcurrentMap<String, AppState> stateIndex = new ConcurrentHashMap();

    public AppStateManager(Application application) {
        this.app = application;
    }

    public boolean attach(AppState appState) {
        synchronized (this.states) {
            try {
                if (appState.getId() != null && this.stateIndex.putIfAbsent(appState.getId(), appState) != null) {
                    throw new IllegalArgumentException("ID:" + appState.getId() + " is already being used by another state:" + ((Object) this.stateIndex.get(appState.getId())));
                }
                if (this.states.contains(appState) || this.initializing.contains(appState)) {
                    return false;
                }
                appState.stateAttached(this);
                this.initializing.add(appState);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void attachAll(AppState... appStateArr) {
        attachAll(Arrays.asList(appStateArr));
    }

    public void cleanup() {
        for (AppState appState : getStates()) {
            appState.cleanup();
        }
    }

    public boolean detach(AppState appState) {
        synchronized (this.states) {
            try {
                this.stateIndex.values().remove(appState);
                if (this.states.contains(appState)) {
                    appState.stateDetached(this);
                    this.states.remove(appState);
                    this.terminating.add(appState);
                    return true;
                }
                if (!this.initializing.contains(appState)) {
                    return false;
                }
                appState.stateDetached(this);
                this.initializing.remove(appState);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public Application getApplication() {
        return this.app;
    }

    public AppState[] getInitializing() {
        AppState[] array;
        synchronized (this.states) {
            array = this.initializing.getArray();
        }
        return array;
    }

    public <T extends AppState> T getState(Class<T> cls) {
        return (T) getState((Class) cls, false);
    }

    public AppState[] getStates() {
        AppState[] array;
        synchronized (this.states) {
            array = this.states.getArray();
        }
        return array;
    }

    public AppState[] getTerminating() {
        AppState[] array;
        synchronized (this.states) {
            array = this.terminating.getArray();
        }
        return array;
    }

    public boolean hasState(AppState appState) {
        boolean z10;
        synchronized (this.states) {
            try {
                z10 = this.states.contains(appState) || this.initializing.contains(appState);
            } finally {
            }
        }
        return z10;
    }

    public void initializePending() {
        AppState[] initializing = getInitializing();
        if (initializing.length == 0) {
            return;
        }
        synchronized (this.states) {
            List asList = Arrays.asList(initializing);
            this.states.addAll(asList);
            this.initializing.removeAll(asList);
        }
        for (AppState appState : initializing) {
            appState.initialize(this, this.app);
        }
    }

    public void postRender() {
        for (AppState appState : getStates()) {
            if (appState.isEnabled()) {
                if (this.app.getAppProfiler() != null) {
                    this.app.getAppProfiler().appSubStep(appState.getClass().getSimpleName());
                }
                appState.postRender();
            }
        }
    }

    public void render(RenderManager renderManager) {
        for (AppState appState : getStates()) {
            if (appState.isEnabled()) {
                if (this.app.getAppProfiler() != null) {
                    this.app.getAppProfiler().appSubStep(appState.getClass().getSimpleName());
                }
                appState.render(renderManager);
            }
        }
    }

    public <T extends AppState> T stateForId(String str, Class<T> cls) {
        AppState state = getState(str, cls);
        if (state != null) {
            return cls.cast(state);
        }
        throw new IllegalArgumentException("State not found for:" + str);
    }

    public void terminatePending() {
        AppState[] terminating = getTerminating();
        if (terminating.length == 0) {
            return;
        }
        for (AppState appState : terminating) {
            appState.cleanup();
        }
        synchronized (this.states) {
            this.terminating.removeAll(Arrays.asList(terminating));
        }
    }

    public void update(float f10) {
        terminatePending();
        initializePending();
        for (AppState appState : getStates()) {
            if (appState.isEnabled()) {
                if (this.app.getAppProfiler() != null) {
                    this.app.getAppProfiler().appSubStep(appState.getClass().getSimpleName());
                }
                appState.update(f10);
            }
        }
    }

    public void attachAll(Iterable<AppState> iterable) {
        synchronized (this.states) {
            try {
                Iterator<AppState> it = iterable.iterator();
                while (it.hasNext()) {
                    attach(it.next());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public <T extends AppState> T getState(Class<T> cls, boolean z10) {
        synchronized (this.states) {
            try {
                for (AppState appState : getStates()) {
                    T t10 = (T) appState;
                    if (cls.isAssignableFrom(t10.getClass())) {
                        return t10;
                    }
                }
                for (AppState appState2 : getInitializing()) {
                    T t11 = (T) appState2;
                    if (cls.isAssignableFrom(t11.getClass())) {
                        return t11;
                    }
                }
                if (!z10) {
                    return null;
                }
                throw new IllegalArgumentException("State not found for:" + ((Object) cls));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean hasState(String str) {
        return this.stateIndex.containsKey(str);
    }

    public <T extends AppState> T getState(String str, Class<T> cls) {
        return cls.cast(this.stateIndex.get(str));
    }
}
