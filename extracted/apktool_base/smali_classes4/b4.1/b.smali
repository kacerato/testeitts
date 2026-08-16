.class public Lb4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb4/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static volatile c:I

.field public static volatile d:Ljava/lang/String;

.field public static volatile e:Z

.field public static final f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lb4/b;->a:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lb4/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lb4/b$a;

    invoke-direct {v0}, Lb4/b$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->h(Lx8/b;)V

    new-instance v0, Lb4/b$b;

    invoke-direct {v0}, Lb4/b$b;-><init>()V

    sput-object v0, Lb4/b;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/util/List;
    .locals 1

    sget-object v0, Lb4/b;->a:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lb4/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lb4/b;->k()V

    return-void
.end method

.method public static synthetic d()V
    .locals 0

    invoke-static {}, Lb4/b;->m()V

    return-void
.end method

.method public static e(Lb4/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    sget-object v0, Lb4/b;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lb4/b$c;

    invoke-direct {v1}, Lb4/b$c;-><init>()V

    iput-object v1, p0, Lb4/a;->d:Lb4/c;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lb4/b;->m()V

    sget p0, Lb4/b;->c:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lb4/b;->c:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lb4/b;->k()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static f(I)Lb4/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    sget-object v0, Lb4/b;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb4/a;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static g()I
    .locals 1

    sget v0, Lb4/b;->c:I

    return v0
.end method

.method public static h()Z
    .locals 2

    sget-object v0, Lb4/b;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static i()V
    .locals 1

    sget-boolean v0, Lb4/b;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lb4/b;->e:Z

    sget-object v0, Lb4/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lb4/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lb4/b;->d:Ljava/lang/String;

    invoke-static {v0}, LN7/c;->n0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, LN7/c;->n0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static j(Lb4/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    sget-object v0, Lb4/b;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lb4/b;->m()V

    sget p0, Lb4/b;->c:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lb4/b;->c:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static k()V
    .locals 3

    sget-object v0, Lb4/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lb4/b;->f:Ljava/lang/Runnable;

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static l()I
    .locals 2

    sget-object v0, Lb4/b;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static m()V
    .locals 4

    sget-object v0, Lb4/b;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb4/a;

    invoke-virtual {v1}, Lb4/a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v3, Lb4/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sput-object v1, Lb4/b;->d:Ljava/lang/String;

    sput-boolean v2, Lb4/b;->e:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    if-nez v1, :cond_2

    sget-object v3, Lb4/b;->d:Ljava/lang/String;

    if-eqz v3, :cond_2

    sput-object v1, Lb4/b;->d:Ljava/lang/String;

    sput-boolean v2, Lb4/b;->e:Z

    goto :goto_0

    :cond_1
    sget-object v1, Lb4/b;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    sput-object v1, Lb4/b;->d:Ljava/lang/String;

    sput-boolean v2, Lb4/b;->e:Z

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
