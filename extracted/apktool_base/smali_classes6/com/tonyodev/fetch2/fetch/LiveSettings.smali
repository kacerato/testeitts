.class public final Lcom/tonyodev/fetch2/fetch/LiveSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile didSanitizeDatabaseOnFirstEntry:Z

.field private final lock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final namespace:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "namespace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/LiveSettings;->namespace:Ljava/lang/String;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/LiveSettings;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final execute(LMf/l;)V
    .locals 1
    .param p1    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/l<",
            "-",
            "Lcom/tonyodev/fetch2/fetch/LiveSettings;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "func"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/LiveSettings;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1, p0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getDidSanitizeDatabaseOnFirstEntry()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/LiveSettings;->didSanitizeDatabaseOnFirstEntry:Z

    return v0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/LiveSettings;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public final setDidSanitizeDatabaseOnFirstEntry(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tonyodev/fetch2/fetch/LiveSettings;->didSanitizeDatabaseOnFirstEntry:Z

    return-void
.end method
