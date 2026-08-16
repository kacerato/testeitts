.class public LM5/g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM5/g$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic h:LM5/g$a;


# direct methods
.method public constructor <init>(LM5/g$a;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$nextIndex",
            "val$total",
            "val$importBatch",
            "val$completedFiles",
            "val$activeWorkers",
            "val$cleanedUp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LM5/g$a$a;->h:LM5/g$a;

    iput-object p2, p0, LM5/g$a$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, LM5/g$a$a;->c:I

    iput-object p4, p0, LM5/g$a$a;->d:Ljava/util/List;

    iput-object p5, p0, LM5/g$a$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, LM5/g$a$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p7, p0, LM5/g$a$a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "/"

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, LM5/g$a$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    iget v6, p0, LM5/g$a$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lt v5, v6, :cond_1

    iget-object v0, p0, LM5/g$a$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LM5/g$a$a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->l0(Ljava/lang/String;)V

    iget-object v0, p0, LM5/g$a$a;->h:LM5/g$a;

    iget-object v0, v0, LM5/g$a;->b:LM5/g;

    invoke-virtual {v0, v1}, LL5/b;->m(F)V

    iget-object v0, p0, LM5/g$a$a;->h:LM5/g$a;

    iget-object v0, v0, LM5/g$a;->b:LM5/g;

    invoke-virtual {v0}, LL5/b;->b()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v6, p0, LM5/g$a$a;->d:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "thumb.png"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".meta"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v5

    goto :goto_4

    :cond_2
    :goto_1
    invoke-static {v5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;->n(Landroid/content/Context;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;)Z
    :try_end_2
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureNeedsImport; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureFileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v5

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_2
    const-string v7, ".ivo"

    invoke-static {v5, v7}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v5

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;-><init>()V

    sget-object v8, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$c;->ONLY_TEXTURE:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$c;

    invoke-virtual {v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;->a(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;->b(Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;->g(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_3
    :try_start_5
    iget-object v5, p0, LM5/g$a$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    iget-object v6, p0, LM5/g$a$a;->h:LM5/g$a;

    iget-object v6, v6, LM5/g$a;->b:LM5/g;

    int-to-float v7, v5

    iget v8, p0, LM5/g$a$a;->c:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, LL5/b;->m(F)V

    iget-object v6, p0, LM5/g$a$a;->h:LM5/g$a;

    iget-object v6, v6, LM5/g$a;->b:LM5/g;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, LM5/g$a$a;->c:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, LL5/b;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_5

    :goto_4
    iget-object v6, p0, LM5/g$a$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    iget-object v7, p0, LM5/g$a$a;->h:LM5/g$a;

    iget-object v7, v7, LM5/g$a;->b:LM5/g;

    int-to-float v8, v6

    iget v9, p0, LM5/g$a$a;->c:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v7, v8}, LL5/b;->m(F)V

    iget-object v7, p0, LM5/g$a$a;->h:LM5/g$a;

    iget-object v7, v7, LM5/g$a;->b:LM5/g;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LM5/g$a$a;->c:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, LL5/b;->n(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_5
    iget-object v5, p0, LM5/g$a$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, LM5/g$a$a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->l0(Ljava/lang/String;)V

    iget-object v2, p0, LM5/g$a$a;->h:LM5/g$a;

    iget-object v2, v2, LM5/g$a;->b:LM5/g;

    invoke-virtual {v2, v1}, LL5/b;->m(F)V

    iget-object v1, p0, LM5/g$a$a;->h:LM5/g$a;

    iget-object v1, v1, LM5/g$a;->b:LM5/g;

    invoke-virtual {v1}, LL5/b;->b()V

    :cond_4
    throw v0
.end method
