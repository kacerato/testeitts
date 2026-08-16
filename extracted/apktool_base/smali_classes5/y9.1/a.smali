.class public interface abstract Ly9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public b(Ly9/a;Ly9/a;)V
    .locals 0
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

    return-void
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

.method public abstract setRoad(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "road"
        }
    .end annotation
.end method
