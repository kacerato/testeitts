.class public Lh7/b$e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/b$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:LIc/a;

.field public final synthetic d:Lh7/b$e;


# direct methods
.method public constructor <init>(Lh7/b$e;Ljava/lang/String;LIc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$folderPath",
            "val$phaser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lh7/b$e$d;->d:Lh7/b$e;

    iput-object p2, p0, Lh7/b$e$d;->b:Ljava/lang/String;

    iput-object p3, p0, Lh7/b$e$d;->c:LIc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "/"

    :try_start_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lh7/b$e$d;->d:Lh7/b$e;

    iget-object v3, v3, Lh7/b$e;->d:Lh7/b;

    invoke-static {v3}, Lh7/b;->d(Lh7/b;)Li7/a;

    move-result-object v3

    invoke-virtual {v3}, Li7/a;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lh7/b$e$d;->d:Lh7/b$e;

    iget-object v3, v3, Lh7/b$e;->d:Lh7/b;

    invoke-static {v3}, Lh7/b;->v(Lh7/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lh7/b$e$d;->d:Lh7/b$e;

    iget-object v4, v4, Lh7/b$e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :goto_1
    iget-object v0, p0, Lh7/b$e$d;->c:LIc/a;

    invoke-virtual {v0}, LIc/a;->e()V

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lh7/b$e$d;->d:Lh7/b$e;

    iget-object v3, v3, Lh7/b$e;->d:Lh7/b;

    invoke-static {v3}, Lh7/b;->d(Lh7/b;)Li7/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Li7/a;->m(I)Lj7/b;

    move-result-object v3

    iget-object v4, p0, Lh7/b$e$d;->d:Lh7/b$e;

    iget-object v4, v4, Lh7/b$e;->d:Lh7/b;

    invoke-static {v4}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v4

    invoke-virtual {v3}, Lj7/b;->u()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ln7/e;->a(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lj7/b;->u()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lh7/b$e$d;->d:Lh7/b$e;

    iget-object v5, v5, Lh7/b$e;->d:Lh7/b;

    invoke-static {v5}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v5

    invoke-virtual {v5}, Ln7/e;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v3}, Lj7/b;->u()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_2
    :goto_2
    iget-object v5, p0, Lh7/b$e$d;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    :goto_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lh7/b$e$d;->d:Lh7/b$e;

    iget-object v0, v0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v0}, Lh7/b;->v(Lh7/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lh7/b$e$d;->d:Lh7/b$e;

    iget-object v2, v2, Lh7/b$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lh7/b$e$d;->d:Lh7/b$e;

    iget-object v0, v0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v0}, Lh7/b;->d(Lh7/b;)Li7/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Li7/a;->s(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    iget-object v0, p0, Lh7/b$e$d;->c:LIc/a;

    invoke-virtual {v0}, LIc/a;->e()V

    return-void

    :goto_5
    iget-object v1, p0, Lh7/b$e$d;->c:LIc/a;

    invoke-virtual {v1}, LIc/a;->e()V

    throw v0
.end method
