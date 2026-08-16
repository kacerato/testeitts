.class public LZ5/f$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ5/f$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:LZ5/f$e;


# direct methods
.method public constructor <init>(LZ5/f$e;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$filteredResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZ5/f$e$a;->c:LZ5/f$e;

    iput-object p2, p0, LZ5/f$e$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LZ5/f$e$a;->c:LZ5/f$e;

    iget-object v0, v0, LZ5/f$e;->b:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    iget-object v0, p0, LZ5/f$e$a;->c:LZ5/f$e;

    iget-object v0, v0, LZ5/f$e;->c:LZ5/f;

    invoke-static {v0}, LZ5/f;->D1(LZ5/f;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LZ5/f$e$a;->c:LZ5/f$e;

    iget-object v1, v1, LZ5/f$e;->c:LZ5/f;

    invoke-static {v1}, LZ5/f;->D1(LZ5/f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, LZ5/f$e$a;->c:LZ5/f$e;

    iget-object v1, v1, LZ5/f$e;->c:LZ5/f;

    invoke-static {v1}, LZ5/f;->D1(LZ5/f;)Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, LZ5/f$e$a;->c:LZ5/f$e;

    iget-object v4, v4, LZ5/f$e;->c:LZ5/f;

    invoke-static {v4}, LZ5/f;->D1(LZ5/f;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, LZ5/f$e$a;->c:LZ5/f$e;

    iget-object v2, v2, LZ5/f$e;->c:LZ5/f;

    invoke-static {v2}, LZ5/f;->D1(LZ5/f;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, LZ5/f$e$a;->c:LZ5/f$e;

    iget-object v2, v2, LZ5/f$e;->c:LZ5/f;

    invoke-static {v2}, LZ5/f;->y1(LZ5/f;)LU5/a;

    move-result-object v2

    invoke-virtual {v2, v1}, LU5/a;->t(Ljava/lang/String;)V

    iget-object v1, p0, LZ5/f$e$a;->c:LZ5/f$e;

    iget-object v1, v1, LZ5/f$e;->c:LZ5/f;

    invoke-static {v1}, LZ5/f;->w1(LZ5/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, LZ5/f$e$a;->c:LZ5/f$e;

    iget-object v1, v1, LZ5/f$e;->c:LZ5/f;

    invoke-static {v1, v3}, LZ5/f;->t1(LZ5/f;Z)Z

    iget-object v1, p0, LZ5/f$e$a;->c:LZ5/f$e;

    iget-object v1, v1, LZ5/f$e;->c:LZ5/f;

    invoke-static {v1}, LZ5/f;->u1(LZ5/f;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LZ5/f$e$a;->c:LZ5/f$e;

    iget-object v0, v0, LZ5/f$e;->c:LZ5/f;

    iget-object v1, p0, LZ5/f$e$a;->b:Ljava/util/List;

    invoke-static {v0, v1}, LZ5/f;->E1(LZ5/f;Ljava/util/List;)V

    iget-object v0, p0, LZ5/f$e$a;->c:LZ5/f$e;

    iget-object v0, v0, LZ5/f$e;->c:LZ5/f;

    invoke-static {v0, v2}, LZ5/f;->F1(LZ5/f;Z)Z

    iget-object v0, p0, LZ5/f$e$a;->c:LZ5/f$e;

    iget-object v0, v0, LZ5/f$e;->c:LZ5/f;

    invoke-static {v0}, LZ5/f;->w1(LZ5/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, LZ5/f$e$a;->c:LZ5/f$e;

    iget-object v0, v0, LZ5/f$e;->c:LZ5/f;

    invoke-static {v0, v3}, LZ5/f;->t1(LZ5/f;Z)Z

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
