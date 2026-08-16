.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->runRemoveBrush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$B;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$B;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$B;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$B;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getSelectedBrush()LO8/a;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$B;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$3600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$B;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget v4, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushSize:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    cmpg-float v6, v4, v5

    if-gtz v6, :cond_2

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$3600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    :try_start_2
    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v3

    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->d(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v6, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v4, v6

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v7, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr v6, v7

    cmpg-float v7, v4, v5

    if-lez v7, :cond_0

    cmpg-float v7, v6, v5

    if-gtz v7, :cond_3

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$B;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v7, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->findInSquare(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Ljava/util/List;

    move-result-object v1

    new-instance v7, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    move v8, v0

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lm9/k;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v9}, Lm9/k;->b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->l()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v11

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v10

    iget v12, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v11, v12

    div-float/2addr v11, v4

    iget v12, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr v10, v12

    div-float/2addr v10, v6

    invoke-virtual {v2, v11, v10}, LO8/a;->c(FF)F

    move-result v10

    iget-object v11, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$B;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget v11, v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushIntensity:F

    mul-float/2addr v10, v11

    invoke-static {v10}, LNc/b;->I(F)F

    move-result v10

    const v11, 0x3c23d70a    # 0.01f

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_4

    goto :goto_3

    :cond_4
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v5, v11}, LNc/d;->h(FF)F

    move-result v11

    cmpl-float v10, v11, v10

    if-ltz v10, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v9

    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$B;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v1, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->deleteHPOs(Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$B;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$3600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_4
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$B;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$3600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
