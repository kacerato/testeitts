.class public Lh7/b$e$c;
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
.field public final synthetic b:Ljava/util/LinkedList;

.field public final synthetic c:LIc/a;

.field public final synthetic d:Lh7/b$e;


# direct methods
.method public constructor <init>(Lh7/b$e;Ljava/util/LinkedList;LIc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$pendingFiles",
            "val$phaser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lh7/b$e$c;->d:Lh7/b$e;

    iput-object p2, p0, Lh7/b$e$c;->b:Ljava/util/LinkedList;

    iput-object p3, p0, Lh7/b$e$c;->c:LIc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lh7/b$e$c;->d:Lh7/b$e;

    iget-object v0, v0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v0}, Lh7/b;->v(Lh7/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh7/b$e$c;->d:Lh7/b$e;

    iget-object v1, v1, Lh7/b$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lh7/b$e$c;->c:LIc/a;

    invoke-virtual {v0}, LIc/a;->e()V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v1, p0, Lh7/b$e$c;->d:Lh7/b$e;

    iget-object v1, v1, Lh7/b$e;->d:Lh7/b;

    invoke-static {v1}, Lh7/b;->d(Lh7/b;)Li7/a;

    move-result-object v1

    invoke-virtual {v1}, Li7/a;->getItemCount()I

    move-result v1

    iget-object v2, p0, Lh7/b$e$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    iget-object v4, p0, Lh7/b$e$c;->d:Lh7/b$e;

    iget-object v4, v4, Lh7/b$e;->d:Lh7/b;

    invoke-static {v4}, Lh7/b;->v(Lh7/b;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lh7/b$e$c;->d:Lh7/b$e;

    iget-object v5, v5, Lh7/b$e;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_3

    iget-object v6, p0, Lh7/b$e$c;->d:Lh7/b$e;

    iget-object v6, v6, Lh7/b$e;->d:Lh7/b;

    invoke-static {v6}, Lh7/b;->d(Lh7/b;)Li7/a;

    move-result-object v6

    invoke-virtual {v6, v5}, Li7/a;->m(I)Lj7/b;

    move-result-object v6

    invoke-virtual {v6}, Lj7/b;->u()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lh7/b$e$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    iget-object v1, p0, Lh7/b$e$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lh7/b$e$c;->c:LIc/a;

    invoke-virtual {v0}, LIc/a;->e()V

    return-void

    :goto_3
    iget-object v1, p0, Lh7/b$e$c;->c:LIc/a;

    invoke-virtual {v1}, LIc/a;->e()V

    throw v0
.end method
