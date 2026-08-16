.class public Lfd/e;
.super Lokhttp3/D;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfd/e$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/lang/String;

.field public final c:Lfd/e$a;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lfd/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "contentType",
            "listener"
        }
    .end annotation

    invoke-direct {p0}, Lokhttp3/D;-><init>()V

    iput-object p1, p0, Lfd/e;->a:Ljava/io/File;

    iput-object p2, p0, Lfd/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lfd/e;->c:Lfd/e$a;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lfd/e;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lokhttp3/x;
    .locals 1

    iget-object v0, p0, Lfd/e;->b:Ljava/lang/String;

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lfd/e;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    const/16 v0, 0x2000

    new-array v0, v0, [B

    new-instance v10, Ljava/io/FileInputStream;

    iget-object v1, p0, Lfd/e;->a:Ljava/io/File;

    invoke-direct {v10, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-wide/16 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {p1, v0, v4, v3}, LTg/d;->write([BII)LTg/d;

    int-to-long v3, v3

    add-long v11, v1, v3

    long-to-double v1, v11

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    long-to-double v3, v8

    div-double v6, v1, v3

    iget-object v1, p0, Lfd/e;->c:Lfd/e$a;

    move-wide v2, v11

    move-wide v4, v8

    invoke-interface/range {v1 .. v7}, Lfd/e$a;->a(JJD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v1, v11

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    return-void

    :goto_1
    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method
