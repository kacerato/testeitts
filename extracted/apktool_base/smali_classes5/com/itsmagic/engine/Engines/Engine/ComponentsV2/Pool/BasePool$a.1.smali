.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->prepareBase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$ObjectPoolPos",
            "val$inverseBaseObjectMat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->startPreparationOfBase()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$1402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;F)F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$1500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm9/c;

    :try_start_0
    invoke-virtual {v3}, Lm9/c;->b()V

    invoke-virtual {v3}, Lm9/c;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lm9/c;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lm9/c;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->m()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v5

    invoke-virtual {v3}, Lm9/c;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->getRadius()F

    move-result v3

    add-float/2addr v5, v3

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$1400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)F

    move-result v6

    invoke-static {v6, v5}, LNc/b;->S0(FF)F

    move-result v5

    invoke-static {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$1402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;F)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v4

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$1600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-static {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$1700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$1800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$1902(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Z)Z

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$2002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Z)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$2102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Z)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$1800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$2200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
