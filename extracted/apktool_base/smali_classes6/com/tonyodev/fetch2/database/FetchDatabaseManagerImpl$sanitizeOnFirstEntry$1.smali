.class final Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl$sanitizeOnFirstEntry$1;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitizeOnFirstEntry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/l<",
        "Lcom/tonyodev/fetch2/fetch/LiveSettings;",
        "Lnf/P0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl$sanitizeOnFirstEntry$1;->this$0:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/tonyodev/fetch2/fetch/LiveSettings;

    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl$sanitizeOnFirstEntry$1;->invoke(Lcom/tonyodev/fetch2/fetch/LiveSettings;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public final invoke(Lcom/tonyodev/fetch2/fetch/LiveSettings;)V
    .locals 3
    .param p1    # Lcom/tonyodev/fetch2/fetch/LiveSettings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/LiveSettings;->getDidSanitizeDatabaseOnFirstEntry()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl$sanitizeOnFirstEntry$1;->this$0:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->get()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->access$sanitize(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Ljava/util/List;Z)Z

    .line 4
    invoke-virtual {p1, v2}, Lcom/tonyodev/fetch2/fetch/LiveSettings;->setDidSanitizeDatabaseOnFirstEntry(Z)V

    :cond_0
    return-void
.end method
