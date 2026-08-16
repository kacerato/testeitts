.class public final Lcom/itsmagic/engine/Engines/Sound/Imported/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:S = 0x8s


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(S)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sample"
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/16 v0, 0x8

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Ljava/io/BufferedInputStream;J)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "bytesToSkip"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    cmp-long v4, v2, p1

    if-gez v4, :cond_2

    sub-long v4, p1, v2

    invoke-virtual {p0, v4, v5}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gtz v6, :cond_1

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x1

    :cond_1
    add-long/2addr v2, v4

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static c(BB)S
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "low",
            "high"
        }
    .end annotation

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static d(Ljava/io/File;)J
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pcmFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Failed to finalize trimmed pcm file"

    const-string v3, "Failed to replace trimmed pcm file"

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-gtz v0, :cond_0

    return-wide v8

    :cond_0
    const/16 v0, 0x4000

    new-array v10, v0, [B

    new-instance v11, Ljava/io/BufferedInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v12, -0x1

    move-wide/from16 v17, v8

    move-wide v15, v12

    const/4 v0, 0x0

    :goto_0
    rsub-int v6, v0, 0x4000

    :try_start_0
    invoke-virtual {v11, v10, v0, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    const-wide/16 v19, 0x1

    if-ltz v6, :cond_5

    add-int/2addr v6, v0

    rem-int/lit8 v0, v6, 0x2

    sub-int v0, v6, v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_3

    aget-byte v14, v10, v7

    add-int/lit8 v21, v7, 0x1

    aget-byte v8, v10, v21

    invoke-static {v14, v8}, Lcom/itsmagic/engine/Engines/Sound/Imported/a;->c(BB)S

    move-result v8

    invoke-static {v8}, Lcom/itsmagic/engine/Engines/Sound/Imported/a;->a(S)Z

    move-result v8

    if-eqz v8, :cond_2

    const-wide/16 v8, 0x0

    cmp-long v14, v12, v8

    if-gez v14, :cond_1

    move-wide/from16 v12, v17

    :cond_1
    move-wide/from16 v15, v17

    :cond_2
    add-long v17, v17, v19

    add-int/lit8 v7, v7, 0x2

    const-wide/16 v8, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_f

    :cond_3
    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_4

    add-int/lit8 v6, v6, -0x1

    aget-byte v0, v10, v6

    const/4 v6, 0x0

    aput-byte v0, v10, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    const-wide/16 v6, 0x2

    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    const-wide/16 v6, 0x0

    cmp-long v0, v12, v6

    if-ltz v0, :cond_11

    cmp-long v6, v15, v12

    if-gez v6, :cond_6

    goto/16 :goto_e

    :cond_6
    sub-long/2addr v15, v12

    add-long v15, v15, v19

    if-nez v0, :cond_7

    cmp-long v0, v15, v4

    if-nez v0, :cond_7

    return-wide v4

    :cond_7
    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".trim.tmp"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    :try_start_2
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    const-wide/16 v7, 0x2

    mul-long/2addr v12, v7

    :try_start_3
    invoke-static {v5, v12, v13}, Lcom/itsmagic/engine/Engines/Sound/Imported/a;->b(Ljava/io/BufferedInputStream;J)V

    mul-long/2addr v7, v15

    :goto_3
    const-wide/16 v11, 0x0

    cmp-long v0, v7, v11

    if-lez v0, :cond_9

    const/16 v0, 0x4000

    int-to-long v13, v0

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    long-to-int v9, v13

    const/4 v13, 0x0

    :try_start_4
    invoke-virtual {v5, v10, v13, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v9

    if-gez v9, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v6, v10, v13, v9}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    int-to-long v11, v9

    sub-long/2addr v7, v11

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_4
    move-object v7, v0

    goto :goto_7

    :catchall_2
    move-exception v0

    const/4 v13, 0x0

    goto :goto_4

    :cond_9
    :goto_5
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_6
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-wide v15

    :cond_c
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    const/4 v14, 0x1

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object v6, v0

    const/4 v14, 0x1

    goto :goto_a

    :goto_7
    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v6, v0

    :try_start_8
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception v0

    :goto_9
    move-object v6, v0

    move v14, v13

    goto :goto_a

    :catchall_7
    move-exception v0

    const/4 v13, 0x0

    goto :goto_9

    :goto_a
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object v5, v0

    :try_start_a
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    :catchall_9
    move-exception v0

    goto :goto_c

    :catchall_a
    move-exception v0

    const/4 v13, 0x0

    move v14, v13

    :goto_c
    if-eqz v14, :cond_f

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_d

    :cond_d
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_d
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V

    :cond_10
    throw v0

    :cond_11
    :goto_e
    return-wide v4

    :goto_f
    :try_start_b
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_10

    :catchall_b
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10
    throw v1
.end method
