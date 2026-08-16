package com.jme3.app.state;

import com.jme3.app.Application;
import com.jme3.renderer.RenderManager;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class BaseAppState implements AppState {
    private static final Logger log = Logger.getLogger(BaseAppState.class.getName());
    private Application app;
    private boolean enabled = true;

    private String f81558id;
    private boolean initialized;

    public BaseAppState() {
    }

    @Override
    public final void cleanup() {
        Logger logger = log;
        Level level = Level.FINEST;
        logger.log(level, "cleanup():{0}", this);
        if (isEnabled()) {
            logger.log(level, "onDisable():{0}", this);
            onDisable();
        }
        cleanup(this.app);
        this.initialized = false;
    }

    public abstract void cleanup(Application application);

    public final Application getApplication() {
        return this.app;
    }

    @Override
    public String getId() {
        return this.f81558id;
    }

    public final <T extends AppState> T getState(Class<T> cls) {
        return (T) getState((Class) cls, false);
    }

    public final AppStateManager getStateManager() {
        return this.app.getStateManager();
    }

    public abstract void initialize(Application application);

    @Override
    public final void initialize(AppStateManager appStateManager, Application application) {
        Logger logger = log;
        Level level = Level.FINEST;
        logger.log(level, "initialize():{0}", this);
        this.app = application;
        this.initialized = true;
        initialize(application);
        if (isEnabled()) {
            logger.log(level, "onEnable():{0}", this);
            onEnable();
        }
    }

    @Override
    public final boolean isEnabled() {
        return this.enabled;
    }

    @Override
    public final boolean isInitialized() {
        return this.initialized;
    }

    public abstract void onDisable();

    public abstract void onEnable();

    @Override
    public void postRender() {
    }

    @Override
    public void render(RenderManager renderManager) {
    }

    @Override
    public final void setEnabled(boolean z10) {
        if (this.enabled == z10) {
            return;
        }
        this.enabled = z10;
        if (isInitialized()) {
            if (z10) {
                log.log(Level.FINEST, "onEnable():{0}", this);
                onEnable();
            } else {
                log.log(Level.FINEST, "onDisable():{0}", this);
                onDisable();
            }
        }
    }

    public void setId(String str) {
        this.f81558id = str;
    }

    @Override
    public void stateAttached(AppStateManager appStateManager) {
    }

    @Override
    public void stateDetached(AppStateManager appStateManager) {
    }

    @Override
    public void update(float f10) {
    }

    public final <T extends AppState> T getState(Class<T> cls, boolean z10) {
        return (T) getStateManager().getState(cls, z10);
    }

    public BaseAppState(String str) {
        this.f81558id = str;
    }

    public final <T extends AppState> T getState(String str, Class<T> cls) {
        return (T) getState(str, cls, false);
    }

    public final <T extends AppState> T getState(String str, Class<T> cls, boolean z10) {
        if (z10) {
            return (T) getStateManager().stateForId(str, cls);
        }
        return (T) getStateManager().getState(str, cls);
    }
}
