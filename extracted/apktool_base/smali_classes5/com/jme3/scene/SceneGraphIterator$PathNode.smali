.class Lcom/jme3/scene/SceneGraphIterator$PathNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/SceneGraphIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathNode"
.end annotation


# instance fields
.field iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation
.end field

.field node:Lcom/jme3/scene/Node;


# direct methods
.method public constructor <init>(Lcom/jme3/scene/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/scene/SceneGraphIterator$PathNode;->node:Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/scene/SceneGraphIterator$PathNode;->iterator:Ljava/util/Iterator;

    return-void
.end method
