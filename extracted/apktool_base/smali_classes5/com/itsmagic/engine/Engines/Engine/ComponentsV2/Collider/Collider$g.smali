.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->ConvexModel:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)LEb/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)LEb/a;

    move-result-object v0

    invoke-virtual {v0}, LEb/a;->a()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    :cond_0
    return-object v3

    :cond_1
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Decomposition:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v1, v2, :cond_3

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)LEb/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)LEb/a;

    move-result-object v0

    invoke-virtual {v0}, LEb/a;->a()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    :cond_2
    return-object v3

    :cond_3
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCollisionVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->ConvexModel:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Collider shape type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not supported yet!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->calculateNavMeshMatrix()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->K:[F

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->ConvexModel:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
