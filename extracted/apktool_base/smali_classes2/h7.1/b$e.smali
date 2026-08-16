.class public Lh7/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/b;->f0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lh7/b;


# direct methods
.method public constructor <init>(Lh7/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$inThisThreadFolder",
            "val$inThisThreadSearch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lh7/b$e;->d:Lh7/b;

    iput-object p2, p0, Lh7/b$e;->b:Ljava/lang/String;

    iput-object p3, p0, Lh7/b$e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Lh7/b$j;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "folder",
            "internalSearch"
        }
    .end annotation

    iget-object v0, p0, Lh7/b$e;->c:Ljava/lang/String;

    iget-object v1, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v1}, Lh7/b;->w(Lh7/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v0}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln7/e;->j(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v2}, Lh7/b;->g(Lh7/b;)Ln7/d;

    move-result-object v2

    invoke-interface {v2, v1}, Ln7/d;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_8

    iget-object v1, p0, Lh7/b$e;->c:Ljava/lang/String;

    iget-object v2, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v2}, Lh7/b;->w(Lh7/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/JAVARuntime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v2}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Ln7/e;->h(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v2}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Ln7/e;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v3}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v3

    invoke-virtual {v3}, Ln7/e;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v3}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v3

    iget-object v4, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v4}, Lh7/b;->w(Lh7/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v4}, Ln7/e;->k(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2, v1}, Lh7/b$j;->a(Ljava/io/File;)V

    :cond_6
    iget-object v2, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v2}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Ln7/e;->h(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v1, p2}, Lh7/b$e;->a(Ljava/io/File;Lh7/b$j;)V

    :cond_7
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method public run()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v1}, Lh7/b;->v(Lh7/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh7/b$e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v1}, Lh7/b;->l(Lh7/b;)V

    iget-object v1, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v1}, Lh7/b;->m(Lh7/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lh7/b$e;->c:Ljava/lang/String;

    iget-object v2, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v2}, Lh7/b;->w(Lh7/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v1}, Lh7/b;->x(Lh7/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-wide/16 v2, 0x2710

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v5, LIc/a;

    invoke-direct {v5, v4}, LIc/a;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/util/concurrent/Phaser;->bulkRegister(I)I

    iget-object v4, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v4}, Lh7/b;->f(Lh7/b;)Landroid/app/Activity;

    move-result-object v4

    new-instance v6, Lh7/b$e$a;

    invoke-direct {v6, p0, v5}, Lh7/b$e$a;-><init>(Lh7/b$e;LIc/a;)V

    invoke-virtual {v4, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v5, v2, v3}, LIc/a;->b(J)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lh7/b$e;->c:Ljava/lang/String;

    iget-object v3, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v3}, Lh7/b;->w(Lh7/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v2}, Lh7/b;->w(Lh7/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v2}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v2

    invoke-virtual {v2}, Ln7/e;->l()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_6

    :catch_0
    move-exception v1

    goto/16 :goto_4

    :cond_4
    :goto_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v3}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v3

    invoke-virtual {v3}, Ln7/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v3}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v3

    invoke-virtual {v3, v2}, Ln7/e;->a(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v3, Lh7/b$e$b;

    invoke-direct {v3, p0, v1, v5}, Lh7/b$e$b;-><init>(Lh7/b$e;Ljava/util/HashSet;LIc/a;)V

    invoke-virtual {p0, v2, v3}, Lh7/b$e;->a(Ljava/io/File;Lh7/b$j;)V

    goto/16 :goto_3

    :cond_5
    iget-object v1, p0, Lh7/b$e;->d:Lh7/b;

    iget-object v5, p0, Lh7/b$e;->b:Ljava/lang/String;

    invoke-static {v1, v5}, Lh7/b;->i(Lh7/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v6}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v6

    invoke-virtual {v6, v5}, Ln7/e;->a(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v6}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v6

    invoke-virtual {v6, v5}, Ln7/e;->j(Ljava/io/File;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    iget-object v9, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v9}, Lh7/b;->g(Lh7/b;)Ln7/d;

    move-result-object v9

    invoke-interface {v9, v8}, Ln7/d;->a(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v6}, Lh7/b;->v(Lh7/b;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lh7/b$e;->b:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v6}, Lh7/b;->e(Lh7/b;)Ln7/e;

    move-result-object v6

    invoke-virtual {v6, v5}, Ln7/e;->i(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v5, v7}, Lh7/b;->j(Lh7/b;Ljava/util/List;)V

    :cond_9
    iget-object v5, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v5}, Lh7/b;->v(Lh7/b;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lh7/b$e;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto/16 :goto_0

    :cond_a
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    new-instance v6, LIc/a;

    invoke-direct {v6, v4}, LIc/a;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/util/concurrent/Phaser;->bulkRegister(I)I

    iget-object v7, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v7}, Lh7/b;->f(Lh7/b;)Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Lh7/b$e$c;

    invoke-direct {v8, p0, v5, v6}, Lh7/b$e$c;-><init>(Lh7/b$e;Ljava/util/LinkedList;LIc/a;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v6, v2, v3}, LIc/a;->b(J)Z

    move-result v7

    if-nez v7, :cond_b

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v7}, Lh7/b;->v(Lh7/b;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lh7/b$e;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/Phaser;->bulkRegister(I)I

    iget-object v8, p0, Lh7/b$e;->d:Lh7/b;

    new-instance v9, Lh7/c;

    invoke-direct {v9, v6}, Lh7/c;-><init>(LIc/a;)V

    invoke-static {v8, v7, v9}, Lh7/b;->h(Lh7/b;Ljava/io/File;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v2, v3}, LIc/a;->b(J)Z

    move-result v7

    if-nez v7, :cond_b

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v6, v4}, Ljava/util/concurrent/Phaser;->bulkRegister(I)I

    iget-object v5, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v5}, Lh7/b;->f(Lh7/b;)Landroid/app/Activity;

    move-result-object v5

    new-instance v7, Lh7/b$e$d;

    invoke-direct {v7, p0, v1, v6}, Lh7/b$e$d;-><init>(Lh7/b$e;Ljava/lang/String;LIc/a;)V

    invoke-virtual {v5, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v6, v2, v3}, LIc/a;->b(J)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v6, v4}, Ljava/util/concurrent/Phaser;->bulkRegister(I)I

    iget-object v1, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v1}, Lh7/b;->f(Lh7/b;)Landroid/app/Activity;

    move-result-object v1

    new-instance v4, Lh7/b$e$e;

    invoke-direct {v4, p0, v6}, Lh7/b$e$e;-><init>(Lh7/b$e;LIc/a;)V

    invoke-virtual {v1, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v6, v2, v3}, LIc/a;->b(J)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    :goto_3
    iget-object v1, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v1}, Lh7/b;->l(Lh7/b;)V

    iget-object v1, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v1}, Lh7/b;->m(Lh7/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_5

    :goto_4
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_5
    return-void

    :goto_6
    iget-object v2, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v2}, Lh7/b;->l(Lh7/b;)V

    iget-object v2, p0, Lh7/b$e;->d:Lh7/b;

    invoke-static {v2}, Lh7/b;->m(Lh7/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
