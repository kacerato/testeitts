.class public Lwe/c;
.super Lwe/a;
.source "SourceFile"


# instance fields
.field public final a:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lwe/a;-><init>()V

    .line 2
    invoke-static {p1}, Lwe/c;->e(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lwe/c;->a:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Lwe/a;-><init>()V

    .line 4
    iput-object p1, p0, Lwe/c;->a:Ljava/net/URL;

    return-void
.end method

.method public static c(Ljava/lang/String;)Lwe/c;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lwe/c;

    invoke-direct {v0, p0}, Lwe/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Ljava/net/URL;)Lwe/c;
    .locals 1
    .param p0    # Ljava/net/URL;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lwe/c;

    invoke-direct {v0, p0}, Lwe/c;-><init>(Ljava/net/URL;)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lwe/c;->a:Ljava/net/URL;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lwe/c;->a:Ljava/net/URL;

    invoke-direct {v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p1
.end method
