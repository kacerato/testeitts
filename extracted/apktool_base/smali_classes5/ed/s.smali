.class public Led/s;
.super Lokhttp3/D;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Led/s$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/net/Uri;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Led/s$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;JLed/s$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "uri",
            "contentType",
            "contentLength",
            "listener"
        }
    .end annotation

    invoke-direct {p0}, Lokhttp3/D;-><init>()V

    iput-object p1, p0, Led/s;->a:Landroid/content/Context;

    iput-object p2, p0, Led/s;->b:Landroid/net/Uri;

    iput-object p3, p0, Led/s;->c:Ljava/lang/String;

    iput-wide p4, p0, Led/s;->d:J

    iput-object p6, p0, Led/s;->e:Led/s$a;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Led/s;->d:J

    return-wide v0
.end method

.method public b()Lokhttp3/x;
    .locals 1

    iget-object v0, p0, Led/s;->c:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/x;->d(Ljava/lang/String;)Lokhttp3/x;

    move-result-object v0

    return-object v0
.end method

.method public h(LTg/d;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sink"
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :try_start_0
    iget-object v1, p0, Led/s;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Led/s;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    invoke-interface {p1, v0, v5, v4}, LTg/d;->write([BII)LTg/d;

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v6, p0, Led/s;->e:Led/s$a;

    if-eqz v6, :cond_0

    long-to-double v4, v2

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v7

    iget-wide v9, p0, Led/s;->d:J

    long-to-double v7, v9

    div-double v11, v4, v7

    move-wide v7, v2

    invoke-interface/range {v6 .. v12}, Led/s$a;->a(JJD)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method
