.class public Lorg/ITsMagic/Atlas/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/b;->p(Lub/p;ILorg/ITsMagic/Atlas/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lub/p;

.field public final synthetic e:I

.field public final synthetic f:Lorg/ITsMagic/Atlas/c$b;

.field public final synthetic g:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic h:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(IILub/p;ILorg/ITsMagic/Atlas/c$b;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$width",
            "val$height",
            "val$texture",
            "val$iterations",
            "val$listener",
            "val$latch",
            "val$errorRef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p1, p0, Lorg/ITsMagic/Atlas/b$a;->b:I

    iput p2, p0, Lorg/ITsMagic/Atlas/b$a;->c:I

    iput-object p3, p0, Lorg/ITsMagic/Atlas/b$a;->d:Lub/p;

    iput p4, p0, Lorg/ITsMagic/Atlas/b$a;->e:I

    iput-object p5, p0, Lorg/ITsMagic/Atlas/b$a;->f:Lorg/ITsMagic/Atlas/c$b;

    iput-object p6, p0, Lorg/ITsMagic/Atlas/b$a;->g:Ljava/util/concurrent/CountDownLatch;

    iput-object p7, p0, Lorg/ITsMagic/Atlas/b$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lorg/ITsMagic/Atlas/b;->a()V

    new-instance v11, LTb/a;

    iget v4, v1, Lorg/ITsMagic/Atlas/b$a;->b:I

    iget v5, v1, Lorg/ITsMagic/Atlas/b$a;->c:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v6, 0x64

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, LTb/a;-><init>(IIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    new-instance v18, LTb/a;

    iget v13, v1, Lorg/ITsMagic/Atlas/b$a;->b:I

    iget v14, v1, Lorg/ITsMagic/Atlas/b$a;->c:I

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v15, 0x64

    move-object/from16 v12, v18

    invoke-direct/range {v12 .. v17}, LTb/a;-><init>(IIIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v12, Lorg/ITsMagic/Atlas/b;

    iget-object v0, v1, Lorg/ITsMagic/Atlas/b$a;->d:Lub/p;

    iget v3, v1, Lorg/ITsMagic/Atlas/b$a;->b:I

    iget v4, v1, Lorg/ITsMagic/Atlas/b$a;->c:I

    invoke-direct {v12, v0, v3, v4, v2}, Lorg/ITsMagic/Atlas/b;-><init>(Lub/p;IILorg/ITsMagic/Atlas/b$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    new-instance v13, Lorg/ITsMagic/Atlas/b;

    invoke-virtual {v11}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    iget v3, v1, Lorg/ITsMagic/Atlas/b$a;->b:I

    iget v4, v1, Lorg/ITsMagic/Atlas/b$a;->c:I

    invoke-direct {v13, v0, v3, v4, v2}, Lorg/ITsMagic/Atlas/b;-><init>(Lub/p;IILorg/ITsMagic/Atlas/b$a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v14, Lorg/ITsMagic/Atlas/b;

    invoke-virtual/range {v18 .. v18}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    iget v3, v1, Lorg/ITsMagic/Atlas/b$a;->b:I

    iget v4, v1, Lorg/ITsMagic/Atlas/b$a;->c:I

    invoke-direct {v14, v0, v3, v4, v2}, Lorg/ITsMagic/Atlas/b;-><init>(Lub/p;IILorg/ITsMagic/Atlas/b$a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-instance v0, Lorg/ITsMagic/Atlas/b$d;

    iget v9, v1, Lorg/ITsMagic/Atlas/b$a;->e:I

    const/4 v10, 0x0

    move-object v3, v0

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v11

    move-object/from16 v8, v18

    invoke-direct/range {v3 .. v10}, Lorg/ITsMagic/Atlas/b$d;-><init>(Lorg/ITsMagic/Atlas/b;Lorg/ITsMagic/Atlas/b;Lorg/ITsMagic/Atlas/b;LTb/a;LTb/a;ILorg/ITsMagic/Atlas/b$a;)V

    iget-object v2, v1, Lorg/ITsMagic/Atlas/b$a;->f:Lorg/ITsMagic/Atlas/c$b;

    if-eqz v2, :cond_0

    const-string v3, "GPU Dilate pass"

    invoke-interface {v2, v3}, Lorg/ITsMagic/Atlas/c$b;->b(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    :goto_0
    move-object v2, v12

    :goto_1
    move-object/from16 v0, v18

    goto :goto_4

    :cond_0
    :goto_2
    iget-object v2, v1, Lorg/ITsMagic/Atlas/b$a;->d:Lub/p;

    iget-object v3, v1, Lorg/ITsMagic/Atlas/b$a;->f:Lorg/ITsMagic/Atlas/c$b;

    iget-object v4, v1, Lorg/ITsMagic/Atlas/b$a;->g:Ljava/util/concurrent/CountDownLatch;

    iget-object v5, v1, Lorg/ITsMagic/Atlas/b$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v3, v0, v4, v5}, Lorg/ITsMagic/Atlas/b;->d(Lub/p;Lorg/ITsMagic/Atlas/c$b;Lorg/ITsMagic/Atlas/b$d;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v14, v2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v3, v0

    move-object v13, v2

    move-object v14, v13

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object v3, v0

    move-object v13, v2

    move-object v14, v13

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v3, v0

    move-object v0, v2

    move-object v13, v0

    :goto_3
    move-object v14, v13

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v3, v0

    move-object v0, v2

    move-object v11, v0

    move-object v13, v11

    goto :goto_3

    :goto_4
    if-eqz v2, :cond_1

    :try_start_6
    invoke-static {v2}, Lorg/ITsMagic/Atlas/b;->e(Lorg/ITsMagic/Atlas/b;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    :cond_1
    if-eqz v13, :cond_2

    :try_start_7
    invoke-static {v13}, Lorg/ITsMagic/Atlas/b;->e(Lorg/ITsMagic/Atlas/b;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    :cond_2
    if-eqz v14, :cond_3

    :try_start_8
    invoke-static {v14}, Lorg/ITsMagic/Atlas/b;->e(Lorg/ITsMagic/Atlas/b;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    :cond_3
    if-eqz v11, :cond_4

    iget-boolean v2, v11, LTb/a;->r:Z

    if-nez v2, :cond_4

    :try_start_9
    invoke-virtual {v11}, LTb/a;->c()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v2, v0, LTb/a;->r:Z

    if-nez v2, :cond_5

    :try_start_a
    invoke-virtual {v0}, LTb/a;->c()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    :cond_5
    iget-object v0, v1, Lorg/ITsMagic/Atlas/b$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "AtlasDilateGPU setup failed"

    invoke-direct {v2, v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, v1, Lorg/ITsMagic/Atlas/b$a;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_5
    return-void
.end method
