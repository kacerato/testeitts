.class public interface abstract Lcom/tonyodev/fetch2core/FileServerDownloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2core/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tonyodev/fetch2core/Downloader<",
        "Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;",
        "Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getFetchFileServerCatalog(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/util/List;
    .param p1    # Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2core/Downloader$ServerRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2core/FileResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
