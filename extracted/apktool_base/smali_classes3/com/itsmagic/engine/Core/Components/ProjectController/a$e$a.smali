.class public Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;->a(Lq7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lq7/a;

.field public final synthetic d:Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;Landroid/content/Context;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;->d:Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;

    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;->c:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, LW7/b;->f:LC8/a;

    iget-object v1, v1, LC8/a;->a:LD8/a;

    iget-object v2, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, LD8/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;->d:Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;

    iget-object v2, v2, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;->b:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Z(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;->d:Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;

    iget-object v4, v4, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LWc/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".itsmbp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create backups folder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {v6}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->c(Ljava/io/File;)V

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$a;

    invoke-direct {v5, p0, v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$a;-><init>(Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;Ljava/lang/String;)V

    invoke-static {v2, v1, v4, v5}, Lnd/e;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnd/e$c;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;->d:Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;

    iget-object v1, v1, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;->a:Ljava/lang/String;

    invoke-static {v1, v6, v3}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->e(Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v6, v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->f(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;->c:Lq7/a;

    invoke-virtual {v1}, Lq7/a;->p1()V

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$b;

    invoke-direct {v2, p0, v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$b;-><init>(Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_3
    invoke-static {v6}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->c(Ljava/io/File;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;->c:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    new-instance v0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$c;

    invoke-direct {v0, p0, v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$c;-><init>(Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;Ljava/lang/String;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Project folder not found for backup: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    :catch_2
    move-exception v1

    :goto_1
    move-object v6, v0

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v6}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->c(Ljava/io/File;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;->c:Lq7/a;

    invoke-virtual {v1}, Lq7/a;->p1()V

    iget-object v1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;->d:Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;

    iget-object v1, v1, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$d;

    invoke-direct {v1, p0, v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$d;-><init>(Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;Ljava/lang/String;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method
