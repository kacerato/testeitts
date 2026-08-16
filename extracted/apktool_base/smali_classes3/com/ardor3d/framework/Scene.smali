.class public interface abstract Lcom/ardor3d/framework/Scene;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract doPick(Lcom/ardor3d/math/Ray3;)Lcom/ardor3d/intersection/PickResults;
.end method

.method public abstract renderUnto(Lcom/ardor3d/renderer/Renderer;)Z
    .annotation runtime Lcom/ardor3d/annotation/MainThread;
    .end annotation
.end method
