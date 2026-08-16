.class final Lcom/tonyodev/fetch2/fetch/FetchImpl$enableLogging$1$1;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2/fetch/FetchImpl;->enableLogging(Z)Lcom/tonyodev/fetch2/Fetch;
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
.field final synthetic $enabled:Z

.field final synthetic this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enableLogging$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    iput-boolean p2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enableLogging$1$1;->$enabled:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$enableLogging$1$1;->invoke()V

    sget-object v0, Lnf/P0;->a:Lnf/P0;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enableLogging$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getFetchHandler$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2/fetch/FetchHandler;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enableLogging$1$1;->$enabled:Z

    invoke-interface {v0, v1}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->enableLogging(Z)V

    return-void
.end method
