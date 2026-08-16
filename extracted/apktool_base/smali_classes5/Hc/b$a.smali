.class public LHc/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHc/b;
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
    .locals 7

    :cond_0
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, LHc/b;->a()Llb/e;

    move-result-object v3

    invoke-virtual {v3}, Llb/e;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto/16 :goto_c

    :cond_1
    :goto_1
    :try_start_1
    invoke-static {}, LHc/b;->b()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-static {}, LHc/b;->c()Z

    move-result v4

    if-nez v4, :cond_7

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, LHc/b;->a()Llb/e;

    move-result-object v2

    invoke-virtual {v2}, Llb/e;->g()V

    invoke-static {}, LHc/b;->a()Llb/e;

    move-result-object v2

    invoke-virtual {v2}, Llb/e;->k()F

    move-result v2

    invoke-static {v2}, LHc/b;->e(F)F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    invoke-static {}, LHc/b;->b()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_4
    invoke-static {}, LHc/b;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-static {}, LHc/b;->f()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, LHc/b;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_2
    invoke-static {}, LHc/b;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-static {}, LHc/b;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LHc/b$b;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-interface {v4}, LHc/b$b;->c()Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_3

    goto :goto_3

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v4}, LHc/b;->k(LHc/b$b;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_3
    invoke-static {}, LHc/b;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    :cond_5
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_6

    invoke-static {}, LHc/b;->g()V

    :cond_6
    return-void

    :goto_4
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v2

    goto/16 :goto_a

    :cond_7
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move v2, v1

    move v3, v2

    :goto_5
    :try_start_9
    invoke-static {}, LHc/b;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    invoke-static {}, LHc/b;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LHc/b$b;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    :try_start_a
    invoke-interface {v4}, LHc/b$b;->c()Z

    move-result v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-nez v5, :cond_9

    :try_start_b
    invoke-static {v4}, LHc/b;->k(LHc/b$b;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v2

    goto/16 :goto_b

    :cond_9
    :try_start_c
    invoke-interface {v4}, LHc/b$b;->a()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    invoke-interface {v4}, LHc/b$b;->c()Z

    move-result v5

    if-eqz v5, :cond_a

    move v3, v0

    goto :goto_6

    :cond_a
    invoke-static {v4}, LHc/b;->k(LHc/b$b;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v5

    :try_start_e
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v4}, LHc/b;->k(LHc/b$b;)V

    goto :goto_6

    :catchall_6
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v4}, LHc/b;->k(LHc/b$b;)V

    goto :goto_6

    :catchall_7
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v4}, LHc/b;->k(LHc/b$b;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    if-nez v3, :cond_11

    :try_start_f
    sget-object v2, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {}, LHc/b;->a()Llb/e;

    move-result-object v2

    invoke-virtual {v2}, Llb/e;->g()V

    invoke-static {}, LHc/b;->a()Llb/e;

    move-result-object v2

    invoke-virtual {v2}, Llb/e;->k()F

    move-result v2

    invoke-static {v2}, LHc/b;->e(F)F
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_c
    invoke-static {}, LHc/b;->b()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_10
    invoke-static {}, LHc/b;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-static {}, LHc/b;->f()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, LHc/b;->c()Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v1

    :goto_7
    invoke-static {}, LHc/b;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    invoke-static {}, LHc/b;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LHc/b$b;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    :try_start_11
    invoke-interface {v4}, LHc/b$b;->c()Z

    move-result v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    if-eqz v4, :cond_d

    goto :goto_8

    :catchall_8
    move-exception v5

    :try_start_12
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v4}, LHc/b;->k(LHc/b$b;)V

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :catchall_9
    move-exception v0

    goto :goto_9

    :cond_e
    move v0, v1

    :goto_8
    invoke-static {}, LHc/b;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    :cond_f
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    if-eqz v1, :cond_10

    invoke-static {}, LHc/b;->g()V

    :cond_10
    return-void

    :goto_9
    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    throw v0

    :cond_11
    :try_start_14
    sget-object v2, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, LHc/b;->a()Llb/e;

    move-result-object v2

    invoke-virtual {v2}, Llb/e;->g()V

    invoke-static {}, LHc/b;->a()Llb/e;

    move-result-object v2

    invoke-virtual {v2}, Llb/e;->k()F

    move-result v2

    invoke-static {v2}, LHc/b;->e(F)F
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_0

    :goto_a
    :try_start_15
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :try_start_16
    throw v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :goto_b
    :try_start_17
    sget-object v3, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-static {}, LHc/b;->a()Llb/e;

    move-result-object v3

    invoke-virtual {v3}, Llb/e;->g()V

    invoke-static {}, LHc/b;->a()Llb/e;

    move-result-object v3

    invoke-virtual {v3}, Llb/e;->k()F

    move-result v3

    invoke-static {v3}, LHc/b;->e(F)F

    :cond_12
    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :goto_c
    invoke-static {}, LHc/b;->b()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_18
    invoke-static {}, LHc/b;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-static {}, LHc/b;->f()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, LHc/b;->c()Z

    move-result v4

    if-eqz v4, :cond_15

    move v4, v1

    :goto_d
    invoke-static {}, LHc/b;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_14

    invoke-static {}, LHc/b;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LHc/b$b;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    :try_start_19
    invoke-interface {v5}, LHc/b$b;->c()Z

    move-result v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    if-eqz v5, :cond_13

    goto :goto_e

    :catchall_a
    move-exception v6

    :try_start_1a
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v5}, LHc/b;->k(LHc/b$b;)V

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :catchall_b
    move-exception v0

    goto :goto_f

    :cond_14
    move v0, v1

    :goto_e
    invoke-static {}, LHc/b;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    :cond_15
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    if-eqz v1, :cond_16

    invoke-static {}, LHc/b;->g()V

    :cond_16
    throw v2

    :goto_f
    :try_start_1b
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    throw v0
.end method
