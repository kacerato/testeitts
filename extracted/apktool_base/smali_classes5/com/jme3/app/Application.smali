.class public interface abstract Lcom/jme3/app/Application;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract enqueue(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract enqueue(Ljava/lang/Runnable;)V
.end method

.method public abstract getAppProfiler()Lcom/jme3/profile/AppProfiler;
.end method

.method public abstract getAssetManager()Lcom/jme3/asset/AssetManager;
.end method

.method public abstract getAudioRenderer()Lcom/jme3/audio/AudioRenderer;
.end method

.method public abstract getCamera()Lcom/jme3/renderer/Camera;
.end method

.method public abstract getContext()Lcom/jme3/system/JmeContext;
.end method

.method public abstract getGuiViewPort()Lcom/jme3/renderer/ViewPort;
.end method

.method public abstract getInputManager()Lcom/jme3/input/InputManager;
.end method

.method public abstract getListener()Lcom/jme3/audio/Listener;
.end method

.method public abstract getLostFocusBehavior()Lcom/jme3/app/LostFocusBehavior;
.end method

.method public abstract getRenderManager()Lcom/jme3/renderer/RenderManager;
.end method

.method public abstract getRenderer()Lcom/jme3/renderer/Renderer;
.end method

.method public abstract getStateManager()Lcom/jme3/app/state/AppStateManager;
.end method

.method public abstract getTimer()Lcom/jme3/system/Timer;
.end method

.method public abstract getViewPort()Lcom/jme3/renderer/ViewPort;
.end method

.method public abstract isPauseOnLostFocus()Z
.end method

.method public abstract restart()V
.end method

.method public abstract setAppProfiler(Lcom/jme3/profile/AppProfiler;)V
.end method

.method public abstract setLostFocusBehavior(Lcom/jme3/app/LostFocusBehavior;)V
.end method

.method public abstract setPauseOnLostFocus(Z)V
.end method

.method public abstract setSettings(Lcom/jme3/system/AppSettings;)V
.end method

.method public abstract setTimer(Lcom/jme3/system/Timer;)V
.end method

.method public abstract start()V
.end method

.method public abstract start(Z)V
.end method

.method public abstract stop()V
.end method

.method public abstract stop(Z)V
.end method
