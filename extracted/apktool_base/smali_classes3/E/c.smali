.class public LE/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LE/c$a;,
        LE/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LD/d<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "MediaStoreThumbFetcher"


# instance fields
.field public final b:Landroid/net/Uri;

.field public final c:LE/e;

.field public d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/net/Uri;LE/e;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE/c;->b:Landroid/net/Uri;

    iput-object p2, p0, LE/c;->c:LE/e;

    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;LE/d;)LE/c;
    .locals 3

    invoke-static {p0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/b;->f()LF/b;

    move-result-object v0

    new-instance v1, LE/e;

    invoke-static {p0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/b;->m()Lcom/bumptech/glide/Registry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/Registry;->g()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v1, v2, p2, v0, p0}, LE/e;-><init>(Ljava/util/List;LE/d;LF/b;Landroid/content/ContentResolver;)V

    new-instance p0, LE/c;

    invoke-direct {p0, p1, v1}, LE/c;-><init>(Landroid/net/Uri;LE/e;)V

    return-object p0
.end method

.method public static d(Landroid/content/Context;Landroid/net/Uri;)LE/c;
    .locals 2

    new-instance v0, LE/c$a;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, LE/c$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, LE/c;->c(Landroid/content/Context;Landroid/net/Uri;LE/d;)LE/c;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Landroid/net/Uri;)LE/c;
    .locals 2

    new-instance v0, LE/c$b;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, LE/c$b;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, LE/c;->c(Landroid/content/Context;Landroid/net/Uri;LE/d;)LE/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public b()LC/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LC/a;->LOCAL:LC/a;

    return-object v0
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 1

    iget-object v0, p0, LE/c;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public e(Lcom/bumptech/glide/h;LD/d$a;)V
    .locals 2
    .param p1    # Lcom/bumptech/glide/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LD/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/h;",
            "LD/d$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, LE/c;->g()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, LE/c;->d:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p2, p1}, LD/d$a;->c(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "MediaStoreThumbFetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to find thumbnail file"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p2, p1}, LD/d$a;->d(Ljava/lang/Exception;)V

    return-void
.end method

.method public final g()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, LE/c;->c:LE/e;

    iget-object v1, p0, LE/c;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, LE/e;->d(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, LE/c;->c:LE/e;

    iget-object v3, p0, LE/c;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, LE/e;->a(Landroid/net/Uri;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eq v2, v1, :cond_1

    new-instance v1, LD/g;

    invoke-direct {v1, v0, v2}, LD/g;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v1

    :cond_1
    return-object v0
.end method
