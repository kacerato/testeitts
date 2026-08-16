.class public final synthetic Lcom/tonyodev/fetch2/fetch/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/tonyodev/fetch2core/Func;

.field public final synthetic c:Lcom/tonyodev/fetch2core/Downloader$Response;


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Downloader$Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/U;->b:Lcom/tonyodev/fetch2core/Func;

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/U;->c:Lcom/tonyodev/fetch2core/Downloader$Response;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/U;->b:Lcom/tonyodev/fetch2core/Func;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/U;->c:Lcom/tonyodev/fetch2core/Downloader$Response;

    invoke-static {v0, v1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$getServerResponse$1$1;->d(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Downloader$Response;)V

    return-void
.end method
