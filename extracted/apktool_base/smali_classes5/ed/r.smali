.class public Led/r;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lhd/b;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lhd/d;

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lhd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "postAsyncResponse"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Led/r;->a:Lhd/d;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p0, p1}, Led/r;->e(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lhd/b;JJD)V
    .locals 0

    invoke-static/range {p0 .. p6}, Led/r;->f(Lhd/b;JJD)V

    return-void
.end method

.method public static synthetic c(Led/r;Lokhttp3/z;Lokhttp3/C;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Led/r;->g(Lokhttp3/z;Lokhttp3/C;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const-string p1, "104.156.226.134"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lhd/b;JJD)V
    .locals 0

    iget-object p0, p0, Lhd/b;->c:Lu8/d;

    if-eqz p0, :cond_0

    const-wide/16 p3, 0x400

    div-long/2addr p1, p3

    div-long/2addr p1, p3

    long-to-int p1, p1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lu8/d;->onProgressChange(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs d([Lhd/b;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Led/r;->i(Lhd/b;)V

    iget-object p1, p0, Led/r;->c:Ljava/lang/String;

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    check-cast p1, [Lhd/b;

    invoke-virtual {p0, p1}, Led/r;->d([Lhd/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic g(Lokhttp3/z;Lokhttp3/C;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1, p2}, Lokhttp3/z;->a(Lokhttp3/C;)Lokhttp3/e;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/e;->execute()Lokhttp3/E;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Lokhttp3/E;->g()I

    move-result p2

    iput p2, p0, Led/r;->b:I

    invoke-virtual {p1}, Lokhttp3/E;->o()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/F;->o()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Led/r;->c:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@error@HTTP-CODE:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Led/r;->b:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Led/r;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lokhttp3/E;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_4

    :goto_2
    if-eqz p1, :cond_1

    :try_start_3
    invoke-virtual {p1}, Lokhttp3/E;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@error@"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Led/r;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :goto_5
    return-void

    :goto_6
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public h(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Led/r;->a:Lhd/d;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const-string v0, "@no_ethernet@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "@errorcheckingconnection@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "@error@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p1}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "status"

    invoke-static {v0, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Led/r;->a:Lhd/d;

    invoke-interface {v0, p1}, Lhd/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Led/r;->a:Lhd/d;

    invoke-interface {v0, p1}, Lhd/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Led/r;->a:Lhd/d;

    invoke-interface {v0, p1}, Lhd/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Led/r;->a:Lhd/d;

    invoke-interface {v0, p1}, Lhd/d;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final i(Lhd/b;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v4, p1, Lhd/b;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Lhd/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lokhttp3/z$b;

    invoke-direct {v2}, Lokhttp3/z$b;-><init>()V

    new-instance v3, Led/o;

    invoke-direct {v3}, Led/o;-><init>()V

    invoke-virtual {v2, v3}, Lokhttp3/z$b;->t(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/z$b;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/z$b;->d()Lokhttp3/z;

    move-result-object v9

    :try_start_0
    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "r"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    const-wide/16 v1, 0x0

    cmp-long v1, v6, v1

    if-gez v1, :cond_1

    const-string p1, "@error@Unable to get content length"

    iput-object p1, p0, Led/r;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_0

    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_3
    new-instance v1, Led/s;

    invoke-virtual {p1}, Lhd/b;->c()Landroid/content/Context;

    move-result-object v3

    const-string v5, "application/octet-stream"

    new-instance v8, Led/p;

    invoke-direct {v8, p1}, Led/p;-><init>(Lhd/b;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Led/s;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;JLed/s$a;)V

    new-instance v2, Lokhttp3/y$a;

    invoke-direct {v2}, Lokhttp3/y$a;-><init>()V

    sget-object v3, Lokhttp3/y;->j:Lokhttp3/x;

    invoke-virtual {v2, v3}, Lokhttp3/y$a;->g(Lokhttp3/x;)Lokhttp3/y$a;

    move-result-object v2

    const-string v3, "bill"

    const-string v4, "file"

    invoke-virtual {v2, v3, v4, v1}, Lokhttp3/y$a;->b(Ljava/lang/String;Ljava/lang/String;Lokhttp3/D;)Lokhttp3/y$a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/y$a;->f()Lokhttp3/y;

    move-result-object v1

    new-instance v2, Lokhttp3/C$a;

    invoke-direct {v2}, Lokhttp3/C$a;-><init>()V

    iget-object p1, p1, Lhd/b;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lokhttp3/C$a;->q(Ljava/lang/String;)Lokhttp3/C$a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lokhttp3/C$a;->l(Lokhttp3/D;)Lokhttp3/C$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/C$a;->b()Lokhttp3/C;

    move-result-object p1

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Led/q;

    invoke-direct {v2, p0, v9, p1, v0}, Led/q;-><init>(Led/r;Lokhttp3/z;Lokhttp3/C;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_3

    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :goto_1
    if-eqz v10, :cond_2

    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@error@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Led/r;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_3
    :goto_4
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Led/r;->h(Ljava/lang/String;)V

    return-void
.end method
