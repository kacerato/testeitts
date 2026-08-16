.class final Lcom/tonyodev/fetch2/fetch/FetchImpl$deleteAll$1;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2/fetch/FetchImpl;->deleteAll(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/a<",
        "Ljava/util/List<",
        "+",
        "Lcom/tonyodev/fetch2/Download;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$deleteAll$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$deleteAll$1;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$deleteAll$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getFetchHandler$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2/fetch/FetchHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->deleteAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
