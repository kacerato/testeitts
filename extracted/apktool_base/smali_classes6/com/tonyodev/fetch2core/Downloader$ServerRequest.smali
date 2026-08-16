.class public Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2core/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerRequest"
.end annotation


# instance fields
.field private final extras:Lcom/tonyodev/fetch2core/Extras;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final file:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fileUri:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final id:I

.field private final identifier:J

.field private final redirectUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final redirected:Z

.field private final requestMethod:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final segment:I

.field private final tag:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Lcom/tonyodev/fetch2core/Extras;ZLjava/lang/String;I)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/tonyodev/fetch2core/Extras;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/tonyodev/fetch2core/Extras;",
            "Z",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileUri"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestMethod"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "redirectUrl"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->id:I

    iput-object p2, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->headers:Ljava/util/Map;

    iput-object p4, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->file:Ljava/lang/String;

    iput-object p5, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->fileUri:Landroid/net/Uri;

    iput-object p6, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->tag:Ljava/lang/String;

    iput-wide p7, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->identifier:J

    iput-object p9, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->requestMethod:Ljava/lang/String;

    iput-object p10, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->extras:Lcom/tonyodev/fetch2core/Extras;

    iput-boolean p11, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->redirected:Z

    iput-object p12, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->redirectUrl:Ljava/lang/String;

    iput p13, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->segment:I

    return-void
.end method


# virtual methods
.method public final getExtras()Lcom/tonyodev/fetch2core/Extras;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->extras:Lcom/tonyodev/fetch2core/Extras;

    return-object v0
.end method

.method public final getFile()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->file:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileUri()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->fileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->id:I

    return v0
.end method

.method public final getIdentifier()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->identifier:J

    return-wide v0
.end method

.method public final getRedirectUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->redirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getRedirected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->redirected:Z

    return v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->requestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getSegment()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->segment:I

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->url:Ljava/lang/String;

    return-object v0
.end method
