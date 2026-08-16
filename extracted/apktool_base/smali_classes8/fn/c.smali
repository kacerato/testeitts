.class public Lfn/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfn/c$b;,
        Lfn/c$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x10015


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zipIn",
            "zipOut"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lfn/c;->b(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void
.end method

.method public static b(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "zipIn",
            "zipOut",
            "alignment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lgn/a;

    invoke-direct {v0, p0}, Lgn/a;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Lgn/b;

    invoke-direct {p0, p1}, Lgn/b;-><init>(Ljava/io/OutputStream;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lgn/a;->readInt()I

    move-result v1

    :goto_0
    const/16 v2, 0xc

    const v3, 0x4034b50

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v3, :cond_8

    invoke-virtual {p0}, Lgn/b;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lgn/b;->l(I)V

    const/4 v3, 0x2

    invoke-static {v0, p0, v3}, Lfn/c;->h(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {v0}, Lgn/a;->readShort()S

    move-result v1

    invoke-virtual {p0, v1}, Lgn/b;->n(I)V

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_0

    move v1, v5

    goto :goto_1

    :cond_0
    move v1, v6

    :goto_1
    invoke-virtual {v0}, Lgn/a;->readShort()S

    move-result v7

    invoke-virtual {p0, v7}, Lgn/b;->n(I)V

    if-nez v7, :cond_1

    move v7, v5

    goto :goto_2

    :cond_1
    move v7, v6

    :goto_2
    invoke-static {v0, p0, v4}, Lfn/c;->h(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {v0}, Lgn/a;->readInt()I

    move-result v4

    invoke-virtual {p0, v4}, Lgn/b;->l(I)V

    const/4 v8, 0x4

    invoke-static {v0, p0, v8}, Lfn/c;->h(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {v0}, Lgn/a;->readShort()S

    move-result v9

    invoke-virtual {p0, v9}, Lgn/b;->n(I)V

    invoke-virtual {v0}, Lgn/a;->readShort()S

    move-result v10

    invoke-virtual {p0}, Lgn/b;->c()I

    move-result v11

    add-int/2addr v11, v3

    add-int/2addr v11, v9

    add-int/2addr v11, v10

    rem-int/2addr v11, p2

    if-nez v11, :cond_2

    move v11, v6

    goto :goto_3

    :cond_2
    sub-int v11, p2, v11

    :goto_3
    if-eqz v7, :cond_3

    add-int v12, v10, v11

    invoke-virtual {p0, v12}, Lgn/b;->n(I)V

    goto :goto_4

    :cond_3
    invoke-virtual {p0, v10}, Lgn/b;->n(I)V

    :goto_4
    invoke-static {v0, p0, v9}, Lfn/c;->h(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-static {v0, p0, v10}, Lfn/c;->h(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    if-eqz v7, :cond_4

    if-eqz v11, :cond_4

    new-array v7, v11, [B

    invoke-virtual {p0, v7}, Ljava/io/OutputStream;->write([B)V

    :cond_4
    if-nez v1, :cond_5

    invoke-static {v0, p0, v4}, Lfn/c;->h(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Lgn/a;->readInt()I

    move-result v1

    goto/16 :goto_0

    :cond_5
    new-array v7, v8, [B

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_6
    invoke-virtual {v0}, Lgn/a;->readByte()B

    move-result v1

    invoke-virtual {p0, v1}, Lgn/b;->write(I)V

    invoke-virtual {v8}, Ljava/nio/Buffer;->position()I

    move-result v4

    const/4 v9, 0x3

    if-ne v4, v9, :cond_7

    aget-byte v4, v7, v5

    aput-byte v4, v7, v6

    aget-byte v4, v7, v3

    aput-byte v4, v7, v5

    aget-byte v4, v7, v9

    aput-byte v4, v7, v3

    invoke-virtual {v8, v9, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_7
    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_5
    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const v4, 0x8074b50

    if-ne v1, v4, :cond_6

    invoke-static {v0, p0, v2}, Lfn/c;->h(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Lgn/a;->readInt()I

    move-result v1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lgn/b;->c()I

    move-result p2

    :goto_6
    const v3, 0x2014b50

    if-ne v1, v3, :cond_9

    invoke-virtual {p0, v3}, Lgn/b;->l(I)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x18

    invoke-static {v0, p0, v3}, Lfn/c;->h(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {v0}, Lgn/a;->readShort()S

    move-result v3

    invoke-virtual {p0, v3}, Lgn/b;->n(I)V

    invoke-virtual {v0}, Lgn/a;->readShort()S

    move-result v7

    invoke-virtual {p0, v7}, Lgn/b;->n(I)V

    invoke-virtual {v0}, Lgn/a;->readShort()S

    move-result v8

    invoke-virtual {p0, v8}, Lgn/b;->n(I)V

    invoke-static {v0, p0, v4}, Lfn/c;->h(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {v0}, Lgn/a;->readInt()I

    invoke-virtual {p0, v1}, Lgn/b;->l(I)V

    invoke-static {v0, p0, v3}, Lfn/c;->h(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-static {v0, p0, v7}, Lfn/c;->h(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-static {v0, p0, v8}, Lfn/c;->h(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    add-int/2addr v6, v5

    invoke-virtual {v0}, Lgn/a;->readInt()I

    move-result v1

    goto :goto_6

    :cond_9
    const p1, 0x6054b50

    if-ne v1, p1, :cond_a

    invoke-virtual {p0, p1}, Lgn/b;->l(I)V

    invoke-static {v0, p0, v2}, Lfn/c;->h(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {v0}, Lgn/a;->readInt()I

    invoke-virtual {p0, p2}, Lgn/b;->l(I)V

    invoke-virtual {v0}, Lgn/a;->readShort()S

    move-result p1

    invoke-virtual {p0, p1}, Lgn/b;->n(I)V

    invoke-static {v0, p0, p1}, Lfn/c;->h(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void

    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "No end of central directory record header, there is something wrong"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/offlineApk/iyxan23/zipalignjava/InvalidZipException;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lfn/c;->f(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;IZ)V

    return-void
.end method

.method public static d(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "out",
            "alignment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/offlineApk/iyxan23/zipalignjava/InvalidZipException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lfn/c;->f(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;IZ)V

    return-void
.end method

.method public static e(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;II)V
    .locals 41
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "out",
            "alignment",
            "soFileAlignment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/offlineApk/iyxan23/zipalignjava/InvalidZipException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x10015

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    sub-long/2addr v4, v6

    const v6, 0x10015

    goto :goto_0

    :cond_0
    long-to-int v6, v4

    const-wide/16 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v4, 0x4

    sub-int/2addr v6, v4

    :goto_1
    if-ltz v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v5

    const/16 v7, 0x50

    if-eq v5, v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    const-wide/16 v11, 0x1

    sub-long/2addr v7, v11

    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    const v7, 0x504b0506

    if-ne v5, v7, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-ltz v6, :cond_12

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    const-wide/16 v7, -0x6

    sub-long v7, v5, v7

    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v7, 0xa

    new-array v8, v7, [B

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    new-instance v12, Lfn/b;

    invoke-direct {v12, v8}, Lfn/b;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v12}, Lfn/b;->c()I

    move-result v8

    invoke-virtual {v12}, Lfn/b;->a()J

    invoke-virtual {v12}, Lfn/b;->a()J

    move-result-wide v12

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v9, 0x2e

    new-array v9, v9, [B

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    new-instance v11, Lfn/b;

    invoke-direct {v11, v10}, Lfn/b;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 v7, 0x0

    move v4, v7

    move/from16 v18, v4

    :goto_4
    if-ge v4, v8, :cond_c

    move-wide/from16 v19, v12

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->read([B)I

    move/from16 v21, v8

    invoke-virtual {v10, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    const v7, 0x2014b50

    if-ne v8, v7, :cond_b

    const/16 v7, 0x1c

    invoke-virtual {v11, v7}, Lfn/b;->d(I)I

    move-result v7

    const/16 v8, 0x1e

    invoke-virtual {v11, v8}, Lfn/b;->d(I)I

    move-result v8

    move-object/from16 v22, v9

    const/16 v9, 0x20

    invoke-virtual {v11, v9}, Lfn/b;->d(I)I

    move-result v9

    move-wide/from16 v23, v5

    const/16 v5, 0x2a

    invoke-virtual {v11, v5}, Lfn/b;->b(I)J

    move-result-wide v5

    move-object/from16 v25, v11

    move/from16 v11, v18

    if-eqz v11, :cond_4

    new-instance v1, Lfn/c$b;

    const-wide/16 v26, 0x2a

    move/from16 v18, v8

    move/from16 v28, v9

    add-long v8, v12, v26

    move-wide/from16 v26, v12

    int-to-long v12, v11

    add-long/2addr v12, v5

    invoke-direct {v1, v8, v9, v12, v13}, Lfn/c$b;-><init>(JJ)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    move/from16 v18, v8

    move/from16 v28, v9

    move-wide/from16 v26, v12

    :goto_5
    const-wide/16 v12, 0x1e

    const-wide/16 v29, 0x1a

    if-eqz v3, :cond_7

    new-array v1, v7, [B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v1, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v1, ".so"

    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    add-long v8, v5, v29

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v8, Lfn/b;

    invoke-direct {v8, v1}, Lfn/b;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v8}, Lfn/b;->c()I

    move-result v1

    invoke-virtual {v8}, Lfn/b;->c()I

    move-result v8

    add-long v31, v5, v12

    int-to-long v12, v1

    add-long v31, v31, v12

    int-to-long v12, v8

    add-long v31, v31, v12

    int-to-long v12, v11

    add-long v31, v31, v12

    int-to-long v12, v3

    rem-long v12, v31, v12

    long-to-int v9, v12

    if-nez v9, :cond_5

    const/16 v36, 0x0

    goto :goto_6

    :cond_5
    sub-int v9, v3, v9

    move/from16 v36, v9

    :goto_6
    add-int v9, v11, v36

    if-eqz v36, :cond_6

    new-instance v11, Lfn/c$a;

    const-wide/16 v12, 0x1c

    add-long v37, v5, v12

    add-int v12, v8, v36

    int-to-short v12, v12

    add-int v40, v1, v8

    move-object/from16 v35, v11

    move/from16 v39, v12

    invoke-direct/range {v35 .. v40}, Lfn/c$a;-><init>(IJSI)V

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v1, 0x1

    :goto_7
    const/16 v8, 0xa

    goto :goto_8

    :cond_7
    move v9, v11

    const/4 v1, 0x0

    goto :goto_7

    :goto_8
    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v11

    if-nez v11, :cond_9

    if-nez v1, :cond_9

    add-long v11, v5, v29

    invoke-virtual {v0, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    new-instance v12, Lfn/b;

    invoke-direct {v12, v11}, Lfn/b;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v12}, Lfn/b;->c()I

    move-result v11

    invoke-virtual {v12}, Lfn/b;->c()I

    move-result v12

    const-wide/16 v16, 0x1e

    add-long v16, v5, v16

    int-to-long v1, v11

    add-long v16, v16, v1

    int-to-long v1, v12

    add-long v16, v16, v1

    int-to-long v1, v9

    add-long v16, v16, v1

    move/from16 v1, p2

    move-object v2, v14

    int-to-long v13, v1

    rem-long v13, v16, v13

    long-to-int v13, v13

    if-nez v13, :cond_8

    const/16 v32, 0x0

    goto :goto_9

    :cond_8
    sub-int v13, v1, v13

    move/from16 v32, v13

    :goto_9
    add-int v9, v9, v32

    if-eqz v32, :cond_a

    new-instance v13, Lfn/c$a;

    const-wide/16 v16, 0x1c

    add-long v33, v5, v16

    add-int v5, v12, v32

    int-to-short v5, v5

    add-int v36, v11, v12

    move-object/from16 v31, v13

    move/from16 v35, v5

    invoke-direct/range {v31 .. v36}, Lfn/c$a;-><init>(IJSI)V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_9
    move v1, v2

    move-object v2, v14

    :cond_a
    :goto_a
    const-wide/16 v5, 0x2e

    add-long v12, v26, v5

    int-to-long v5, v7

    add-long/2addr v12, v5

    move/from16 v5, v18

    int-to-long v5, v5

    add-long/2addr v12, v5

    move/from16 v5, v28

    int-to-long v5, v5

    add-long/2addr v12, v5

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v4, v4, 0x1

    move-object v14, v2

    move/from16 v18, v9

    move-wide/from16 v12, v19

    move/from16 v8, v21

    move-object/from16 v9, v22

    move-wide/from16 v5, v23

    move-object/from16 v11, v25

    const/4 v7, 0x0

    move v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_4

    :cond_b
    move-wide/from16 v26, v12

    new-instance v0, Lorg/offlineApk/iyxan23/zipalignjava/InvalidZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assumed central directory entry at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v26

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t start with a signature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/offlineApk/iyxan23/zipalignjava/InvalidZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-wide/from16 v23, v5

    move-wide/from16 v19, v12

    move-object v2, v14

    move/from16 v11, v18

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :goto_b
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v3, v2, :cond_d

    move-object/from16 v3, p1

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_b

    :cond_d
    return-void

    :cond_e
    move-object/from16 v3, p1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v4, 0x8

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfn/c$a;

    iget-wide v5, v2, Lfn/c$a;->b:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_f

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v9

    sub-long/2addr v5, v9

    invoke-static {v0, v3, v5, v6}, Lfn/c;->i(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;J)V

    :cond_f
    iget-short v5, v2, Lfn/c$a;->c:S

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write(I)V

    iget-short v5, v2, Lfn/c$a;->c:S

    ushr-int/lit8 v4, v5, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readShort()S

    iget v4, v2, Lfn/c$a;->d:I

    int-to-long v4, v4

    invoke-static {v0, v3, v4, v5}, Lfn/c;->i(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;J)V

    iget v2, v2, Lfn/c$a;->a:I

    new-array v2, v2, [B

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_c

    :cond_10
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v5, 0x18

    const/16 v6, 0x10

    const-wide/16 v7, 0xff

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfn/c$b;

    iget-wide v9, v2, Lfn/c$b;->a:J

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    sub-long/2addr v9, v12

    invoke-static {v0, v3, v9, v10}, Lfn/c;->i(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;J)V

    iget-wide v9, v2, Lfn/c$b;->b:J

    and-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v3, v7}, Ljava/io/OutputStream;->write(I)V

    iget-wide v7, v2, Lfn/c$b;->b:J

    ushr-long/2addr v7, v4

    long-to-int v7, v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v3, v7}, Ljava/io/OutputStream;->write(I)V

    iget-wide v7, v2, Lfn/c$b;->b:J

    ushr-long v6, v7, v6

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write(I)V

    iget-wide v6, v2, Lfn/c$b;->b:J

    ushr-long v5, v6, v5

    long-to-int v2, v5

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readInt()I

    goto :goto_d

    :cond_11
    const-wide/16 v1, -0xc

    sub-long v1, v23, v1

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v9

    sub-long/2addr v1, v9

    invoke-static {v0, v3, v1, v2}, Lfn/c;->i(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;J)V

    int-to-long v1, v11

    add-long v12, v19, v1

    and-long v1, v12, v7

    long-to-int v1, v1

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write(I)V

    ushr-long v1, v12, v4

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write(I)V

    ushr-long v1, v12, v6

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write(I)V

    ushr-long v1, v12, v5

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readInt()I

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-static {v0, v3, v1, v2}, Lfn/c;->i(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;J)V

    return-void

    :cond_12
    new-instance v0, Lorg/offlineApk/iyxan23/zipalignjava/InvalidZipException;

    const-string v1, "No end-of-central-directory found"

    invoke-direct {v0, v1}, Lorg/offlineApk/iyxan23/zipalignjava/InvalidZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static f(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "out",
            "alignment",
            "alignSoFiles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/offlineApk/iyxan23/zipalignjava/InvalidZipException;
        }
    .end annotation

    const/16 p3, 0x4000

    invoke-static {p0, p1, p2, p3}, Lfn/c;->e(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;II)V

    return-void
.end method

.method public static g(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "out",
            "alignSoFiles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/offlineApk/iyxan23/zipalignjava/InvalidZipException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-static {p0, p1, v0, p2}, Lfn/c;->f(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;IZ)V

    return-void
.end method

.method public static h(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "out",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array p2, p2, [B

    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Reached EOF when passing bytes"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "raf",
            "out",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1fe2

    new-array v0, v0, [B

    :goto_0
    const-wide/16 v1, 0x1fe2

    cmp-long v3, p2, v1

    if-lez v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sub-long/2addr p2, v1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    long-to-int p2, p2

    new-array p2, p2, [B

    invoke-virtual {p0, p2}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
