.class public final synthetic Lcom/tonyodev/fetch2/downloader/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;

.field public final synthetic c:Lcom/tonyodev/fetch2core/FileSlice;


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;Lcom/tonyodev/fetch2core/FileSlice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/b;->b:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;

    iput-object p2, p0, Lcom/tonyodev/fetch2/downloader/b;->c:Lcom/tonyodev/fetch2core/FileSlice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/b;->b:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/b;->c:Lcom/tonyodev/fetch2core/FileSlice;

    invoke-static {v0, v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->a(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;Lcom/tonyodev/fetch2core/FileSlice;)V

    return-void
.end method
