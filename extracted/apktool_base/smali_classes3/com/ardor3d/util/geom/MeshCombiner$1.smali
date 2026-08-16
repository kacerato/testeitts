.class final Lcom/ardor3d/util/geom/MeshCombiner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/scenegraph/visitor/Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ardor3d/util/geom/MeshCombiner;->combine(Lcom/ardor3d/scenegraph/Node;)Lcom/ardor3d/scenegraph/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$sources:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/util/geom/MeshCombiner$1;->val$sources:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/ardor3d/scenegraph/Spatial;)V
    .locals 1

    instance-of v0, p1, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/util/geom/MeshCombiner$1;->val$sources:Ljava/util/List;

    check-cast p1, Lcom/ardor3d/scenegraph/Mesh;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
