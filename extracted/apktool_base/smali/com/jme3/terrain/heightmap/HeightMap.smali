.class public interface abstract Lcom/jme3/terrain/heightmap/HeightMap;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getHeightMap()[F
.end method

.method public abstract getInterpolatedHeight(FF)F
.end method

.method public abstract getScaledHeightAtPoint(II)F
.end method

.method public abstract getScaledHeightMap()[F
.end method

.method public abstract getSize()I
.end method

.method public abstract getTrueHeightAtPoint(II)F
.end method

.method public abstract load()Z
.end method

.method public abstract setHeightAtPoint(FII)V
.end method

.method public abstract setHeightScale(F)V
.end method

.method public abstract setMagnificationFilter(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setSize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract unloadHeightMap()V
.end method
