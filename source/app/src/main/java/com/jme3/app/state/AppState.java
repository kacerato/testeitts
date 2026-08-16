package com.jme3.app.state;

import com.jme3.app.Application;
import com.jme3.renderer.RenderManager;

public interface AppState {
    void cleanup();

    String getId();

    void initialize(AppStateManager appStateManager, Application application);

    boolean isEnabled();

    boolean isInitialized();

    void postRender();

    void render(RenderManager renderManager);

    void setEnabled(boolean z10);

    void stateAttached(AppStateManager appStateManager);

    void stateDetached(AppStateManager appStateManager);

    void update(float f10);
}
