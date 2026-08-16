.class public Lcom/jme3/scene/SceneGraphVisitorAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/scene/SceneGraphVisitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/jme3/scene/Geometry;)V
    .locals 0

    .line 1
    return-void
.end method

.method public visit(Lcom/jme3/scene/Node;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final visit(Lcom/jme3/scene/Spatial;)V
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/SceneGraphVisitorAdapter;->visit(Lcom/jme3/scene/Geometry;)V

    goto :goto_0

    .line 5
    :cond_0
    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/SceneGraphVisitorAdapter;->visit(Lcom/jme3/scene/Node;)V

    :goto_0
    return-void
.end method
