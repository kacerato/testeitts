.class public interface abstract Lcom/jme3/animation/Track;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract clone()Lcom/jme3/animation/Track;
.end method

.method public abstract getKeyFrameTimes()[F
.end method

.method public abstract getLength()F
.end method

.method public abstract setTime(FFLcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Lcom/jme3/util/TempVars;)V
.end method
