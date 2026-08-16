.class public abstract Lcom/jme3/scene/GeometryGroupNode;
.super Lcom/jme3/scene/Node;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Node;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getGeometryStartIndex(Lcom/jme3/scene/Geometry;)I
    .locals 0

    iget p0, p0, Lcom/jme3/scene/Geometry;->startIndex:I

    return p0
.end method

.method public static setGeometryStartIndex(Lcom/jme3/scene/Geometry;I)V
    .locals 1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/jme3/scene/Geometry;->startIndex:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method


# virtual methods
.method public abstract onGeometryUnassociated(Lcom/jme3/scene/Geometry;)V
.end method

.method public abstract onMaterialChange(Lcom/jme3/scene/Geometry;)V
.end method

.method public abstract onMeshChange(Lcom/jme3/scene/Geometry;)V
.end method

.method public abstract onTransformChange(Lcom/jme3/scene/Geometry;)V
.end method
