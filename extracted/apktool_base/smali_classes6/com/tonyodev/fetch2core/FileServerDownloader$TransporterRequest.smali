.class public Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2core/FileServerDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransporterRequest"
.end annotation


# instance fields
.field private fileRequest:Lcom/tonyodev/fetch2core/server/FileRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private inetSocketAddress:Ljava/net/InetSocketAddress;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v1, v0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->inetSocketAddress:Ljava/net/InetSocketAddress;

    new-instance v1, Lcom/tonyodev/fetch2core/server/FileRequest;

    const/16 v16, 0x3ff

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/tonyodev/fetch2core/server/FileRequest;-><init>(ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/tonyodev/fetch2core/Extras;IIZILkotlin/jvm/internal/x;)V

    iput-object v1, v0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->fileRequest:Lcom/tonyodev/fetch2core/server/FileRequest;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    if-eqz p1, :cond_5

    check-cast p1, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;

    iget-object v1, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-object v3, p1, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->fileRequest:Lcom/tonyodev/fetch2core/server/FileRequest;

    iget-object p1, p1, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->fileRequest:Lcom/tonyodev/fetch2core/server/FileRequest;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0

    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.tonyodev.fetch2core.FileServerDownloader.TransporterRequest"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getFileRequest()Lcom/tonyodev/fetch2core/server/FileRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->fileRequest:Lcom/tonyodev/fetch2core/server/FileRequest;

    return-object v0
.end method

.method public final getInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->fileRequest:Lcom/tonyodev/fetch2core/server/FileRequest;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/server/FileRequest;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setFileRequest(Lcom/tonyodev/fetch2core/server/FileRequest;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/server/FileRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->fileRequest:Lcom/tonyodev/fetch2core/server/FileRequest;

    return-void
.end method

.method public final setInetSocketAddress(Ljava/net/InetSocketAddress;)V
    .locals 1
    .param p1    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransporterRequest(inetSocketAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->fileRequest:Lcom/tonyodev/fetch2core/server/FileRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
