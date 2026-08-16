.class public Led/j;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lhd/a;",
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

    iput-object p1, p0, Led/j;->a:Lhd/d;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p0, p1}, Led/j;->e(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lhd/a;JJD)V
    .locals 0

    invoke-static/range {p0 .. p6}, Led/j;->f(Lhd/a;JJD)V

    return-void
.end method

.method public static synthetic c(Led/j;Lokhttp3/z;Lokhttp3/C;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Led/j;->g(Lokhttp3/z;Lokhttp3/C;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const-string p1, "104.156.226.134"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lhd/a;JJD)V
    .locals 0

    iget-object p0, p0, Lhd/a;->c:Lu8/d;

    if-eqz p0, :cond_0

    const-wide/16 p5, 0x400

    div-long/2addr p1, p5

    div-long/2addr p1, p5

    long-to-int p1, p1

    div-long/2addr p3, p5

    div-long/2addr p3, p5

    long-to-int p2, p3

    invoke-interface {p0, p1, p2}, Lu8/d;->onProgressChange(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs d([Lhd/a;)Ljava/lang/String;
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

    invoke-virtual {p0, p1}, Led/j;->i(Lhd/a;)V

    iget-object p1, p0, Led/j;->c:Ljava/lang/String;

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

    check-cast p1, [Lhd/a;

    invoke-virtual {p0, p1}, Led/j;->d([Lhd/a;)Ljava/lang/String;

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

    iput p2, p0, Led/j;->b:I

    invoke-virtual {p1}, Lokhttp3/E;->o()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/F;->o()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Led/j;->c:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@error@HTTP-CODE:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/E;->g()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Led/j;->c:Ljava/lang/String;
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

    iput-object p2, p0, Led/j;->c:Ljava/lang/String;

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

    iget-object v0, p0, Led/j;->a:Lhd/d;

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

    iget-object v0, p0, Led/j;->a:Lhd/d;

    invoke-interface {v0, p1}, Lhd/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Led/j;->a:Lhd/d;

    invoke-interface {v0, p1}, Lhd/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Led/j;->a:Lhd/d;

    invoke-interface {v0, p1}, Lhd/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Led/j;->a:Lhd/d;

    invoke-interface {v0, p1}, Lhd/d;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final i(Lhd/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lhd/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lokhttp3/z$b;

    invoke-direct {v2}, Lokhttp3/z$b;-><init>()V

    new-instance v3, Led/g;

    invoke-direct {v3}, Led/g;-><init>()V

    invoke-virtual {v2, v3}, Lokhttp3/z$b;->t(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/z$b;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/z$b;->d()Lokhttp3/z;

    move-result-object v2

    new-instance v3, Lfd/e;

    new-instance v4, Led/h;

    invoke-direct {v4, p1}, Led/h;-><init>(Lhd/a;)V

    const-string v5, "application/octet-stream"

    invoke-direct {v3, v0, v5, v4}, Lfd/e;-><init>(Ljava/io/File;Ljava/lang/String;Lfd/e$a;)V

    new-instance v4, Lokhttp3/y$a;

    invoke-direct {v4}, Lokhttp3/y$a;-><init>()V

    sget-object v5, Lokhttp3/y;->j:Lokhttp3/x;

    invoke-virtual {v4, v5}, Lokhttp3/y$a;->g(Lokhttp3/x;)Lokhttp3/y$a;

    move-result-object v4

    const-string v5, "bill"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0, v3}, Lokhttp3/y$a;->b(Ljava/lang/String;Ljava/lang/String;Lokhttp3/D;)Lokhttp3/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/y$a;->f()Lokhttp3/y;

    move-result-object v0

    new-instance v3, Lokhttp3/C$a;

    invoke-direct {v3}, Lokhttp3/C$a;-><init>()V

    iget-object p1, p1, Lhd/a;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lokhttp3/C$a;->q(Ljava/lang/String;)Lokhttp3/C$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lokhttp3/C$a;->l(Lokhttp3/D;)Lokhttp3/C$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/C$a;->b()Lokhttp3/C;

    move-result-object p1

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Led/i;

    invoke-direct {v3, p0, v2, p1, v1}, Led/i;-><init>(Led/j;Lokhttp3/z;Lokhttp3/C;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "@error@Interrupted"

    iput-object v0, p0, Led/j;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string p1, "@error@File not found"

    iput-object p1, p0, Led/j;->c:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Led/j;->h(Ljava/lang/String;)V

    return-void
.end method
