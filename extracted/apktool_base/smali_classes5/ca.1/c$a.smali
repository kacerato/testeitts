.class public Lca/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lq6/f;->A1()V

    invoke-static {}, Lca/c;->a()Llb/e;

    move-result-object v2

    invoke-virtual {v2}, Llb/e;->n()V

    const-string v2, "Total"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2

    invoke-static {v2}, Lca/c;->d(Lq6/g;)Lq6/g;

    invoke-static {}, Lca/c;->b()Lq6/g;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-static {}, Lca/c;->b()Lq6/g;

    move-result-object v2

    invoke-virtual {v2, v3}, Lq6/g;->l(Z)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto/16 :goto_20

    :catch_0
    move-exception v2

    goto/16 :goto_1e

    :cond_0
    :goto_0
    const-string v2, "buffersRunnable"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lca/c;->j()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lca/c;->j()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lca/c;->k()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-static {v4}, Lca/c;->n(Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v5}, Lq6/f;->M1(Lq6/g;)V

    invoke-static {}, Lca/c;->m()I

    invoke-static {}, Lca/c;->k()I

    move-result v4

    invoke-static {}, Lca/c;->j()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_2

    invoke-static {v1}, Lca/c;->l(I)I

    goto :goto_1

    :catchall_1
    move-exception v3

    goto/16 :goto_1d

    :catchall_2
    move-exception v3

    invoke-static {v5}, Lq6/f;->M1(Lq6/g;)V

    throw v3

    :cond_1
    invoke-static {v1}, Lca/c;->l(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_1
    :try_start_4
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    const-string v2, "AsyncPathFinder.update"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lg9/a;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_20

    :try_start_6
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    const-string v2, "GameObjectManager.lpUpdate"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lhb/c;->c()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1f

    :try_start_8
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    const-string v2, "LODVertexManager.lpUpdate"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-static {}, LFb/b;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1e

    :try_start_a
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    const-string v2, "MaterialManager.lpUpdate"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-static {}, Lda/h;->n()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1d

    :try_start_c
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    const-string v2, "VertexManager.lpUpdate"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    invoke-static {}, LFb/c;->w()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1c

    :try_start_e
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    const-string v2, "Input.lpUpdate"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    invoke-static {}, Lrc/a;->s()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1b

    :try_start_10
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    const-string v2, "ChunkController.lpUpdate"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    invoke-static {}, LD9/a;->m()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1a

    :try_start_12
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    const-string v2, "NMGenerator.lpUpdate"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    invoke-static {}, Lab/c;->n()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_19

    :try_start_14
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    const-string v2, "MaterialShaderManager.lowTaskUpdate"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :try_start_15
    invoke-static {}, LVb/a;->H()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_18

    :try_start_16
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    const-string v2, "FileSoundManager.lowTaskUpdate"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_16
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :try_start_17
    invoke-static {}, LHc/c;->t()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    :try_start_18
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    const-string v2, "BackgroundTaskManager.lpUpdate"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :try_start_19
    invoke-static {}, Lb4/b;->i()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_16

    :try_start_1a
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    const-string v2, "PanelsController.lpTaskUpdate"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_1a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :try_start_1b
    invoke-static {}, LN7/c;->M()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->c0()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v3

    goto/16 :goto_1c

    :catch_1
    move-exception v4

    goto :goto_3

    :cond_3
    :goto_2
    :try_start_1c
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V
    :try_end_1c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_1d
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    goto :goto_2

    :goto_4
    :try_start_1e
    const-string v2, "ConvexManager.lpUpdate"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :try_start_1f
    invoke-static {}, LEb/b;->b()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_15

    :try_start_20
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    const-string v2, "CollisionManager.lpUpdate"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_20
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    :try_start_21
    invoke-static {}, LDb/b;->b()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_14

    :try_start_22
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    const-string v2, "SceneVFXManager.lpUpdate"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_22
    .catch Ljava/lang/OutOfMemoryError; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    :try_start_23
    invoke-static {}, Loc/a;->o()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_13

    :try_start_24
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    const-string v2, "appendTasks"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_24
    .catch Ljava/lang/OutOfMemoryError; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    :try_start_25
    invoke-static {}, Lca/c;->o()Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_12

    :try_start_26
    invoke-static {}, Lca/c;->o()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lca/c;->p()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lca/c;->o()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lca/c;->q(Ljava/util/List;Ljava/util/List;)V

    invoke-static {}, Lca/c;->o()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_5

    :catchall_4
    move-exception v3

    goto/16 :goto_1b

    :cond_4
    :goto_5
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_4

    :try_start_27
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    const-string v2, "removeTasks"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    :try_start_28
    invoke-static {}, Lca/c;->r()Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_11

    :try_start_29
    invoke-static {}, Lca/c;->r()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lca/c;->p()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lca/c;->r()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lca/c;->s(Ljava/util/List;Ljava/util/List;)V

    invoke-static {}, Lca/c;->r()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_6

    :catchall_5
    move-exception v3

    goto/16 :goto_1a

    :cond_5
    :goto_6
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_5

    :try_start_2a
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    const-string v2, "LPTask execution"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2a .. :try_end_2a} :catch_0
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    :try_start_2b
    invoke-static {}, Lca/c;->p()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_7
    if-ge v5, v4, :cond_6

    invoke-static {}, Lca/c;->p()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lca/a;

    invoke-static {v6}, Lca/c;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v7
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_6

    :try_start_2c
    invoke-interface {v6}, Lca/a;->a()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_2
    .catchall {:try_start_2c .. :try_end_2c} :catchall_7

    :goto_8
    :try_start_2d
    invoke-static {v7}, Lq6/f;->M1(Lq6/g;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v3

    goto/16 :goto_19

    :catchall_7
    move-exception v3

    goto :goto_a

    :catch_2
    move-exception v6

    :try_start_2e
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7

    goto :goto_8

    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :goto_a
    :try_start_2f
    invoke-static {v7}, Lq6/f;->M1(Lq6/g;)V

    throw v3
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_6

    :cond_6
    :try_start_30
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    const-string v2, "singleShotTask"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_30
    .catch Ljava/lang/OutOfMemoryError; {:try_start_30 .. :try_end_30} :catch_0
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    :try_start_31
    invoke-static {}, Lca/c;->e()Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_9

    :try_start_32
    invoke-static {}, Lca/c;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v3

    monitor-exit v4
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_10

    :goto_b
    if-eqz v5, :cond_8

    :try_start_33
    invoke-static {}, Lca/c;->e()Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_9

    :try_start_34
    invoke-static {}, Lca/c;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    monitor-exit v4

    goto :goto_10

    :catchall_8
    move-exception v3

    goto :goto_f

    :cond_7
    invoke-static {}, Lca/c;->e()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lca/c;->e()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    monitor-exit v4
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_8

    :try_start_35
    invoke-static {v5}, Lca/c;->n(Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v4
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_9

    :try_start_36
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_3
    .catchall {:try_start_36 .. :try_end_36} :catchall_a

    :goto_c
    :try_start_37
    invoke-static {v4}, Lq6/f;->M1(Lq6/g;)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_9

    goto :goto_d

    :catchall_9
    move-exception v3

    goto/16 :goto_18

    :catchall_a
    move-exception v3

    goto :goto_e

    :catch_3
    move-exception v5

    :try_start_38
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_a

    goto :goto_c

    :goto_d
    :try_start_39
    invoke-static {}, Lca/c;->e()Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_9

    :try_start_3a
    invoke-static {}, Lca/c;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v3

    monitor-exit v4

    goto :goto_b

    :catchall_b
    move-exception v3

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_b

    :try_start_3b
    throw v3

    :goto_e
    invoke-static {v4}, Lq6/f;->M1(Lq6/g;)V

    throw v3
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_9

    :goto_f
    :try_start_3c
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_8

    :try_start_3d
    throw v3
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_9

    :cond_8
    :goto_10
    :try_start_3e
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    const-string v2, "lowTaskComponents"

    invoke-static {v2}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v2
    :try_end_3e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3e .. :try_end_3e} :catch_0
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0

    move v4, v1

    :goto_11
    :try_start_3f
    invoke-static {}, Lca/c;->f()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-static {}, Lca/c;->f()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-static {v5}, Lca/c;->g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v6
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_d

    :try_start_40
    iget-object v7, v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Y0()Z

    move-result v8

    if-eqz v8, :cond_9

    move v8, v3

    goto :goto_12

    :catchall_c
    move-exception v7

    goto :goto_14

    :cond_9
    move v8, v1

    :goto_12
    invoke-virtual {v5, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_c

    :goto_13
    :try_start_41
    invoke-static {v6}, Lq6/f;->M1(Lq6/g;)V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_d

    goto :goto_15

    :catchall_d
    move-exception v3

    goto :goto_17

    :goto_14
    :try_start_42
    const-string v8, "LPTaskController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Component["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] Thrown exceptions at lowTaskUpdate"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_e

    goto :goto_13

    :goto_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :catchall_e
    move-exception v3

    :try_start_43
    invoke-static {v6}, Lq6/f;->M1(Lq6/g;)V

    throw v3
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_d

    :cond_a
    :try_start_44
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V
    :try_end_44
    .catch Ljava/lang/OutOfMemoryError; {:try_start_44 .. :try_end_44} :catch_0
    .catchall {:try_start_44 .. :try_end_44} :catchall_0

    :try_start_45
    invoke-static {}, Lca/c;->a()Llb/e;

    move-result-object v2

    invoke-virtual {v2}, Llb/e;->g()V

    invoke-static {}, Lca/c;->h()LJAVARuntime/AtomicFloat;

    move-result-object v2

    invoke-static {}, Lca/c;->a()Llb/e;

    move-result-object v3

    invoke-virtual {v3}, Llb/e;->k()F

    move-result v3

    :goto_16
    invoke-virtual {v2, v3}, LJAVARuntime/AtomicFloat;->set(F)V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_f

    :catchall_f
    invoke-static {}, Lca/c;->b()Lq6/g;

    move-result-object v2

    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    invoke-static {}, Lca/c;->a()Llb/e;

    move-result-object v2

    invoke-virtual {v2}, Llb/e;->k()F

    move-result v2

    invoke-static {v2}, Lq6/f;->D1(F)V

    invoke-static {v0}, Lca/c;->d(Lq6/g;)Lq6/g;

    invoke-static {}, Lca/c;->i()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1f

    :goto_17
    :try_start_46
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3
    :try_end_46
    .catch Ljava/lang/OutOfMemoryError; {:try_start_46 .. :try_end_46} :catch_0
    .catchall {:try_start_46 .. :try_end_46} :catchall_0

    :catchall_10
    move-exception v3

    :try_start_47
    monitor-exit v4
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_10

    :try_start_48
    throw v3
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_9

    :goto_18
    :try_start_49
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3

    :goto_19
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3
    :try_end_49
    .catch Ljava/lang/OutOfMemoryError; {:try_start_49 .. :try_end_49} :catch_0
    .catchall {:try_start_49 .. :try_end_49} :catchall_0

    :goto_1a
    :try_start_4a
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_5

    :try_start_4b
    throw v3
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_11

    :catchall_11
    move-exception v3

    :try_start_4c
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3
    :try_end_4c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4c .. :try_end_4c} :catch_0
    .catchall {:try_start_4c .. :try_end_4c} :catchall_0

    :goto_1b
    :try_start_4d
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_4

    :try_start_4e
    throw v3
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_12

    :catchall_12
    move-exception v3

    :try_start_4f
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3

    :catchall_13
    move-exception v3

    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3

    :catchall_14
    move-exception v3

    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3

    :catchall_15
    move-exception v3

    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3

    :goto_1c
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3

    :catchall_16
    move-exception v3

    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3

    :catchall_17
    move-exception v3

    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3

    :catchall_18
    move-exception v3

    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3

    :catchall_19
    move-exception v3

    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3

    :catchall_1a
    move-exception v3

    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3

    :catchall_1b
    move-exception v3

    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3

    :catchall_1c
    move-exception v3

    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3

    :catchall_1d
    move-exception v3

    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3

    :catchall_1e
    move-exception v3

    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3

    :catchall_1f
    move-exception v3

    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3

    :catchall_20
    move-exception v3

    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3

    :goto_1d
    invoke-static {v2}, Lq6/f;->M1(Lq6/g;)V

    throw v3
    :try_end_4f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4f .. :try_end_4f} :catch_0
    .catchall {:try_start_4f .. :try_end_4f} :catchall_0

    :goto_1e
    :try_start_50
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity;->h(Ljava/lang/Throwable;)V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_0

    :try_start_51
    invoke-static {}, Lca/c;->a()Llb/e;

    move-result-object v2

    invoke-virtual {v2}, Llb/e;->g()V

    invoke-static {}, Lca/c;->h()LJAVARuntime/AtomicFloat;

    move-result-object v2

    invoke-static {}, Lca/c;->a()Llb/e;

    move-result-object v3

    invoke-virtual {v3}, Llb/e;->k()F

    move-result v3
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_f

    goto/16 :goto_16

    :goto_1f
    return-void

    :goto_20
    :try_start_52
    invoke-static {}, Lca/c;->a()Llb/e;

    move-result-object v3

    invoke-virtual {v3}, Llb/e;->g()V

    invoke-static {}, Lca/c;->h()LJAVARuntime/AtomicFloat;

    move-result-object v3

    invoke-static {}, Lca/c;->a()Llb/e;

    move-result-object v4

    invoke-virtual {v4}, Llb/e;->k()F

    move-result v4

    invoke-virtual {v3, v4}, LJAVARuntime/AtomicFloat;->set(F)V
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_21

    :catchall_21
    invoke-static {}, Lca/c;->b()Lq6/g;

    move-result-object v3

    invoke-static {v3}, Lq6/f;->M1(Lq6/g;)V

    invoke-static {}, Lca/c;->a()Llb/e;

    move-result-object v3

    invoke-virtual {v3}, Llb/e;->k()F

    move-result v3

    invoke-static {v3}, Lq6/f;->D1(F)V

    invoke-static {v0}, Lca/c;->d(Lq6/g;)Lq6/g;

    invoke-static {}, Lca/c;->i()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
.end method
