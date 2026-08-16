.class public LFg/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LBg/j;Ljava/io/File;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0}, LBg/j;->P()[B

    move-result-object v1

    invoke-static {v0, v1}, LFg/c;->D(Ljava/nio/file/Path;[B)V

    invoke-virtual {p0}, LBg/b;->m()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, LFg/c;->E(Ljava/nio/file/Path;J)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, LBg/b;->m()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, LFg/c;->F(Ljava/io/File;J)V

    :goto_0
    return-void
.end method

.method public static b(LBg/r;)Lzg/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LBg/r;->k()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip.001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lzg/f;

    invoke-virtual {p0}, LBg/r;->k()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Lzg/f;-><init>(Ljava/io/File;)V

    return-object v0

    :cond_0
    new-instance v0, Lzg/m;

    invoke-virtual {p0}, LBg/r;->k()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, LBg/r;->m()Z

    move-result v2

    invoke-virtual {p0}, LBg/r;->e()LBg/g;

    move-result-object p0

    invoke-virtual {p0}, LBg/g;->d()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lzg/m;-><init>(Ljava/io/File;ZI)V

    return-object v0
.end method

.method public static c(LBg/r;LBg/j;[C)Lzg/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, LFg/g;->b(LBg/r;)Lzg/h;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, p1}, Lzg/h;->a(LBg/j;)V

    new-instance v0, Lzg/k;

    invoke-direct {v0, p0, p2}, Lzg/k;-><init>(Ljava/io/InputStream;[C)V

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lzg/k;->k(LBg/j;Z)LBg/k;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Could not locate local file header for corresponding file header"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw p1
.end method
