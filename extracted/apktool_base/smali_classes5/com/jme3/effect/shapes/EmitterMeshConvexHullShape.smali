.class public Lcom/jme3/effect/shapes/EmitterMeshConvexHullShape;
.super Lcom/jme3/effect/shapes/EmitterMeshFaceShape;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/effect/shapes/EmitterMeshFaceShape;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Mesh;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/effect/shapes/EmitterMeshFaceShape;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getRandomPoint(Lcom/jme3/math/Vector3f;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/effect/shapes/EmitterMeshFaceShape;->getRandomPoint(Lcom/jme3/math/Vector3f;)V

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public getRandomPointAndNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/effect/shapes/EmitterMeshFaceShape;->getRandomPointAndNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    return-void
.end method
