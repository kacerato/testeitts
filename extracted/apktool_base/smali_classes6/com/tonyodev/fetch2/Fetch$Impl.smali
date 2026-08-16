.class public final Lcom/tonyodev/fetch2/Fetch$Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/Fetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Impl"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/tonyodev/fetch2/Fetch$Impl;

.field private static volatile defaultFetchConfiguration:Lcom/tonyodev/fetch2/FetchConfiguration;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static volatile defaultFetchInstance:Lcom/tonyodev/fetch2/Fetch;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final lock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tonyodev/fetch2/Fetch$Impl;

    invoke-direct {v0}, Lcom/tonyodev/fetch2/Fetch$Impl;-><init>()V

    sput-object v0, Lcom/tonyodev/fetch2/Fetch$Impl;->$$INSTANCE:Lcom/tonyodev/fetch2/Fetch$Impl;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tonyodev/fetch2/Fetch$Impl;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultFetchConfiguration()Lcom/tonyodev/fetch2/FetchConfiguration;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/Fetch$Impl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tonyodev/fetch2/Fetch$Impl;->defaultFetchConfiguration:Lcom/tonyodev/fetch2/FetchConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getDefaultInstance()Lcom/tonyodev/fetch2/Fetch;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/Fetch$Impl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tonyodev/fetch2/Fetch$Impl;->defaultFetchConfiguration:Lcom/tonyodev/fetch2/FetchConfiguration;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/tonyodev/fetch2/Fetch$Impl;->defaultFetchInstance:Lcom/tonyodev/fetch2/Fetch;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/tonyodev/fetch2/Fetch;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v2, Lcom/tonyodev/fetch2/fetch/FetchImpl;->Companion:Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;

    sget-object v3, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->INSTANCE:Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;

    invoke-virtual {v3, v1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->buildModulesFromPrefs(Lcom/tonyodev/fetch2/FetchConfiguration;)Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;->newInstance(Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;)Lcom/tonyodev/fetch2/fetch/FetchImpl;

    move-result-object v2

    sput-object v2, Lcom/tonyodev/fetch2/Fetch$Impl;->defaultFetchInstance:Lcom/tonyodev/fetch2/Fetch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-object v2

    :cond_2
    :try_start_1
    new-instance v1, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v2, "Global Fetch Configuration not set"

    invoke-direct {v1, v2}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public final getInstance(Lcom/tonyodev/fetch2/FetchConfiguration;)Lcom/tonyodev/fetch2/Fetch;
    .locals 2
    .param p1    # Lcom/tonyodev/fetch2/FetchConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fetchConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->Companion:Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;

    sget-object v1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->INSTANCE:Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;

    invoke-virtual {v1, p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->buildModulesFromPrefs(Lcom/tonyodev/fetch2/FetchConfiguration;)Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;->newInstance(Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;)Lcom/tonyodev/fetch2/fetch/FetchImpl;

    move-result-object p1

    return-object p1
.end method

.method public final setDefaultInstanceConfiguration(Lcom/tonyodev/fetch2/FetchConfiguration;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/FetchConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fetchConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tonyodev/fetch2/Fetch$Impl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p1, Lcom/tonyodev/fetch2/Fetch$Impl;->defaultFetchConfiguration:Lcom/tonyodev/fetch2/FetchConfiguration;

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
