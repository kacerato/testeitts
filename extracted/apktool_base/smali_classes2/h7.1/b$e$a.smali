.class public Lh7/b$e$a;
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
.field public final synthetic b:LIc/a;

.field public final synthetic c:Lh7/b$e;


# direct methods
.method public constructor <init>(Lh7/b$e;LIc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$phaser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lh7/b$e$a;->c:Lh7/b$e;

    iput-object p2, p0, Lh7/b$e$a;->b:LIc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lh7/b$e$a;->c:Lh7/b$e;

    iget-object v2, v2, Lh7/b$e;->d:Lh7/b;

    invoke-static {v2}, Lh7/b;->d(Lh7/b;)Li7/a;

    move-result-object v2

    invoke-virtual {v2}, Li7/a;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lh7/b$e$a;->c:Lh7/b$e;

    iget-object v2, v2, Lh7/b$e;->d:Lh7/b;

    invoke-static {v2}, Lh7/b;->v(Lh7/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lh7/b$e$a;->c:Lh7/b$e;

    iget-object v3, v3, Lh7/b$e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_1
    iget-object v0, p0, Lh7/b$e$a;->b:LIc/a;

    invoke-virtual {v0}, LIc/a;->e()V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lh7/b$e$a;->c:Lh7/b$e;

    iget-object v3, v2, Lh7/b$e;->c:Ljava/lang/String;

    iget-object v2, v2, Lh7/b$e;->d:Lh7/b;

    invoke-static {v2}, Lh7/b;->w(Lh7/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lh7/b$e$a;->c:Lh7/b$e;

    iget-object v2, v2, Lh7/b$e;->d:Lh7/b;

    invoke-static {v2}, Lh7/b;->d(Lh7/b;)Li7/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Li7/a;->m(I)Lj7/b;

    move-result-object v2

    iget-object v3, p0, Lh7/b$e$a;->c:Lh7/b$e;

    iget-object v3, v3, Lh7/b$e;->d:Lh7/b;

    invoke-static {v3}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v3

    invoke-virtual {v2}, Lj7/b;->u()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ln7/e;->a(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lj7/b;->u()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lh7/b$e$a;->c:Lh7/b$e;

    iget-object v4, v4, Lh7/b$e;->d:Lh7/b;

    invoke-static {v4}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v4

    invoke-virtual {v4}, Ln7/e;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lj7/b;->u()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lh7/b$e$a;->c:Lh7/b$e;

    iget-object v4, v4, Lh7/b$e;->d:Lh7/b;

    invoke-static {v4}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v4

    invoke-virtual {v4}, Ln7/e;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lh7/b$e$a;->c:Lh7/b$e;

    iget-object v4, v4, Lh7/b$e;->d:Lh7/b;

    invoke-static {v4}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v4

    invoke-virtual {v2}, Lj7/b;->u()Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lh7/b$e$a;->c:Lh7/b$e;

    iget-object v6, v6, Lh7/b$e;->d:Lh7/b;

    invoke-static {v6}, Lh7/b;->w(Lh7/b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Ln7/e;->k(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lh7/b$e$a;->c:Lh7/b$e;

    iget-object v2, v1, Lh7/b$e;->c:Ljava/lang/String;

    iget-object v1, v1, Lh7/b$e;->d:Lh7/b;

    invoke-static {v1}, Lh7/b;->w(Lh7/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_1

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lh7/b$e$a;->c:Lh7/b$e;

    iget-object v1, v1, Lh7/b$e;->d:Lh7/b;

    invoke-static {v1}, Lh7/b;->v(Lh7/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh7/b$e$a;->c:Lh7/b$e;

    iget-object v2, v2, Lh7/b$e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lh7/b$e$a;->c:Lh7/b$e;

    iget-object v1, v1, Lh7/b$e;->d:Lh7/b;

    invoke-static {v1}, Lh7/b;->d(Lh7/b;)Li7/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Li7/a;->s(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    iget-object v0, p0, Lh7/b$e$a;->b:LIc/a;

    invoke-virtual {v0}, LIc/a;->e()V

    return-void

    :goto_4
    iget-object v1, p0, Lh7/b$e$a;->b:LIc/a;

    invoke-virtual {v1}, LIc/a;->e()V

    throw v0
.end method
