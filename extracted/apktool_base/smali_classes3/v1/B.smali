.class public final Lv1/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/K;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/lang/Object;

.field public c:Lv1/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lv1/d;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv1/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lv1/B;->b:Ljava/lang/Object;

    iput-object p1, p0, Lv1/B;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lv1/B;->c:Lv1/d;

    return-void
.end method

.method public static bridge synthetic a(Lv1/B;)Lv1/d;
    .locals 0

    iget-object p0, p0, Lv1/B;->c:Lv1/d;

    return-object p0
.end method

.method public static bridge synthetic b(Lv1/B;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lv1/B;->b:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final P1()V
    .locals 2

    iget-object v0, p0, Lv1/B;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lv1/B;->c:Lv1/d;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d(Lv1/k;)V
    .locals 1
    .param p1    # Lv1/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lv1/k;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lv1/B;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lv1/B;->c:Lv1/d;

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lv1/B;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lv1/A;

    invoke-direct {v0, p0}, Lv1/A;-><init>(Lv1/B;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-void
.end method
