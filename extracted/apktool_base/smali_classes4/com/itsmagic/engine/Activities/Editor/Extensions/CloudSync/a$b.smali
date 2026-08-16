.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->t(LE3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LE3/a;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;LE3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$candidate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->a:LE3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->a:LE3/a;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->a:LE3/a;

    sget-object v1, LE3/d;->Failed:LE3/d;

    invoke-virtual {v0, v1}, LE3/a;->k(LE3/d;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->a:LE3/a;

    invoke-virtual {v0, p1}, LE3/a;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->f(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->f(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->a:LE3/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->e(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->a:LE3/a;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->a:LE3/a;

    sget-object v1, LE3/d;->Failed:LE3/d;

    invoke-virtual {v0, v1}, LE3/a;->k(LE3/d;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->a:LE3/a;

    const-string v1, "No ethernet connection"

    invoke-virtual {v0, v1}, LE3/a;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->g(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public c(JJI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "count",
            "ma",
            "percentage"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->a:LE3/a;

    invoke-virtual {p1, p5}, LE3/a;->j(I)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->a:LE3/a;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->a:LE3/a;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->a:LE3/a;

    sget-object v1, LE3/d;->Done:LE3/d;

    invoke-virtual {v0, v1}, LE3/a;->k(LE3/d;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->e(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
