.class public interface abstract Lcom/jme3/audio/AudioSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/audio/AudioSource$Status;
    }
.end annotation


# virtual methods
.method public abstract getAudioData()Lcom/jme3/audio/AudioData;
.end method

.method public abstract getChannel()I
.end method

.method public abstract getDirection()Lcom/jme3/math/Vector3f;
.end method

.method public abstract getDryFilter()Lcom/jme3/audio/Filter;
.end method

.method public abstract getInnerAngle()F
.end method

.method public abstract getMaxDistance()F
.end method

.method public abstract getOuterAngle()F
.end method

.method public abstract getPitch()F
.end method

.method public abstract getPlaybackTime()F
.end method

.method public abstract getPosition()Lcom/jme3/math/Vector3f;
.end method

.method public abstract getRefDistance()F
.end method

.method public abstract getReverbFilter()Lcom/jme3/audio/Filter;
.end method

.method public abstract getStatus()Lcom/jme3/audio/AudioSource$Status;
.end method

.method public abstract getTimeOffset()F
.end method

.method public abstract getVelocity()Lcom/jme3/math/Vector3f;
.end method

.method public abstract getVolume()F
.end method

.method public abstract isDirectional()Z
.end method

.method public abstract isLooping()Z
.end method

.method public abstract isPositional()Z
.end method

.method public abstract isReverbEnabled()Z
.end method

.method public abstract setChannel(I)V
.end method

.method public abstract setStatus(Lcom/jme3/audio/AudioSource$Status;)V
.end method
