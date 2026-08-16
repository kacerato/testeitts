.class public final Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder$Companion;

.field public static final FETCH_URI_SCHEME:Ljava/lang/String; = "fetchlocal"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private host:Ljava/lang/String;

.field private identifier:Ljava/lang/String;

.field private port:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder;->Companion:Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "00:00:00:00"

    iput-object v0, p0, Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder;->host:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder;->identifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Landroid/net/Uri;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "fetchlocal"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.Builder()\n          \u2026\n                .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setFileResourceIdentifier(J)Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public final setFileResourceIdentifier(Ljava/lang/String;)Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fileResourceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public final setHostAddress(Ljava/lang/String;)Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "hostAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder;->host:Ljava/lang/String;

    return-object p0
.end method

.method public final setHostInetAddress(Ljava/lang/String;I)Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "hostAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder;->port:I

    iput-object p1, p0, Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder;->host:Ljava/lang/String;

    return-object p0
.end method

.method public final setHostPort(I)Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder;->port:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/FetchFileServerUriBuilder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "build().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
