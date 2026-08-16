.class public final synthetic Lcom/tonyodev/fetch2/fetch/U0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/tonyodev/fetch2core/FetchObserver;

.field public final synthetic c:Lcom/tonyodev/fetch2/Download;


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/U0;->b:Lcom/tonyodev/fetch2core/FetchObserver;

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/U0;->c:Lcom/tonyodev/fetch2/Download;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/U0;->b:Lcom/tonyodev/fetch2core/FetchObserver;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/U0;->c:Lcom/tonyodev/fetch2/Download;

    invoke-static {v0, v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->G(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method
