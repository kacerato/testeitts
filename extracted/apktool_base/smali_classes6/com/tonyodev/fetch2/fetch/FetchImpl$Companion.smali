.class public final Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/fetch/FetchImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;)Lcom/tonyodev/fetch2/fetch/FetchImpl;
    .locals 10
    .param p1    # Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getFetchConfiguration()Lcom/tonyodev/fetch2/FetchConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getFetchConfiguration()Lcom/tonyodev/fetch2/FetchConfiguration;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getHandlerWrapper()Lcom/tonyodev/fetch2core/HandlerWrapper;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getUiHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getFetchHandler()Lcom/tonyodev/fetch2/fetch/FetchHandler;

    move-result-object v6

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getFetchConfiguration()Lcom/tonyodev/fetch2/FetchConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v7

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getListenerCoordinator()Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    move-result-object v8

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getFetchDatabaseManagerWrapper()Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    move-result-object v9

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/tonyodev/fetch2/fetch/FetchImpl;-><init>(Ljava/lang/String;Lcom/tonyodev/fetch2/FetchConfiguration;Lcom/tonyodev/fetch2core/HandlerWrapper;Landroid/os/Handler;Lcom/tonyodev/fetch2/fetch/FetchHandler;Lcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;)V

    return-object v0
.end method
