.class public Lcom/itsmagic/engine/Engines/Engine/World/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/World/a$k;
    }
.end annotation


# static fields
.field public static a:LLb/e;

.field public static final b:Ljava/lang/Object;

.field public static c:Lcom/itsmagic/engine/Engines/Engine/World/World;

.field public static final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final f:LJAVARuntime/AtomicFloat;

.field public static final g:LAc/b;

.field public static h:Lcom/itsmagic/engine/Engines/Engine/World/a$k;

.field public static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LLb/j;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:[LLb/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, LJAVARuntime/AtomicFloat;

    invoke-direct {v0}, LJAVARuntime/AtomicFloat;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->f:LJAVARuntime/AtomicFloat;

    new-instance v0, LAc/b;

    invoke-direct {v0}, LAc/b;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->g:LAc/b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->i:Ljava/util/List;

    const/4 v0, 0x1

    new-array v0, v0, [LLb/e;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->j:[LLb/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()Z
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static B(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classReference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;",
            ")",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p0, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public static C(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tittle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p0, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->E(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public static D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "classReference",
            "parent",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/World/a;->D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static E(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "parent",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->q0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/World/a;->E(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static F(LLb/e;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "useSchedule",
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LLb/e;->a:Ljava/lang/String;

    invoke-static {v1, p1}, LX7/a;->s(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p1, v0

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    :try_start_1
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->h(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/World/World;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/World/a;->b:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    if-nez v4, :cond_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-boolean v4, p0, LLb/e;->d:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, LLb/e;->e:Ljava/lang/String;

    iput-object v4, p1, Lcom/itsmagic/engine/Engines/Engine/World/World;->folder:Ljava/lang/String;

    iget-object v4, p0, LLb/e;->f:Ljava/lang/String;

    iput-object v4, p1, Lcom/itsmagic/engine/Engines/Engine/World/World;->fileName:Ljava/lang/String;

    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->f()Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    move-result-object v3

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/World/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v5, v3, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->a:I

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/World/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->q()LLb/a;

    move-result-object v1

    invoke-virtual {p1, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/World/World;->u(Lcom/itsmagic/engine/Engines/Engine/World/World$c;LLb/a;Z)V

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->h:Lcom/itsmagic/engine/Engines/Engine/World/a$k;

    invoke-interface {v1}, Lcom/itsmagic/engine/Engines/Engine/World/a$k;->onSuccess()V

    iget-boolean p0, p0, LLb/e;->h:Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/World/a$d;

    invoke-direct {v1, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/World/a$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/World/World;Z)V

    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0

    :cond_2
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/World/a;->h:Lcom/itsmagic/engine/Engines/Engine/World/a$k;

    invoke-interface {p1}, Lcom/itsmagic/engine/Engines/Engine/World/a$k;->onFailed()Lcom/itsmagic/engine/Engines/Engine/World/World;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->f()Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    move-result-object v3

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/World/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v5, v3, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->a:I

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/World/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->q()LLb/a;

    move-result-object v1

    invoke-virtual {p1, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/World/World;->u(Lcom/itsmagic/engine/Engines/Engine/World/World$c;LLb/a;Z)V

    iget-boolean p0, p0, LLb/e;->h:Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/World/a$e;

    invoke-direct {v1, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/World/a$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/World/World;Z)V

    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    :cond_3
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/World/a;->b:Ljava/lang/Object;

    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    monitor-exit p0

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/World/a$f;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/World/a$f;-><init>(Ljava/lang/OutOfMemoryError;)V

    invoke-static {p1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/World/a;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_8
    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    monitor-exit p1

    goto :goto_3

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0

    :cond_4
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/World/a;->h:Lcom/itsmagic/engine/Engines/Engine/World/a$k;

    invoke-interface {p1}, Lcom/itsmagic/engine/Engines/Engine/World/a$k;->onFailed()Lcom/itsmagic/engine/Engines/Engine/World/World;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->f()Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/World/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v4, v2, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->a:I

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/World/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->q()LLb/a;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->u(Lcom/itsmagic/engine/Engines/Engine/World/World$c;LLb/a;Z)V

    iget-boolean p0, p0, LLb/e;->h:Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/World/a$g;

    invoke-direct {v1, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/World/a$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/World/World;Z)V

    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    :cond_5
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/World/a;->b:Ljava/lang/Object;

    monitor-enter p0

    :try_start_9
    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    monitor-exit p0

    :goto_3
    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p1
.end method

.method public static G(Ljava/lang/String;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/a$k;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "folder",
            "fileName",
            "changeWorldFile",
            "listener"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".world"

    invoke-static {p1, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".ar"

    invoke-static {p1, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".scn"

    invoke-static {p1, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "File("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not a world"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    if-nez v1, :cond_2

    new-instance v7, LLb/e;

    sget-object v3, LLb/d;->Sync:LLb/d;

    move-object v1, v7

    move v4, p2

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, LLb/e;-><init>(Ljava/lang/String;LLb/d;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    sput-object p3, Lcom/itsmagic/engine/Engines/Engine/World/a;->h:Lcom/itsmagic/engine/Engines/Engine/World/a$k;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "A world is already being loaded, please wait for it to finish"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "File("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") is not a world"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static H(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/a$k;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "changeWorldFile",
            "listener"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, ".world"

    invoke-static {v1, p0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".ar"

    invoke-static {v1, p0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".scn"

    invoke-static {v1, p0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "File("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") is not a world"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/World/a;->b:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    if-nez v0, :cond_2

    new-instance v6, LLb/e;

    sget-object v2, LLb/d;->Sync:LLb/d;

    invoke-static {v1}, LTc/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move v3, p1

    invoke-direct/range {v0 .. v5}, LLb/e;-><init>(Ljava/lang/String;LLb/d;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    sput-object p2, Lcom/itsmagic/engine/Engines/Engine/World/a;->h:Lcom/itsmagic/engine/Engines/Engine/World/a$k;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "A world is already being loaded, please wait for it to finish"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "File("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") is not a world"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/a$k;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "folder",
            "fileName",
            "changeWorldFile",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->J(Ljava/lang/String;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/a$k;Z)V

    return-void
.end method

.method public static J(Ljava/lang/String;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/a$k;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "folder",
            "fileName",
            "changeWorldFile",
            "listener",
            "ignoreDontDestroyOnLoad"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".world"

    invoke-static {p1, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".ar"

    invoke-static {p1, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".scn"

    invoke-static {p1, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/InvalidFileFormat;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "File("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not a world or area"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/InvalidFileFormat;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    if-nez v1, :cond_2

    new-instance v7, LLb/e;

    sget-object v3, LLb/d;->Async:LLb/d;

    move-object v1, v7

    move v4, p2

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, LLb/e;-><init>(Ljava/lang/String;LLb/d;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    iput-boolean p4, v7, LLb/e;->h:Z

    sput-object p3, Lcom/itsmagic/engine/Engines/Engine/World/a;->h:Lcom/itsmagic/engine/Engines/Engine/World/a$k;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "A world is already being loaded, please wait for it to finish"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "File("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") is not a world"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/InvalidFilePath;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static K(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/a$k;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "changeWorldFile",
            "listener"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, ".world"

    invoke-static {v1, p0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".ar"

    invoke-static {v1, p0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".scn"

    invoke-static {v1, p0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "File("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") is not a world"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/World/a;->b:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    if-nez v0, :cond_2

    new-instance v6, LLb/e;

    sget-object v2, LLb/d;->Async:LLb/d;

    invoke-static {v1}, LTc/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move v3, p1

    invoke-direct/range {v0 .. v5}, LLb/e;-><init>(Ljava/lang/String;LLb/d;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    sput-object p2, Lcom/itsmagic/engine/Engines/Engine/World/a;->h:Lcom/itsmagic/engine/Engines/Engine/World/a$k;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "A world is already being loaded, please wait for it to finish"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "File("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") is not a world"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static L()V
    .locals 1

    sget-object v0, LK8/a;->o:LCc/c;

    invoke-virtual {v0}, LCc/c;->k()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->J()V

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/b;->o()V

    const/4 v0, 0x0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    return-void
.end method

.method public static M()V
    .locals 1

    sget-object v0, LK8/a;->o:LCc/c;

    invoke-virtual {v0}, LCc/c;->k()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->J()V

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/b;->o()V

    const/4 v0, 0x0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    return-void
.end method

.method public static N(LLb/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "worldListener"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->i:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static O(Lcom/itsmagic/engine/Engines/Engine/World/World;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "world",
            "ignoreDontDestroyOnLoad"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->r()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/World/World;->isArea:Z

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->J()V

    :cond_0
    sput-object p0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-static {}, Lc8/b;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Y1()V

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->G()V

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->v()V

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/World/World;->createExampleWhenOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iput-boolean v1, p1, Lcom/itsmagic/engine/Engines/Engine/World/World;->createExampleWhenOpen:Z

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->g()V

    :cond_3
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/World/a;->i:Ljava/util/List;

    monitor-enter p1

    :goto_2
    :try_start_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLb/j;

    if-eqz v0, :cond_4

    invoke-interface {v0}, LLb/j;->a()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->N1()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 p1, 0x0

    :try_start_1
    sput-object p1, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->o0(Lcom/itsmagic/engine/Engines/Engine/World/World;)V

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/World/a$i;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/World/a$i;-><init>()V

    invoke-static {p0}, LK8/a;->B(Ljava/lang/Runnable;)V

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/World/a$j;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/World/a$j;-><init>()V

    invoke-static {p0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_4
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static P()Z
    .locals 7

    const-string v0, "/"

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/_EDITOR/tsc.scn"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    return v3

    :cond_1
    :try_start_0
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-virtual {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->x(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2, v1}, LX7/a;->h(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/_EDITOR/currentScene.scn"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v6, v6, Lcom/itsmagic/engine/Engines/Engine/World/World;->folder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2, v1}, Lid/a;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2, v4}, Lid/a;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity;->h(Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    return v3
.end method

.method public static Q(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v0, p0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->R(Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static R(Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/content/Context;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "saveWorld",
            "saveTemp",
            "context"
        }
    .end annotation

    const-string v0, "currentScene.scn"

    const-string v1, "_EDITOR"

    const/4 v2, 0x0

    if-nez p2, :cond_0

    return v2

    :cond_0
    :try_start_0
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-eqz v3, :cond_7

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/World/World;->folder:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/World/World;->fileName:Ljava/lang/String;

    if-eqz v4, :cond_7

    invoke-virtual {v3, p2}, Lcom/itsmagic/engine/Engines/Engine/World/World;->x(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v4, 0x1

    if-eqz p0, :cond_2

    sget-object p0, LW7/b;->e:LX7/a;

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->folder:Ljava/lang/String;

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->fileName:Ljava/lang/String;

    invoke-static {v5, p0, v3, p2}, LX7/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->folder:Ljava/lang/String;

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World;->fileName:Ljava/lang/String;

    invoke-static {v5, p0, p2}, LX7/a;->u(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->h(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/World/World;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne p0, v5, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_6

    :cond_1
    move p0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v4

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, LW7/b;->e:LX7/a;

    invoke-static {v1, v0, v3, p2}, LX7/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    invoke-static {v1, v0, p2}, LX7/a;->u(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->h(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/World/World;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move p1, v2

    goto :goto_3

    :cond_4
    :goto_2
    move p1, v4

    :goto_3
    if-eqz p0, :cond_6

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    return v4

    :cond_6
    :goto_4
    :try_start_1
    new-instance p0, Lbd/a;

    const-string p1, "Save failed integrity check"

    const-string v0, "O salvamento n\u00e3o passou no check de integridade"

    invoke-direct {p0, p1, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_5
    return v2

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    return v2
.end method

.method public static S(Lcom/itsmagic/engine/Engines/Engine/World/World;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "world",
            "folder",
            "name",
            "context",
            "root"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_4

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/World/World;->x(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p4, :cond_1

    invoke-static {p1, p2, p0}, LX7/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-static {p1, p2, p0}, LX7/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    const/4 p1, 0x1

    if-nez p0, :cond_3

    new-instance p0, Lbd/a;

    const-string p2, "Save failed integrity check"

    const-string p3, "O salvamento n\u00e3o passou no check de integridade"

    invoke-direct {p0, p2, p3}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, LN7/c;->w0(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_3
    return p1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return v0
.end method

.method public static T(Lcom/itsmagic/engine/Engines/Engine/World/World;Ljava/io/File;Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "world",
            "file",
            "context"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LTc/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Lcom/itsmagic/engine/Engines/Engine/World/a;->U(Lcom/itsmagic/engine/Engines/Engine/World/World;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static U(Lcom/itsmagic/engine/Engines/Engine/World/World;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "world",
            "folder",
            "name",
            "context",
            "root"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_8

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/World/World;->x(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p4, :cond_1

    invoke-static {p1, p2, v1, p3}, LX7/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    invoke-static {p1, p2, v1}, LX7/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    if-nez p4, :cond_2

    invoke-static {p1, p2, p3}, LX7/a;->u(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->h(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/World/World;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {p1, p2, p3}, LX7/a;->B(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->h(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/World/World;

    move-result-object p1

    :goto_1
    const/4 p2, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p4, v1, :cond_4

    move p4, v0

    move v1, p4

    :goto_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p4, v2, :cond_5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_3

    move v1, p2

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_4
    move v1, p2

    :cond_5
    if-nez v1, :cond_6

    move p0, p2

    goto :goto_3

    :cond_6
    move p0, v0

    :goto_3
    if-nez p0, :cond_7

    :try_start_1
    new-instance p0, Lbd/a;

    const-string p1, "Save failed integrity check"

    const-string p4, "O salvamento n\u00e3o passou no check de integridade"

    invoke-direct {p0, p1, p4}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_4
    return v0

    :cond_7
    return p2

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    return v0
.end method

.method public static V()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->X()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->W()V

    return-void
.end method

.method public static W()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->c:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->P()Z

    move-result v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/World/World;->d:LLb/g;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v1}, LLb/g;->onSuccess()V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, LLb/g;->a()V

    :cond_1
    :goto_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->c:Z

    :cond_2
    return-void
.end method

.method public static X()V
    .locals 8

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/World/a;->j:[LLb/e;

    aput-object v1, v5, v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v4, :cond_8

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    aget-object v4, v5, v3

    iget-boolean v5, v4, LLb/e;->c:Z

    if-nez v5, :cond_7

    iput-boolean v2, v4, LLb/e;->c:Z

    iget-object v2, v4, LLb/e;->b:LLb/d;

    sget-object v5, LLb/d;->Sync:LLb/d;

    if-ne v2, v5, :cond_6

    iget-object v2, v4, LLb/e;->a:Ljava/lang/String;

    invoke-static {v2, v1}, LX7/a;->s(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->h(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/World/World;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v0, v4, LLb/e;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, v4, LLb/e;->e:Ljava/lang/String;

    iput-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/World/World;->folder:Ljava/lang/String;

    iget-object v0, v4, LLb/e;->f:Ljava/lang/String;

    iput-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/World/World;->fileName:Ljava/lang/String;

    :cond_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->f()Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    move-result-object v0

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/World/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->a:I

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/World/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->q()LLb/a;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/World/World;->u(Lcom/itsmagic/engine/Engines/Engine/World/World$c;LLb/a;Z)V

    iget-boolean v0, v4, LLb/e;->h:Z

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->O(Lcom/itsmagic/engine/Engines/Engine/World/World;Z)V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->h:Lcom/itsmagic/engine/Engines/Engine/World/a$k;

    invoke-interface {v0}, Lcom/itsmagic/engine/Engines/Engine/World/a$k;->onSuccess()V

    goto/16 :goto_2

    :cond_2
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->h:Lcom/itsmagic/engine/Engines/Engine/World/a$k;

    invoke-interface {v1}, Lcom/itsmagic/engine/Engines/Engine/World/a$k;->onFailed()Lcom/itsmagic/engine/Engines/Engine/World/World;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->f()Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    move-result-object v5

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/World/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v7, v5, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->a:I

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/World/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->q()LLb/a;

    move-result-object v6

    invoke-virtual {v1, v5, v6, v3}, Lcom/itsmagic/engine/Engines/Engine/World/World;->u(Lcom/itsmagic/engine/Engines/Engine/World/World$c;LLb/a;Z)V

    iget-boolean v3, v4, LLb/e;->h:Z

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/World/a;->O(Lcom/itsmagic/engine/Engines/Engine/World/World;Z)V

    goto :goto_1

    :cond_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load world file "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, LLb/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    monitor-enter v0

    :try_start_1
    sput-object v2, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->h:Lcom/itsmagic/engine/Engines/Engine/World/a$k;

    invoke-interface {v1}, Lcom/itsmagic/engine/Engines/Engine/World/a$k;->onFailed()Lcom/itsmagic/engine/Engines/Engine/World/World;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->f()Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    move-result-object v5

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/World/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v7, v5, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->a:I

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/World/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->q()LLb/a;

    move-result-object v6

    invoke-virtual {v1, v5, v6, v3}, Lcom/itsmagic/engine/Engines/Engine/World/World;->u(Lcom/itsmagic/engine/Engines/Engine/World/World$c;LLb/a;Z)V

    iget-boolean v3, v4, LLb/e;->h:Z

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/World/a;->O(Lcom/itsmagic/engine/Engines/Engine/World/World;Z)V

    :cond_5
    monitor-enter v0

    :try_start_2
    sput-object v2, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_6
    sget-object v0, LLb/d;->Async:LLb/d;

    if-ne v2, v0, :cond_9

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/World/a$b;

    invoke-direct {v2, v4, v1}, Lcom/itsmagic/engine/Engines/Engine/World/a$b;-><init>(LLb/e;Landroid/content/Context;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_7
    iget v0, v4, LLb/e;->g:I

    add-int/2addr v0, v2

    iput v0, v4, LLb/e;->g:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/World/a$c;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/World/a$c;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_9
    :goto_2
    return-void

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method public static synthetic a(LLb/e;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/World/a;->F(LLb/e;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Engine/World/World;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/World/a;->O(Lcom/itsmagic/engine/Engines/Engine/World/World;Z)V

    return-void
.end method

.method public static synthetic c()LAc/b;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->g:LAc/b;

    return-object v0
.end method

.method public static synthetic d()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static synthetic e()LJAVARuntime/AtomicFloat;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->f:LJAVARuntime/AtomicFloat;

    return-object v0
.end method

.method public static synthetic f()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static g(LLb/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "worldListener"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->i:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static h()V
    .locals 1

    sget-object v0, LK8/a;->o:LCc/c;

    invoke-virtual {v0}, LCc/c;->k()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->J()V

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/b;->o()V

    const/4 v0, 0x0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static i(LLb/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/World/a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/World/a$a;-><init>(LLb/c;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/World/a;->l(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Y0()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "parent"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    move-result-object v3

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/World/a;->l(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static m(Ljava/lang/Class;)LJAVARuntime/Component;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classReference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "LJAVARuntime/Component;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Y0()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static n(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Y0()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-object v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "classReference",
            "parent"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/World/a;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static p(Ljava/lang/Class;)LJAVARuntime/Component;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classReference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "LJAVARuntime/Component;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Y0()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static q()LLb/a;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/World/a$h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/World/a$h;-><init>()V

    return-object v0
.end method

.method public static r()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isGarbage()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isGarbage()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->dontDestroyOnLoad:Z

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static s()I
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static t()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->g:LAc/b;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static u()F
    .locals 3

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->z()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->s()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->v()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    div-float/2addr v1, v0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->x()F

    move-result v0

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    return v2
.end method

.method public static v()I
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static w()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    if-eqz v1, :cond_1

    iget-object v1, v1, LLb/e;->a:Ljava/lang/String;

    const-string v2, "_EDITOR/currentScene.scn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "latest world"

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    iget-object v1, v1, LLb/e;->a:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static x()F
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->f:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0}, LJAVARuntime/AtomicFloat;->get()F

    move-result v0

    return v0
.end method

.method public static y()Z
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->isArea:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static z()Z
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->a:LLb/e;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
