.class public LEb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/shapes/HullCollisionShape;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, LEb/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/shapes/HullCollisionShape;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LEb/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, LEb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v0, :cond_0

    iget-object v0, p0, LEb/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, LIb/k;->j(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    iput-object v0, p0, LEb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    :cond_0
    iget-object v0, p0, LEb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "convexMesh"
        }
    .end annotation

    iput-object p1, p0, LEb/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shapes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/shapes/HullCollisionShape;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LEb/a;->b:Ljava/util/List;

    return-void
.end method
