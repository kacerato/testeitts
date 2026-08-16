package com.jme3.system;

import com.jme3.input.JoyInput;
import com.jme3.input.KeyInput;
import com.jme3.input.MouseInput;
import com.jme3.input.TouchInput;
import com.jme3.opencl.Context;
import com.jme3.renderer.Renderer;

public interface JmeContext {

    public enum Type {
        Display,
        Canvas,
        OffscreenSurface,
        Headless
    }

    void create(boolean z10);

    void destroy(boolean z10);

    Displays getDisplays();

    int getFramebufferHeight();

    int getFramebufferWidth();

    JoyInput getJoyInput();

    KeyInput getKeyInput();

    MouseInput getMouseInput();

    Context getOpenCLContext();

    int getPrimaryDisplay();

    Renderer getRenderer();

    AppSettings getSettings();

    SystemListener getSystemListener();

    Timer getTimer();

    TouchInput getTouchInput();

    Type getType();

    int getWindowXPosition();

    int getWindowYPosition();

    boolean isCreated();

    boolean isRenderable();

    void restart();

    void setAutoFlushFrames(boolean z10);

    void setSettings(AppSettings appSettings);

    void setSystemListener(SystemListener systemListener);

    void setTitle(String str);
}
