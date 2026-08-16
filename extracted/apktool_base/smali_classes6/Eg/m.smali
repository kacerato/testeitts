.class public LEg/m;
.super LEg/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LEg/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LEg/c<",
        "LEg/m$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:LBg/r;

.field public final e:Lyg/e;

.field public final f:LFg/f;


# direct methods
.method public constructor <init>(LBg/r;Lyg/e;LFg/f;LEg/h$b;)V
    .locals 0

    invoke-direct {p0, p4}, LEg/c;-><init>(LEg/h$b;)V

    iput-object p1, p0, LEg/m;->d:LBg/r;

    iput-object p2, p0, LEg/m;->e:Lyg/e;

    iput-object p3, p0, LEg/m;->f:LFg/f;

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    check-cast p1, LEg/m$a;

    invoke-virtual {p0, p1}, LEg/m;->s(LEg/m$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic f(Ljava/lang/Object;LDg/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, LEg/m$a;

    invoke-virtual {p0, p1, p2}, LEg/m;->u(LEg/m$a;LDg/a;)V

    return-void
.end method

.method public g()LDg/a$c;
    .locals 1

    sget-object v0, LDg/a$c;->RENAME_FILE:LDg/a$c;

    return-object v0
.end method

.method public s(LEg/m$a;)J
    .locals 2

    iget-object p1, p0, LEg/m;->d:LBg/r;

    invoke-virtual {p1}, LBg/r;->k()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final t([BLBg/j;JJLjava/io/RandomAccessFile;Ljava/io/OutputStream;LDg/a;I)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v10, p8

    const-wide/16 v6, 0x1a

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide/from16 v4, p3

    move-object/from16 v8, p9

    move/from16 v9, p10

    invoke-virtual/range {v1 .. v9}, LEg/c;->m(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLDg/a;I)J

    move-result-wide v1

    add-long v1, p3, v1

    move-object v11, p0

    iget-object v3, v11, LEg/m;->f:LFg/f;

    array-length v4, v0

    invoke-virtual {v3, v10, v4}, LFg/f;->s(Ljava/io/OutputStream;I)V

    const-wide/16 v3, 0x2

    add-long v12, v1, v3

    const-wide/16 v6, 0x2

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, v12

    invoke-virtual/range {v1 .. v9}, LEg/c;->m(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLDg/a;I)J

    move-result-wide v1

    add-long/2addr v12, v1

    invoke-virtual {v10, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual/range {p2 .. p2}, LBg/b;->k()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v12, v0

    sub-long v0, v12, p3

    sub-long v5, p5, v0

    move-object v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-wide v3, v12

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-virtual/range {v0 .. v8}, LEg/c;->m(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLDg/a;I)J

    move-result-wide v0

    add-long/2addr v12, v0

    return-wide v12
.end method

.method public u(LEg/m$a;LDg/a;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, LEg/m$a;->a(LEg/m$a;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v12, v1}, LEg/m;->v(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v12, LEg/m;->d:LBg/r;

    invoke-virtual {v1}, LBg/r;->k()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, LEg/c;->p(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    :try_start_0
    new-instance v11, Ljava/io/RandomAccessFile;

    iget-object v1, v12, LEg/m;->d:LBg/r;

    invoke-virtual {v1}, LBg/r;->k()Ljava/io/File;

    move-result-object v1

    sget-object v2, LCg/f;->WRITE:LCg/f;

    invoke-virtual {v2}, LCg/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    :try_start_1
    new-instance v10, LAg/h;

    invoke-direct {v10, v14}, LAg/h;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    :try_start_2
    iget-object v1, v0, LEg/d;->a:LBg/m;

    invoke-virtual {v1}, LBg/m;->b()Ljava/nio/charset/Charset;

    move-result-object v9

    iget-object v1, v12, LEg/m;->d:LBg/r;

    invoke-virtual {v1}, LBg/r;->b()LBg/d;

    move-result-object v1

    invoke-virtual {v1}, LBg/d;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v12, v1}, LEg/c;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const-wide/16 v1, 0x0

    move-wide/from16 v17, v1

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, LBg/j;

    invoke-virtual {v12, v6, v13}, LEg/m;->w(LBg/j;Ljava/util/Map;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v6}, LBg/b;->j()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, p2

    invoke-virtual {v7, v2}, LDg/a;->r(Ljava/lang/String;)V

    iget-object v2, v12, LEg/m;->d:LBg/r;

    invoke-virtual {v12, v8, v6, v2}, LEg/c;->o(Ljava/util/List;LBg/j;LBg/r;)J

    move-result-wide v2

    invoke-virtual {v10}, LAg/h;->c()J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    sub-long v19, v2, v4

    if-nez v1, :cond_1

    :try_start_3
    iget-object v1, v0, LEg/d;->a:LBg/m;

    invoke-virtual {v1}, LBg/m;->a()I

    move-result v21

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v10

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    move-object/from16 v22, v8

    move-object/from16 v8, p2

    move-object v15, v9

    move/from16 v9, v21

    invoke-virtual/range {v1 .. v9}, LEg/c;->m(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLDg/a;I)J

    move-result-wide v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-long v17, v17, v1

    move-object/from16 v24, v11

    move-object/from16 v20, v13

    move-object v13, v10

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v13, v10

    move-object/from16 v24, v11

    goto/16 :goto_3

    :cond_1
    move-object/from16 v22, v8

    move-object v15, v9

    :try_start_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6}, LBg/b;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v1, v3}, LEg/m;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v15}, Lyg/d;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v1, v8

    invoke-virtual {v6}, LBg/b;->k()I

    move-result v2

    sub-int v21, v1, v2

    iget-object v1, v0, LEg/d;->a:LBg/m;

    invoke-virtual {v1}, LBg/m;->a()I

    move-result v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v6

    move-wide/from16 v4, v17

    move-object/from16 v17, v6

    move-wide/from16 v6, v19

    move-object/from16 v18, v8

    move-object v8, v11

    move-object/from16 v19, v9

    move-object v9, v10

    move-object/from16 v20, v13

    move-object v13, v10

    move-object/from16 v10, p2

    move-object/from16 v24, v11

    move/from16 v11, v23

    :try_start_5
    invoke-virtual/range {v1 .. v11}, LEg/m;->t([BLBg/j;JJLjava/io/RandomAccessFile;Ljava/io/OutputStream;LDg/a;I)J

    move-result-wide v7

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v17

    move-object/from16 v4, v19

    move-object/from16 v5, v18

    move/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, LEg/m;->y(Ljava/util/List;LBg/j;Ljava/lang/String;[BI)V

    move-wide/from16 v17, v7

    :goto_1
    invoke-virtual/range {p0 .. p0}, LEg/h;->j()V

    move-object v10, v13

    move-object v9, v15

    move-object/from16 v13, v20

    move-object/from16 v8, v22

    move-object/from16 v11, v24

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :goto_2
    move-object v1, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v13, v10

    move-object/from16 v24, v11

    goto :goto_2

    :cond_2
    move-object v15, v9

    move-object v13, v10

    move-object/from16 v24, v11

    iget-object v0, v12, LEg/m;->e:Lyg/e;

    iget-object v1, v12, LEg/m;->d:LBg/r;

    invoke-virtual {v0, v1, v13, v15}, Lyg/e;->d(LBg/r;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v15, 0x1

    :try_start_6
    invoke-virtual {v13}, LAg/h;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    iget-object v0, v12, LEg/m;->d:LBg/r;

    invoke-virtual {v0}, LBg/r;->k()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v12, v15, v0, v14}, LEg/c;->k(ZLjava/io/File;Ljava/io/File;)V

    return-void

    :catchall_3
    move-exception v0

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto :goto_6

    :goto_3
    :try_start_8
    invoke-virtual {v13}, LAg/h;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception v0

    :goto_5
    move-object v1, v0

    const/4 v15, 0x0

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object/from16 v24, v11

    goto :goto_5

    :goto_6
    :try_start_a
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto :goto_7

    :catchall_8
    move-exception v0

    move-object v2, v0

    :try_start_b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_9
    move-exception v0

    const/4 v15, 0x0

    :goto_8
    iget-object v1, v12, LEg/m;->d:LBg/r;

    invoke-virtual {v1}, LBg/r;->k()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v12, v15, v1, v14}, LEg/c;->k(ZLjava/io/File;Ljava/io/File;)V

    throw v0
.end method

.method public final v(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, LFg/h;->j(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, LEg/m;->d:LBg/r;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lyg/d;->c(LBg/r;Ljava/lang/String;)LBg/j;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LBg/b;->s()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final w(LBg/j;Ljava/util/Map;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/j;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p1}, LBg/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "old file name was neither an exact match nor a partial match"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final y(Ljava/util/List;LBg/j;Ljava/lang/String;[BI)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LBg/j;",
            ">;",
            "LBg/j;",
            "Ljava/lang/String;",
            "[BI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, LEg/m;->d:LBg/r;

    invoke-virtual {p2}, LBg/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyg/d;->c(LBg/r;Ljava/lang/String;)LBg/j;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, p3}, LBg/b;->F(Ljava/lang/String;)V

    array-length p2, p4

    invoke-virtual {v5, p2}, LBg/b;->G(I)V

    iget-object v4, p0, LEg/m;->d:LBg/r;

    int-to-long p2, p5

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, LEg/c;->r(Ljava/util/List;LBg/r;LBg/j;J)V

    iget-object p1, p0, LEg/m;->d:LBg/r;

    invoke-virtual {p1}, LBg/r;->e()LBg/g;

    move-result-object p1

    iget-object p4, p0, LEg/m;->d:LBg/r;

    invoke-virtual {p4}, LBg/r;->e()LBg/g;

    move-result-object p4

    invoke-virtual {p4}, LBg/g;->g()J

    move-result-wide p4

    add-long/2addr p4, p2

    invoke-virtual {p1, p4, p5}, LBg/g;->o(J)V

    iget-object p1, p0, LEg/m;->d:LBg/r;

    invoke-virtual {p1}, LBg/r;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LEg/m;->d:LBg/r;

    invoke-virtual {p1}, LBg/r;->j()LBg/o;

    move-result-object p1

    iget-object p4, p0, LEg/m;->d:LBg/r;

    invoke-virtual {p4}, LBg/r;->j()LBg/o;

    move-result-object p4

    invoke-virtual {p4}, LBg/o;->f()J

    move-result-wide p4

    add-long/2addr p4, p2

    invoke-virtual {p1, p4, p5}, LBg/o;->p(J)V

    iget-object p1, p0, LEg/m;->d:LBg/r;

    invoke-virtual {p1}, LBg/r;->i()LBg/n;

    move-result-object p1

    iget-object p4, p0, LEg/m;->d:LBg/r;

    invoke-virtual {p4}, LBg/r;->i()LBg/n;

    move-result-object p4

    invoke-virtual {p4}, LBg/n;->d()J

    move-result-wide p4

    add-long/2addr p4, p2

    invoke-virtual {p1, p4, p5}, LBg/n;->g(J)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "could not find any header with name: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LBg/b;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
