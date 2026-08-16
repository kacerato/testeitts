.class Lcom/threed/jpct/util/Overlay$MyController;
.super Lcom/threed/jpct/GenericVertexController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threed/jpct/util/Overlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyController"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private poss:[Lcom/threed/jpct/SimpleVector;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/threed/jpct/GenericVertexController;-><init>()V

    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/threed/jpct/SimpleVector;

    iput-object v0, p0, Lcom/threed/jpct/util/Overlay$MyController;->poss:[Lcom/threed/jpct/SimpleVector;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/threed/jpct/util/Overlay$MyController;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/threed/jpct/util/Overlay$MyController;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    invoke-virtual {p0}, Lcom/threed/jpct/GenericVertexController;->getDestinationMesh()[Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/util/Overlay$MyController;->poss:[Lcom/threed/jpct/SimpleVector;

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setNewBounds(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/util/Overlay$MyController;->poss:[Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    return-void
.end method
