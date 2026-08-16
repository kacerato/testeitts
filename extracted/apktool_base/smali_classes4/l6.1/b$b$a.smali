.class public Ll6/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll6/b$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ll6/b$b;


# direct methods
.method public constructor <init>(Ll6/b$b;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$page"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ll6/b$b$a;->c:Ll6/b$b;

    iput-object p2, p0, Ll6/b$b$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Ll6/b$b$a;->c:Ll6/b$b;

    iget-object v0, v0, Ll6/b$b;->c:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    iget-object v0, p0, Ll6/b$b$a;->c:Ll6/b$b;

    iget-object v0, v0, Ll6/b$b;->d:Ll6/b;

    invoke-static {v0}, Ll6/b;->u(Ll6/b;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ll6/b$b$a;->c:Ll6/b$b;

    iget-object v1, v1, Ll6/b$b;->d:Ll6/b;

    invoke-static {v1}, Ll6/b;->u(Ll6/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Ll6/b$b$a;->c:Ll6/b$b;

    iget-object v1, v1, Ll6/b$b;->d:Ll6/b;

    invoke-static {v1}, Ll6/b;->u(Ll6/b;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Ll6/b$b$a;->c:Ll6/b$b;

    iget-object v3, v3, Ll6/b$b;->d:Ll6/b;

    invoke-static {v3}, Ll6/b;->u(Ll6/b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Ll6/b$b$a;->c:Ll6/b$b;

    iget-object v3, v3, Ll6/b$b;->d:Ll6/b;

    invoke-static {v3}, Ll6/b;->u(Ll6/b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Ll6/b$b$a;->c:Ll6/b$b;

    iget-object v3, v3, Ll6/b$b;->d:Ll6/b;

    invoke-static {v3}, Ll6/b;->v(Ll6/b;)LU5/a;

    move-result-object v3

    invoke-virtual {v3, v1}, LU5/a;->t(Ljava/lang/String;)V

    iget-object v1, p0, Ll6/b$b$a;->c:Ll6/b$b;

    iget-object v1, v1, Ll6/b$b;->d:Ll6/b;

    invoke-static {v1}, Ll6/b;->o(Ll6/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Ll6/b$b$a;->c:Ll6/b$b;

    iget-object v1, v1, Ll6/b$b;->d:Ll6/b;

    invoke-virtual {v1}, Ll6/b;->b()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v1, p0, Ll6/b$b$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    new-instance v4, Lj6/b;

    invoke-direct {v4, v3}, Lj6/b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Ll6/b$b$a;->c:Ll6/b$b;

    iget-object v3, v3, Ll6/b$b;->d:Ll6/b;

    invoke-static {v3}, Ll6/b;->s(Ll6/b;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ll6/b$b$a;->c:Ll6/b$b;

    iget-object v1, v1, Ll6/b$b;->d:Ll6/b;

    invoke-virtual {v1, v0}, Lj6/d;->i(Ljava/util/List;)V

    iget-object v0, p0, Ll6/b$b$a;->c:Ll6/b$b;

    iget-object v0, v0, Ll6/b$b;->d:Ll6/b;

    invoke-static {v0}, Ll6/b;->o(Ll6/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
