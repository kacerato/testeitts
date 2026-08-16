.class final Lcom/tonyodev/fetch2/fetch/FetchImpl$addListener$1$1;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2/fetch/FetchImpl;->addListener(Lcom/tonyodev/fetch2/FetchListener;ZZ)Lcom/tonyodev/fetch2/Fetch;
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
.field final synthetic $autoStart:Z

.field final synthetic $listener:Lcom/tonyodev/fetch2/FetchListener;

.field final synthetic $notify:Z

.field final synthetic this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2/FetchListener;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$addListener$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$addListener$1$1;->$listener:Lcom/tonyodev/fetch2/FetchListener;

    iput-boolean p3, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$addListener$1$1;->$notify:Z

    iput-boolean p4, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$addListener$1$1;->$autoStart:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$addListener$1$1;->invoke()V

    sget-object v0, Lnf/P0;->a:Lnf/P0;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$addListener$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getFetchHandler$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2/fetch/FetchHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$addListener$1$1;->$listener:Lcom/tonyodev/fetch2/FetchListener;

    iget-boolean v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$addListener$1$1;->$notify:Z

    iget-boolean v3, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$addListener$1$1;->$autoStart:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->addListener(Lcom/tonyodev/fetch2/FetchListener;ZZ)V

    return-void
.end method
