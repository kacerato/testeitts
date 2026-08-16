.class public interface abstract Lcom/jme3/terrain/Terrain;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract adjustHeight(Lcom/jme3/math/Vector2f;F)V
.end method

.method public abstract adjustHeight(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector2f;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract generateEntropy(Lcom/jme3/terrain/ProgressMonitor;)V
.end method

.method public abstract getHeight(Lcom/jme3/math/Vector2f;)F
.end method

.method public abstract getHeightMap()[F
.end method

.method public abstract getHeightmapHeight(Lcom/jme3/math/Vector2f;)F
.end method

.method public abstract getMaterial()Lcom/jme3/material/Material;
.end method

.method public abstract getMaterial(Lcom/jme3/math/Vector3f;)Lcom/jme3/material/Material;
.end method

.method public abstract getMaxLod()I
.end method

.method public abstract getNormal(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector3f;
.end method

.method public abstract getNumMajorSubdivisions()I
.end method

.method public abstract getTerrainSize()I
.end method

.method public abstract setHeight(Lcom/jme3/math/Vector2f;F)V
.end method

.method public abstract setHeight(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector2f;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLocked(Z)V
.end method
