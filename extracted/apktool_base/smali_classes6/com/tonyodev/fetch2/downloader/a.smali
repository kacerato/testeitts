.class public final synthetic Lcom/tonyodev/fetch2/downloader/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/tonyodev/fetch2/Download;

.field public final synthetic c:Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/a;->b:Lcom/tonyodev/fetch2/Download;

    iput-object p2, p0, Lcom/tonyodev/fetch2/downloader/a;->c:Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/a;->b:Lcom/tonyodev/fetch2/Download;

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/a;->c:Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;

    invoke-static {v0, v1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->a(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;)V

    return-void
.end method
