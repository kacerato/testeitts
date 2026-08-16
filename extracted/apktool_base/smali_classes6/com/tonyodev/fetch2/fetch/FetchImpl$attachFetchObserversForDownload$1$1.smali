.class final Lcom/tonyodev/fetch2/fetch/FetchImpl$attachFetchObserversForDownload$1$1;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2/fetch/FetchImpl;->attachFetchObserversForDownload(I[Lcom/tonyodev/fetch2core/FetchObserver;)Lcom/tonyodev/fetch2/Fetch;
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


# instance fields
.field final synthetic $downloadId:I

.field final synthetic $fetchObservers:[Lcom/tonyodev/fetch2core/FetchObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/tonyodev/fetch2core/FetchObserver<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;I[Lcom/tonyodev/fetch2core/FetchObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/fetch/FetchImpl;",
            "I[",
            "Lcom/tonyodev/fetch2core/FetchObserver<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$attachFetchObserversForDownload$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    iput p2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$attachFetchObserversForDownload$1$1;->$downloadId:I

    iput-object p3, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$attachFetchObserversForDownload$1$1;->$fetchObservers:[Lcom/tonyodev/fetch2core/FetchObserver;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$attachFetchObserversForDownload$1$1;->invoke()V

    sget-object v0, Lnf/P0;->a:Lnf/P0;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$attachFetchObserversForDownload$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getFetchHandler$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2/fetch/FetchHandler;

    move-result-object v0

    iget v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$attachFetchObserversForDownload$1$1;->$downloadId:I

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$attachFetchObserversForDownload$1$1;->$fetchObservers:[Lcom/tonyodev/fetch2core/FetchObserver;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/tonyodev/fetch2core/FetchObserver;

    invoke-interface {v0, v1, v2}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->addFetchObserversForDownload(I[Lcom/tonyodev/fetch2core/FetchObserver;)V

    return-void
.end method
