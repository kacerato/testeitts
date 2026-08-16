package com.jme3.app;

import com.jme3.app.state.AppStateManager;
import com.jme3.asset.AssetManager;
import com.jme3.audio.AudioRenderer;
import com.jme3.audio.Listener;
import com.jme3.input.InputManager;
import com.jme3.profile.AppProfiler;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.Renderer;
import com.jme3.renderer.ViewPort;
import com.jme3.system.AppSettings;
import com.jme3.system.JmeContext;
import com.jme3.system.Timer;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;

public interface Application {
    <V> Future<V> enqueue(Callable<V> callable);

    void enqueue(Runnable runnable);

    AppProfiler getAppProfiler();

    AssetManager getAssetManager();

    AudioRenderer getAudioRenderer();

    Camera getCamera();

    JmeContext getContext();

    ViewPort getGuiViewPort();

    InputManager getInputManager();

    Listener getListener();

    LostFocusBehavior getLostFocusBehavior();

    RenderManager getRenderManager();

    Renderer getRenderer();

    AppStateManager getStateManager();

    Timer getTimer();

    ViewPort getViewPort();

    boolean isPauseOnLostFocus();

    void restart();

    void setAppProfiler(AppProfiler appProfiler);

    void setLostFocusBehavior(LostFocusBehavior lostFocusBehavior);

    void setPauseOnLostFocus(boolean z10);

    void setSettings(AppSettings appSettings);

    void setTimer(Timer timer);

    void start();

    void start(boolean z10);

    void stop();

    void stop(boolean z10);
}
