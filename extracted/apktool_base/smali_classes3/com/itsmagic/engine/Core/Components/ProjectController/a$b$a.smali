.class public Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/ProjectController/a$b;->a(Ljava/util/List;Lw3/g$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lw3/g$c;

.field public final synthetic d:Lq7/a;

.field public final synthetic e:Lcom/itsmagic/engine/Core/Components/ProjectController/a$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/ProjectController/a$b;Ljava/util/List;Lw3/g$c;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$files",
            "val$callback",
            "val$progress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;->e:Lcom/itsmagic/engine/Core/Components/ProjectController/a$b;

    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;->c:Lw3/g$c;

    iput-object p4, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;->d:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;->e:Lcom/itsmagic/engine/Core/Components/ProjectController/a$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;->b:Ljava/util/List;

    invoke-static {v1}, LTc/b;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    iget-object v6, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, ""

    if-ge v5, v6, :cond_2

    :try_start_1
    iget-object v6, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;->b:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iget-object v8, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;->c:Lw3/g$c;

    invoke-interface {v8, v6}, Lw3/g$c;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a;

    invoke-direct {v3, p0, v2, v5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a;-><init>(Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v3}, LN7/c;->j0(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_3
    iget-object v2, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;->b:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iget-object v3, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;->c:Lw3/g$c;

    invoke-interface {v3, v2}, Lw3/g$c;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;->c:Lw3/g$c;

    invoke-interface {v3, v2, v5}, Lw3/g$c;->a(Landroid/net/Uri;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Failed to import file!"

    invoke-static {v2}, LN7/c;->v0(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    const-string v0, "Success"

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string v0, "Aborted"

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->c()V

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;->d:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    goto :goto_6

    :goto_5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_6
    return-void

    :goto_7
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->c()V

    iget-object v1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;->d:Lq7/a;

    invoke-virtual {v1}, Lq7/a;->p1()V

    throw v0
.end method
