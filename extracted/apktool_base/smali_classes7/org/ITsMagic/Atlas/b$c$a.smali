.class public Lorg/ITsMagic/Atlas/b$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/b$c;->on(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:Lorg/ITsMagic/Atlas/b$c;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/b$c;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$bitmap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/b$c$a;->c:Lorg/ITsMagic/Atlas/b$c;

    iput-object p2, p0, Lorg/ITsMagic/Atlas/b$c$a;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/b$c$a;->c:Lorg/ITsMagic/Atlas/b$c;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/b$c;->a:Lorg/ITsMagic/Atlas/c$b;

    const-string v2, "Extract image"

    invoke-interface {v0, v2}, Lorg/ITsMagic/Atlas/c$b;->b(Ljava/lang/String;)V

    iget-object v0, v1, Lorg/ITsMagic/Atlas/b$c$a;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/b$c$a;->c:Lorg/ITsMagic/Atlas/b$c;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/b$c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "AtlasDilateGPU returned null bitmap"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, v1, Lorg/ITsMagic/Atlas/b$c$a;->c:Lorg/ITsMagic/Atlas/b$c;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/b$c;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, v1, Lorg/ITsMagic/Atlas/b$c$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iget-object v2, v1, Lorg/ITsMagic/Atlas/b$c$a;->c:Lorg/ITsMagic/Atlas/b$c;

    iget-object v2, v2, Lorg/ITsMagic/Atlas/b$c;->d:Lub/p;

    invoke-virtual {v2}, Lub/p;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget-object v2, v1, Lorg/ITsMagic/Atlas/b$c$a;->c:Lorg/ITsMagic/Atlas/b$c;

    iget-object v2, v2, Lorg/ITsMagic/Atlas/b$c;->d:Lub/p;

    invoke-virtual {v2}, Lub/p;->getHeight()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    mul-int v2, v0, v10

    new-array v13, v2, [I

    iget-object v2, v1, Lorg/ITsMagic/Atlas/b$c$a;->b:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v3, v13

    move v5, v0

    move v8, v0

    move v9, v10

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v2, 0x0

    move v14, v2

    :goto_0
    if-ge v14, v12, :cond_2

    add-int/lit8 v3, v10, -0x1

    sub-int/2addr v3, v14

    mul-int v15, v3, v0

    move v9, v2

    :goto_1
    if-ge v9, v11, :cond_1

    add-int v3, v15, v9

    aget v3, v13, v3

    iget-object v4, v1, Lorg/ITsMagic/Atlas/b$c$a;->c:Lorg/ITsMagic/Atlas/b$c;

    iget-object v4, v4, Lorg/ITsMagic/Atlas/b$c;->d:Lub/p;

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v6, v5, 0xff

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v7, v5, 0xff

    and-int/lit16 v8, v3, 0xff

    ushr-int/lit8 v3, v3, 0x18

    and-int/lit16 v5, v3, 0xff

    move-object v3, v4

    move v4, v9

    move/from16 v16, v5

    move v5, v14

    move/from16 v17, v9

    move/from16 v9, v16

    invoke-virtual/range {v3 .. v9}, Lub/p;->m0(IIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v9, v17, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, v1, Lorg/ITsMagic/Atlas/b$c$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    :goto_3
    :try_start_1
    iget-object v2, v1, Lorg/ITsMagic/Atlas/b$c$a;->c:Lorg/ITsMagic/Atlas/b$c;

    iget-object v2, v2, Lorg/ITsMagic/Atlas/b$c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "AtlasDilateGPU copy-back failed"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :goto_4
    iget-object v0, v1, Lorg/ITsMagic/Atlas/b$c$a;->c:Lorg/ITsMagic/Atlas/b$c;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/b$c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lorg/ITsMagic/Atlas/b$c$a;->c:Lorg/ITsMagic/Atlas/b$c;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/b$c;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    :cond_3
    iget-object v0, v1, Lorg/ITsMagic/Atlas/b$c$a;->c:Lorg/ITsMagic/Atlas/b$c;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/b$c;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_5
    return-void

    :catchall_1
    move-exception v0

    iget-object v2, v1, Lorg/ITsMagic/Atlas/b$c$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
.end method
