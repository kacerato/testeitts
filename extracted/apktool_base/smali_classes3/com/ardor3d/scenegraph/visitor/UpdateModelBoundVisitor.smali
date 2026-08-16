.class public Lcom/ardor3d/scenegraph/visitor/UpdateModelBoundVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/scenegraph/visitor/Visitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/ardor3d/scenegraph/Spatial;)V
    .locals 1

    instance-of v0, p1, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->updateModelBound()V

    :cond_0
    return-void
.end method
