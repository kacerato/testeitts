.class public Lcom/tonyodev/fetch2core/Downloader$Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2core/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field private final acceptsRanges:Z

.field private final byteStream:Ljava/io/InputStream;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final code:I

.field private final contentLength:J

.field private final errorResponse:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final hash:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isSuccessful:Z

.field private final request:Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IZJLjava/io/InputStream;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V
    .locals 1
    .param p5    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZJ",
            "Ljava/io/InputStream;",
            "Lcom/tonyodev/fetch2core/Downloader$ServerRequest;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hash"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseHeaders"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->code:I

    iput-boolean p2, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->isSuccessful:Z

    iput-wide p3, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->contentLength:J

    iput-object p5, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->byteStream:Ljava/io/InputStream;

    iput-object p6, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->request:Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    iput-object p7, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->hash:Ljava/lang/String;

    iput-object p8, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->responseHeaders:Ljava/util/Map;

    iput-boolean p9, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->acceptsRanges:Z

    iput-object p10, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->errorResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAcceptsRanges()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->acceptsRanges:Z

    return v0
.end method

.method public final getByteStream()Ljava/io/InputStream;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->byteStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->code:I

    return v0
.end method

.method public final getContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->contentLength:J

    return-wide v0
.end method

.method public final getErrorResponse()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->errorResponse:Ljava/lang/String;

    return-object v0
.end method

.method public final getHash()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequest()Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->request:Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    return-object v0
.end method

.method public final getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->responseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public final isSuccessful()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->isSuccessful:Z

    return v0
.end method
