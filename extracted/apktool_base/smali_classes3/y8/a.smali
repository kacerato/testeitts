.class public Ly8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ly8/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "target",
            "listener"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, p2}, Ly8/a;->c(Ljava/io/File;Ljava/io/File;Ly8/b;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ly8/b;->onSuccess()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ly8/b;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceLocation",
            "targetLocation"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ly8/a;->c(Ljava/io/File;Ljava/io/File;Ly8/b;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/io/File;Ljava/io/File;Ly8/b;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sourceLocation",
            "targetLocation",
            "listener"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ly8/b;->a()V

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v2

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4, p2}, Ly8/a;->c(Ljava/io/File;Ljava/io/File;Ly8/b;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ly8/b;->a()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object p1, v0

    goto/16 :goto_7

    :catch_0
    move-exception p0

    move-object p1, v0

    goto :goto_5

    :cond_4
    :goto_1
    return v2

    :cond_5
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 p1, 0x400

    :try_start_2
    new-array p1, p1, [B

    :goto_2
    invoke-virtual {v3, p1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {p0, p1, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, v3

    :goto_3
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_7

    :catch_1
    move-exception p1

    move-object v0, v3

    :goto_4
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_5

    :cond_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p2, :cond_7

    :try_start_4
    invoke-interface {p2}, Ly8/b;->b()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    return v1

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :catchall_3
    move-exception p0

    move-object p1, v0

    move-object v0, v3

    goto :goto_7

    :catch_3
    move-exception p0

    move-object p1, v0

    move-object v0, v3

    :goto_5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ly8/b;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception p0

    goto :goto_7

    :cond_8
    :goto_6
    if-eqz v0, :cond_9

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_9
    if-eqz p1, :cond_a

    :try_start_7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    :cond_a
    return v2

    :goto_7
    if-eqz v0, :cond_b

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    :cond_b
    if-eqz p1, :cond_c

    :try_start_9
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :cond_c
    throw p0
.end method
