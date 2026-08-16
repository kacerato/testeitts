package com.jme3.app.state;

import com.jme3.app.Application;
import com.jme3.renderer.RenderManager;

public abstract class AbstractAppState implements AppState {

    private String f81557id;
    protected boolean initialized = false;
    private boolean enabled = true;

    public AbstractAppState() {
    }

    @Override
    public void cleanup() {
        this.initialized = false;
    }

    @Override
    public String getId() {
        return this.f81557id;
    }

    @Override
    public void initialize(AppStateManager appStateManager, Application application) {
        this.initialized = true;
    }

    @Override
    public boolean isEnabled() {
        return this.enabled;
    }

    @Override
    public boolean isInitialized() {
        return this.initialized;
    }

    @Override
    public void postRender() {
    }

    @Override
    public void render(RenderManager renderManager) {
    }

    @Override
    public void setEnabled(boolean z10) {
        this.enabled = z10;
    }

    public void setId(String str) {
        this.f81557id = str;
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

    public AbstractAppState(String str) {
        this.f81557id = str;
    }
}
