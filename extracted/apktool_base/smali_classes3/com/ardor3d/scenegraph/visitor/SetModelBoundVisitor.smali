.class public Lcom/ardor3d/scenegraph/visitor/SetModelBoundVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/scenegraph/visitor/Visitor;


# instance fields
.field private final _bound:Lcom/ardor3d/bounding/BoundingVolume;


# direct methods
.method public constructor <init>(Lcom/ardor3d/bounding/BoundingVolume;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/visitor/SetModelBoundVisitor;->_bound:Lcom/ardor3d/bounding/BoundingVolume;

    return-void
.end method


# virtual methods
.method public visit(Lcom/ardor3d/scenegraph/Spatial;)V
    .locals 2

    instance-of v0, p1, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ardor3d/scenegraph/Mesh;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/visitor/SetModelBoundVisitor;->_bound:Lcom/ardor3d/bounding/BoundingVolume;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ardor3d/bounding/BoundingVolume;->clone(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/Mesh;->setModelBound(Lcom/ardor3d/bounding/BoundingVolume;)V

    :cond_0
    return-void
.end method
