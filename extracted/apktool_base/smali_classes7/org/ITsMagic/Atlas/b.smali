.class public Lorg/ITsMagic/Atlas/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ITsMagic/Atlas/b$d;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/String; = "atlas-dilate-gpu-v1"

.field public static j:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

.field public final b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

.field public final c:LRb/c;

.field public final d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public final e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

.field public final f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public final g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

.field public final h:LRb/d;


# direct methods
.method public constructor <init>(Lub/p;II)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "width",
            "height"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v3, Lorg/ITsMagic/Atlas/b;->j:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;->e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v6

    iput-object v6, v0, Lorg/ITsMagic/Atlas/b;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    .line 5
    const-string v3, "inputTex"

    move-object/from16 v4, p1

    invoke-virtual {v4, v6, v3}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    int-to-float v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 6
    const-string v5, "texelSize"

    invoke-virtual {v6, v5, v3, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->y(Ljava/lang/String;FF)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lorg/ITsMagic/Atlas/b;->n()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v8

    iput-object v8, v0, Lorg/ITsMagic/Atlas/b;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lorg/ITsMagic/Atlas/b;->m()LRb/d;

    move-result-object v9

    iput-object v9, v0, Lorg/ITsMagic/Atlas/b;->h:LRb/d;

    .line 9
    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;-><init>()V

    iput-object v3, v0, Lorg/ITsMagic/Atlas/b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    .line 10
    new-instance v12, LRb/c;

    invoke-direct {v12}, LRb/c;-><init>()V

    iput-object v12, v0, Lorg/ITsMagic/Atlas/b;->c:LRb/c;

    .line 11
    new-instance v13, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v4, Lcom/google/android/filament/RenderableManager$a;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    const/4 v14, 0x0

    .line 12
    invoke-virtual {v4, v14}, Lcom/google/android/filament/RenderableManager$a;->f(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v5

    sget-object v10, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    new-instance v11, Lcom/google/android/filament/Box;

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v15, v11

    invoke-direct/range {v15 .. v21}, Lcom/google/android/filament/Box;-><init>(FFFFFF)V

    move-object v4, v13

    move-object v7, v12

    invoke-direct/range {v4 .. v11}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object v13, v0, Lorg/ITsMagic/Atlas/b;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    .line 13
    invoke-virtual {v3, v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    .line 14
    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;-><init>()V

    iput-object v4, v0, Lorg/ITsMagic/Atlas/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    .line 15
    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->C(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    .line 16
    invoke-virtual {v4, v14}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->z(Z)V

    .line 17
    invoke-virtual {v4, v14, v14, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->D(IIII)V

    .line 18
    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;-><init>()V

    iput-object v1, v0, Lorg/ITsMagic/Atlas/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v5, v1

    .line 19
    invoke-virtual/range {v5 .. v11}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->l(FFFFFF)V

    .line 20
    invoke-virtual {v4, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->x(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;)V

    .line 21
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->f()LRb/c;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    return-void

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Call prepareMaterial() before creating AtlasDilateGPU"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic constructor <init>(Lub/p;IILorg/ITsMagic/Atlas/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/ITsMagic/Atlas/b;-><init>(Lub/p;II)V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lorg/ITsMagic/Atlas/b;->r()V

    return-void
.end method

.method public static synthetic b(Lorg/ITsMagic/Atlas/b$d;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/ITsMagic/Atlas/b;->j(Lorg/ITsMagic/Atlas/b$d;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic c(Lub/p;LTb/a;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicReference;Lorg/ITsMagic/Atlas/c$b;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/ITsMagic/Atlas/b;->k(Lub/p;LTb/a;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicReference;Lorg/ITsMagic/Atlas/c$b;)V

    return-void
.end method

.method public static synthetic d(Lub/p;Lorg/ITsMagic/Atlas/c$b;Lorg/ITsMagic/Atlas/b$d;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/ITsMagic/Atlas/b;->t(Lub/p;Lorg/ITsMagic/Atlas/c$b;Lorg/ITsMagic/Atlas/b$d;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic e(Lorg/ITsMagic/Atlas/b;)V
    .locals 0

    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/b;->o()V

    return-void
.end method

.method public static synthetic f(Lorg/ITsMagic/Atlas/b;LTb/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/ITsMagic/Atlas/b;->s(LTb/a;)V

    return-void
.end method

.method public static g()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/ITsMagic/Atlas/b;->h(Z)V

    return-void
.end method

.method public static h(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceRebuild"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lorg/ITsMagic/Atlas/b;->q()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "atlas-dilate-gpu-v1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-nez p0, :cond_0

    invoke-static {v1}, Lec/b;->c(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lec/b;->c(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    invoke-static {v1}, Lec/b;->h(I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v1}, Lec/b;->g(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {v1, p0}, Lec/b;->l(ILjava/nio/ByteBuffer;)V

    return-void

    :cond_2
    invoke-static {v0}, Lorg/ITsMagic/Atlas/b;->l(Ljava/lang/String;)LSb/b;

    move-result-object p0

    invoke-virtual {p0}, LSb/b;->d()Lcom/google/android/filament/filamat/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/filament/filamat/b;->a()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {v1, p0}, Lec/b;->l(ILjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to build AtlasDilateGPU shader cache"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static i()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/ITsMagic/Atlas/b;->h(Z)V

    return-void
.end method

.method public static j(Lorg/ITsMagic/Atlas/b$d;Ljava/util/concurrent/CountDownLatch;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "latch"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->f(Lorg/ITsMagic/Atlas/b$d;)Lorg/ITsMagic/Atlas/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ITsMagic/Atlas/b;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    :try_start_1
    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->e(Lorg/ITsMagic/Atlas/b$d;)Lorg/ITsMagic/Atlas/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ITsMagic/Atlas/b;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->d(Lorg/ITsMagic/Atlas/b$d;)Lorg/ITsMagic/Atlas/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ITsMagic/Atlas/b;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->c(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object v0

    invoke-virtual {v0}, LTb/a;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->b(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object p0

    invoke-virtual {p0}, LTb/a;->c()V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->b(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object p0

    invoke-virtual {p0}, LTb/a;->c()V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->c(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object v1

    invoke-virtual {v1}, LTb/a;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->b(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object p0

    invoke-virtual {p0}, LTb/a;->c()V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->b(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object p0

    invoke-virtual {p0}, LTb/a;->c()V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->d(Lorg/ITsMagic/Atlas/b$d;)Lorg/ITsMagic/Atlas/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ITsMagic/Atlas/b;->o()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->c(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object v1

    invoke-virtual {v1}, LTb/a;->c()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->b(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object p0

    invoke-virtual {p0}, LTb/a;->c()V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catchall_4
    move-exception v0

    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->b(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object p0

    invoke-virtual {p0}, LTb/a;->c()V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catchall_5
    move-exception v0

    :try_start_7
    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->c(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object v1

    invoke-virtual {v1}, LTb/a;->c()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->b(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object p0

    invoke-virtual {p0}, LTb/a;->c()V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catchall_6
    move-exception v0

    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->b(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object p0

    invoke-virtual {p0}, LTb/a;->c()V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catchall_7
    move-exception v0

    :try_start_8
    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->e(Lorg/ITsMagic/Atlas/b$d;)Lorg/ITsMagic/Atlas/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ITsMagic/Atlas/b;->o()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    :try_start_9
    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->d(Lorg/ITsMagic/Atlas/b$d;)Lorg/ITsMagic/Atlas/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ITsMagic/Atlas/b;->o()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :try_start_a
    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->c(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object v1

    invoke-virtual {v1}, LTb/a;->c()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->b(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object p0

    invoke-virtual {p0}, LTb/a;->c()V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catchall_8
    move-exception v0

    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->b(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object p0

    invoke-virtual {p0}, LTb/a;->c()V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catchall_9
    move-exception v0

    :try_start_b
    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->c(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object v1

    invoke-virtual {v1}, LTb/a;->c()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->b(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object p0

    invoke-virtual {p0}, LTb/a;->c()V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catchall_a
    move-exception v0

    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->b(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object p0

    invoke-virtual {p0}, LTb/a;->c()V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catchall_b
    move-exception v0

    :try_start_c
    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->d(Lorg/ITsMagic/Atlas/b$d;)Lorg/ITsMagic/Atlas/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ITsMagic/Atlas/b;->o()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    :try_start_d
    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->c(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object v1

    invoke-virtual {v1}, LTb/a;->c()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->b(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object p0

    invoke-virtual {p0}, LTb/a;->c()V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catchall_c
    move-exception v0

    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->b(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object p0

    invoke-virtual {p0}, LTb/a;->c()V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catchall_d
    move-exception v0

    :try_start_e
    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->c(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object v1

    invoke-virtual {v1}, LTb/a;->c()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->b(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object p0

    invoke-virtual {p0}, LTb/a;->c()V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catchall_e
    move-exception v0

    invoke-static {p0}, Lorg/ITsMagic/Atlas/b$d;->b(Lorg/ITsMagic/Atlas/b$d;)LTb/a;

    move-result-object p0

    invoke-virtual {p0}, LTb/a;->c()V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public static k(Lub/p;LTb/a;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicReference;Lorg/ITsMagic/Atlas/c$b;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "texture",
            "sourceBuffer",
            "onDone",
            "onFailure",
            "errorRef",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lub/p;",
            "LTb/a;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/RuntimeException;",
            ">;",
            "Lorg/ITsMagic/Atlas/c$b;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    invoke-virtual {p1}, LTb/a;->r()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object p1

    new-instance v7, Lorg/ITsMagic/Atlas/b$c;

    move-object v1, v7

    move-object v2, p5

    move-object v3, p4

    move-object v4, p3

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/ITsMagic/Atlas/b$c;-><init>(Lorg/ITsMagic/Atlas/c$b;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Runnable;Lub/p;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->U0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

.method public static l(Ljava/lang/String;)LSb/b;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shaderCode"
        }
    .end annotation

    new-instance v0, LSb/b;

    invoke-direct {v0}, LSb/b;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AtlasDilateGPU-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->v(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->m(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$h;->MOBILE:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->x(Lcom/google/android/filament/filamat/MaterialBuilder$h;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$n;->UNLIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->E(Lcom/google/android/filament/filamat/MaterialBuilder$n;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$t;->UV0:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->l(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->k(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v4, "inputTex"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->D(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v2, "texelSize"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->P(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/filament/filamat/MaterialBuilder;->r(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    check-cast p0, LSb/b;

    return-object p0
.end method

.method public static p(Lub/p;ILorg/ITsMagic/Atlas/c$b;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "texture",
            "iterations",
            "listener"
        }
    .end annotation

    if-eqz p0, :cond_3

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lub/p;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lub/p;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lub/p;->getHeight()I

    move-result v3

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v9, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v10, Lorg/ITsMagic/Atlas/b$a;

    move-object v1, v10

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, v0

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lorg/ITsMagic/Atlas/b$a;-><init>(IILub/p;ILorg/ITsMagic/Atlas/c$b;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v10}, LK8/a;->I(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    if-nez p0, :cond_1

    return-void

    :cond_1
    throw p0

    :catch_0
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "AtlasDilateGPU interrupted"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Texture must be renderable before GPU dilation"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "texture can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    const-string v0, "void material(inout MaterialInputs material) {\n    prepareMaterial(material);\n    float2 texel = materialParams.texelSize;\n    float2 texSize = float2(1.0 / texel.x, 1.0 / texel.y);\n    ivec2 maxPixel = ivec2(texSize) - ivec2(1);\n    float2 uv = getUV0();\n    ivec2 pixel = ivec2(clamp(floor(uv * texSize), float2(0.0), texSize - float2(1.0)));\n    float4 current = texelFetch(materialParams_inputTex, pixel, 0);\n    if (current.a > 0.001) {\n        material.baseColor = current;\n        return;\n    }\n    float3 accum = float3(0.0);\n    float accumWeight = 0.0;\n    for (int dy = -1; dy <= 1; ++dy) {\n        for (int dx = -1; dx <= 1; ++dx) {\n            if (dx == 0 && dy == 0) {\n                continue;\n            }\n            ivec2 samplePos = pixel + ivec2(dx, dy);\n            if (samplePos.x < 0 || samplePos.y < 0 || samplePos.x > maxPixel.x || samplePos.y > maxPixel.y) {\n                continue;\n            }\n            float4 sampleColor = texelFetch(materialParams_inputTex, samplePos, 0);\n            if (sampleColor.a <= 0.001) {\n                continue;\n            }\n            float dist = length(float2(dx, dy));\n            float weight = sampleColor.a / max(dist, 0.0001);\n            accum += sampleColor.rgb * weight;\n            accumWeight += weight;\n        }\n    }\n    if (accumWeight > 0.0) {\n        material.baseColor = float4(accum / accumWeight, 1.0);\n        return;\n    }\n    material.baseColor = current;\n}"

    return-object v0
.end method

.method public static r()V
    .locals 4

    sget-object v0, Lorg/ITsMagic/Atlas/b;->j:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lorg/ITsMagic/Atlas/b;->q()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "atlas-dilate-gpu-v1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Lec/b;->f(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    new-instance v2, Lcom/google/android/filament/Material$b;

    invoke-direct {v2}, Lcom/google/android/filament/Material$b;-><init>()V

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/android/filament/Material$b;->b(Ljava/nio/Buffer;I)Lcom/google/android/filament/Material$b;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;-><init>(Lcom/google/android/filament/Material$b;)V

    sput-object v1, Lorg/ITsMagic/Atlas/b;->j:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/ITsMagic/Atlas/b;->l(Ljava/lang/String;)LSb/b;

    move-result-object v0

    invoke-virtual {v0}, LSb/b;->d()Lcom/google/android/filament/filamat/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/filamat/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v1, v0}, Lec/b;->l(ILjava/nio/ByteBuffer;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    new-instance v1, Lcom/google/android/filament/Material$b;

    invoke-direct {v1}, Lcom/google/android/filament/Material$b;-><init>()V

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/filament/Material$b;->b(Ljava/nio/Buffer;I)Lcom/google/android/filament/Material$b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;-><init>(Lcom/google/android/filament/Material$b;)V

    sput-object v0, Lorg/ITsMagic/Atlas/b;->j:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create AtlasDilateGPU material"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static t(Lub/p;Lorg/ITsMagic/Atlas/c$b;Lorg/ITsMagic/Atlas/b$d;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "texture",
            "listener",
            "state",
            "latch",
            "errorRef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lub/p;",
            "Lorg/ITsMagic/Atlas/c$b;",
            "Lorg/ITsMagic/Atlas/b$d;",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Lorg/ITsMagic/Atlas/b$b;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/ITsMagic/Atlas/b$b;-><init>(Lorg/ITsMagic/Atlas/c$b;Lorg/ITsMagic/Atlas/b$d;Lub/p;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v6}, LK8/a;->H(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final m()LRb/d;
    .locals 4

    const/4 v0, 0x6

    new-array v1, v0, [S

    fill-array-data v1, :array_0

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    new-instance v1, LRb/d;

    new-instance v3, Lcom/google/android/filament/IndexBuffer$a;

    invoke-direct {v3}, Lcom/google/android/filament/IndexBuffer$a;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/android/filament/IndexBuffer$a;->c(I)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v0

    sget-object v3, Lcom/google/android/filament/IndexBuffer$a$b;->USHORT:Lcom/google/android/filament/IndexBuffer$a$b;

    invoke-virtual {v0, v3}, Lcom/google/android/filament/IndexBuffer$a;->a(Lcom/google/android/filament/IndexBuffer$a$b;)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v0

    invoke-direct {v1, v0}, LRb/d;-><init>(Lcom/google/android/filament/IndexBuffer$a;)V

    invoke-virtual {v1, v2}, LRb/d;->r(Ljava/nio/ByteBuffer;)V

    return-object v1

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method

.method public final n()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;
    .locals 12

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    new-instance v2, Lcom/google/android/filament/VertexBuffer$b;

    invoke-direct {v2}, Lcom/google/android/filament/VertexBuffer$b;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/filament/VertexBuffer$b;->h(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/filament/VertexBuffer$b;->c(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v4

    sget-object v5, Lcom/google/android/filament/VertexBuffer$c;->POSITION:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v2, Lcom/google/android/filament/VertexBuffer$a;->FLOAT2:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v6

    sget-object v7, Lcom/google/android/filament/VertexBuffer$c;->UV0:Lcom/google/android/filament/VertexBuffer$c;

    const/16 v10, 0x8

    const/16 v11, 0x10

    move-object v9, v2

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;-><init>(Lcom/google/android/filament/VertexBuffer$b;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->q(ILjava/nio/ByteBuffer;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lorg/ITsMagic/Atlas/b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v1, p0, Lorg/ITsMagic/Atlas/b;->c:LRb/c;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v1, p0, Lorg/ITsMagic/Atlas/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->f()LRb/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/b;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/b;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->destroyImmediate()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/b;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->destroyImmediate()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/b;->h:LRb/d;

    invoke-virtual {v0}, LRb/d;->destroyImmediate()V

    return-void
.end method

.method public final s(LTb/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dst"
        }
    .end annotation

    iget-object v0, p0, Lorg/ITsMagic/Atlas/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {p1, v0}, LTb/a;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {v0}, LQb/a;->o(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    invoke-virtual {p1}, LTb/a;->z()V

    return-void
.end method
