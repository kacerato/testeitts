.class public interface abstract Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract calculateLod(Lcom/jme3/terrain/geomipmap/TerrainPatch;Ljava/util/List;Ljava/util/HashMap;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/terrain/geomipmap/TerrainPatch;",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector3f;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract clone()Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;
.end method

.method public abstract isLodOff()Z
.end method

.method public abstract turnOffLod()V
.end method

.method public abstract turnOnLod()V
.end method

.method public abstract usesVariableLod()Z
.end method
