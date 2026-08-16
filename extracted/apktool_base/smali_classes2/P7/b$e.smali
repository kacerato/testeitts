.class public LP7/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP7/b;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:LP7/b;


# direct methods
.method public constructor <init>(LP7/b;Ljava/lang/String;Ljava/lang/String;)V
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

    iput-object p1, p0, LP7/b$e;->d:LP7/b;

    iput-object p2, p0, LP7/b$e;->b:Ljava/lang/String;

    iput-object p3, p0, LP7/b$e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;LP7/b$j;)V
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

    iget-object v0, p0, LP7/b$e;->c:Ljava/lang/String;

    iget-object v1, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v1}, LP7/b;->w(LP7/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v0}, LP7/b;->e(LP7/b;)LV7/d;

    move-result-object v0

    invoke-virtual {v0, p1}, LV7/d;->i(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    new-instance v0, LP7/b$e$g;

    invoke-direct {v0, p0}, LP7/b$e$g;-><init>(LP7/b$e;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, LP7/b$e;->c:Ljava/lang/String;

    iget-object v2, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v2}, LP7/b;->w(LP7/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v2}, LP7/b;->e(LP7/b;)LV7/d;

    move-result-object v2

    invoke-virtual {v2, v1}, LV7/d;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v3}, LP7/b;->e(LP7/b;)LV7/d;

    move-result-object v3

    invoke-virtual {v3}, LV7/d;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v3}, LP7/b;->e(LP7/b;)LV7/d;

    move-result-object v3

    iget-object v4, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v4}, LP7/b;->w(LP7/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v4}, LV7/d;->j(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v1}, LP7/b$j;->a(Ljava/io/File;)V

    :cond_2
    iget-object v2, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v2}, LP7/b;->e(LP7/b;)LV7/d;

    move-result-object v2

    invoke-virtual {v2, v1}, LV7/d;->h(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1, p2}, LP7/b$e;->a(Ljava/io/File;LP7/b$j;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public run()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v1}, LP7/b;->v(LP7/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LP7/b$e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v1}, LP7/b;->l(LP7/b;)V

    iget-object v1, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v1}, LP7/b;->m(LP7/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, LP7/b$e;->c:Ljava/lang/String;

    iget-object v2, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v2}, LP7/b;->w(LP7/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v1}, LP7/b;->x(LP7/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

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

    iget-object v4, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v4}, LP7/b;->f(LP7/b;)Landroid/app/Activity;

    move-result-object v4

    new-instance v6, LP7/b$e$a;

    invoke-direct {v6, p0, v5}, LP7/b$e$a;-><init>(LP7/b$e;LIc/a;)V

    invoke-virtual {v4, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v5, v2, v3}, LIc/a;->b(J)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, LP7/b$e;->c:Ljava/lang/String;

    iget-object v3, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v3}, LP7/b;->w(LP7/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v2}, LP7/b;->w(LP7/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v2}, LP7/b;->e(LP7/b;)LV7/d;

    move-result-object v2

    invoke-virtual {v2}, LV7/d;->k()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :catch_0
    move-exception v1

    goto/16 :goto_3

    :cond_4
    :goto_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v3}, LP7/b;->e(LP7/b;)LV7/d;

    move-result-object v3

    invoke-virtual {v3}, LV7/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v3}, LP7/b;->e(LP7/b;)LV7/d;

    move-result-object v3

    invoke-virtual {v3, v2}, LV7/d;->a(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, LP7/b$e$b;

    invoke-direct {v3, p0, v1, v5}, LP7/b$e$b;-><init>(LP7/b$e;Ljava/util/HashSet;LIc/a;)V

    invoke-virtual {p0, v2, v3}, LP7/b$e;->a(Ljava/io/File;LP7/b$j;)V

    goto/16 :goto_2

    :cond_5
    iget-object v1, p0, LP7/b$e;->d:LP7/b;

    iget-object v5, p0, LP7/b$e;->b:Ljava/lang/String;

    invoke-static {v1, v5}, LP7/b;->i(LP7/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v6}, LP7/b;->e(LP7/b;)LV7/d;

    move-result-object v6

    invoke-virtual {v6, v5}, LV7/d;->a(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v6}, LP7/b;->e(LP7/b;)LV7/d;

    move-result-object v6

    invoke-virtual {v6, v5}, LV7/d;->i(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    new-instance v6, LP7/b$e$c;

    invoke-direct {v6, p0}, LP7/b$e$c;-><init>(LP7/b$e;)V

    invoke-interface {v5, v6}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v6, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v6}, LP7/b;->v(LP7/b;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, LP7/b$e;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v6, v5}, LP7/b;->j(LP7/b;Ljava/util/List;)V

    iget-object v6, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v6}, LP7/b;->v(LP7/b;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, LP7/b$e;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_0

    :cond_7
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    new-instance v5, LIc/a;

    invoke-direct {v5, v4}, LIc/a;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/util/concurrent/Phaser;->bulkRegister(I)I

    iget-object v7, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v7}, LP7/b;->f(LP7/b;)Landroid/app/Activity;

    move-result-object v7

    new-instance v8, LP7/b$e$d;

    invoke-direct {v8, p0, v6, v5}, LP7/b$e$d;-><init>(LP7/b$e;Ljava/util/LinkedList;LIc/a;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v5, v2, v3}, LIc/a;->b(J)Z

    move-result v7

    if-nez v7, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v7}, LP7/b;->v(LP7/b;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, LP7/b$e;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/Phaser;->bulkRegister(I)I

    iget-object v8, p0, LP7/b$e;->d:LP7/b;

    new-instance v9, Lh7/c;

    invoke-direct {v9, v5}, Lh7/c;-><init>(LIc/a;)V

    invoke-static {v8, v7, v9}, LP7/b;->h(LP7/b;Ljava/io/File;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v2, v3}, LIc/a;->b(J)Z

    move-result v7

    if-nez v7, :cond_8

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v5, v4}, Ljava/util/concurrent/Phaser;->bulkRegister(I)I

    iget-object v6, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v6}, LP7/b;->f(LP7/b;)Landroid/app/Activity;

    move-result-object v6

    new-instance v7, LP7/b$e$e;

    invoke-direct {v7, p0, v1, v5}, LP7/b$e$e;-><init>(LP7/b$e;Ljava/lang/String;LIc/a;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v5, v2, v3}, LIc/a;->b(J)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v5, v4}, Ljava/util/concurrent/Phaser;->bulkRegister(I)I

    iget-object v1, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v1}, LP7/b;->f(LP7/b;)Landroid/app/Activity;

    move-result-object v1

    new-instance v4, LP7/b$e$f;

    invoke-direct {v4, p0, v5}, LP7/b$e$f;-><init>(LP7/b$e;LIc/a;)V

    invoke-virtual {v1, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v5, v2, v3}, LIc/a;->b(J)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    :goto_2
    iget-object v1, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v1}, LP7/b;->l(LP7/b;)V

    iget-object v1, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v1}, LP7/b;->m(LP7/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4

    :goto_3
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_4
    return-void

    :goto_5
    iget-object v2, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v2}, LP7/b;->l(LP7/b;)V

    iget-object v2, p0, LP7/b$e;->d:LP7/b;

    invoke-static {v2}, LP7/b;->m(LP7/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
