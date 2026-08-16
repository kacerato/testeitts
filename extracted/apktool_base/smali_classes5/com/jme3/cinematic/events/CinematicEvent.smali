.class public interface abstract Lcom/jme3/cinematic/events/CinematicEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract forceStop()V
.end method

.method public abstract getDuration()F
.end method

.method public abstract getInitialDuration()F
.end method

.method public abstract getLoopMode()Lcom/jme3/animation/LoopMode;
.end method

.method public abstract getPlayState()Lcom/jme3/cinematic/PlayState;
.end method

.method public abstract getSpeed()F
.end method

.method public abstract getTime()F
.end method

.method public abstract initEvent(Lcom/jme3/app/Application;Lcom/jme3/cinematic/Cinematic;)V
.end method

.method public abstract internalUpdate(F)V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract setInitialDuration(F)V
.end method

.method public abstract setLoopMode(Lcom/jme3/animation/LoopMode;)V
.end method

.method public abstract setSpeed(F)V
.end method

.method public abstract setTime(F)V
.end method

.method public abstract stop()V
.end method
