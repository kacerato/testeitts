.class final Lcom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeDeleteAction(LMf/a;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/a<",
        "Lnf/P0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFetchImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchImpl.kt\ncom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1305:1\n1855#2,2:1306\n*S KotlinDebug\n*F\n+ 1 FetchImpl.kt\ncom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1\n*L\n545#1:1306,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nFetchImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchImpl.kt\ncom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1305:1\n1855#2,2:1306\n*S KotlinDebug\n*F\n+ 1 FetchImpl.kt\ncom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1\n*L\n545#1:1306,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $downloadAction:LMf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/a<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $func:Lcom/tonyodev/fetch2core/Func;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $func2:Lcom/tonyodev/fetch2core/Func;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;


# direct methods
.method public constructor <init>(LMf/a;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/a<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2/fetch/FetchImpl;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1;->$downloadAction:LMf/a;

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    iput-object p3, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1;->$func2:Lcom/tonyodev/fetch2core/Func;

    iput-object p4, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1;->$func:Lcom/tonyodev/fetch2core/Func;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method

.method public static synthetic b(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1;->invoke$lambda$2(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    return-void
.end method

.method public static synthetic d(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1;->invoke$lambda$1(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method private static final invoke$lambda$1(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 1

    const-string v0, "$downloads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final invoke$lambda$2(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 1

    const-string v0, "$error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1;->invoke()V

    sget-object v0, Lnf/P0;->a:Lnf/P0;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1;->$downloadAction:LMf/a;

    invoke-interface {v0}, LMf/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    .line 5
    invoke-static {v2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getLogger$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2core/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 6
    invoke-static {v2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getListenerCoordinator$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/tonyodev/fetch2/FetchListener;->onDeleted(Lcom/tonyodev/fetch2/Download;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1;->$func:Lcom/tonyodev/fetch2core/Func;

    new-instance v3, Lcom/tonyodev/fetch2/fetch/v;

    invoke-direct {v3, v2, v0}, Lcom/tonyodev/fetch2/fetch/v;-><init>(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 8
    :goto_1
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getLogger$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2core/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->getNamespace()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetch with namespace "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tonyodev/fetch2/FetchErrorUtils;->getErrorFromMessage(Ljava/lang/String;)Lcom/tonyodev/fetch2/Error;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Lcom/tonyodev/fetch2/Error;->setThrowable(Ljava/lang/Throwable;)V

    .line 11
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1;->$func2:Lcom/tonyodev/fetch2core/Func;

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1;->$func2:Lcom/tonyodev/fetch2core/Func;

    new-instance v3, Lcom/tonyodev/fetch2/fetch/w;

    invoke-direct {v3, v2, v1}, Lcom/tonyodev/fetch2/fetch/w;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_2
    return-void
.end method
