.class public interface abstract Lf9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract calculateRoadPointForward()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
.end method

.method public abstract calculateRoadPointPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract setFirst(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "first"
        }
    .end annotation
.end method

.method public abstract setLast(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "last"
        }
    .end annotation
.end method

.method public abstract setSequencials(Lf9/a;Lf9/a;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previous",
            "next"
        }
    .end annotation
.end method

.method public abstract setUsageComponent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation
.end method
