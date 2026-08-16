.class public Lyg/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:S = 0x10s

.field public static final e:S = 0x1cs

.field public static final f:S = 0xbs


# instance fields
.field public final a:LFg/f;

.field public final b:[B

.field public final c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LFg/f;

    invoke-direct {v0}, LFg/f;-><init>()V

    iput-object v0, p0, Lyg/e;->a:LFg/f;

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lyg/e;->b:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lyg/e;->c:[B

    return-void
.end method


# virtual methods
.method public final a(LBg/r;IJ)LBg/o;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, LBg/o;

    invoke-direct {v0}, LBg/o;-><init>()V

    sget-object v1, Lyg/c;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lyg/c;

    invoke-virtual {v0, v1}, LBg/q;->b(Lyg/c;)V

    const-wide/16 v1, 0x2c

    invoke-virtual {v0, v1, v2}, LBg/o;->r(J)V

    invoke-virtual {p1}, LBg/r;->b()LBg/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, LBg/r;->b()LBg/d;

    move-result-object v1

    invoke-virtual {v1}, LBg/d;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, LBg/r;->b()LBg/d;

    move-result-object v1

    invoke-virtual {v1}, LBg/d;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, LBg/r;->b()LBg/d;

    move-result-object v1

    invoke-virtual {v1}, LBg/d;->b()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LBg/j;

    invoke-virtual {v1}, LBg/j;->U()I

    move-result v2

    invoke-virtual {v0, v2}, LBg/o;->u(I)V

    invoke-virtual {v1}, LBg/b;->p()I

    move-result v1

    invoke-virtual {v0, v1}, LBg/o;->v(I)V

    :cond_0
    invoke-virtual {p1}, LBg/r;->e()LBg/g;

    move-result-object v1

    invoke-virtual {v1}, LBg/g;->d()I

    move-result v1

    invoke-virtual {v0, v1}, LBg/o;->n(I)V

    invoke-virtual {p1}, LBg/r;->e()LBg/g;

    move-result-object v1

    invoke-virtual {v1}, LBg/g;->e()I

    move-result v1

    invoke-virtual {v0, v1}, LBg/o;->o(I)V

    invoke-virtual {p1}, LBg/r;->b()LBg/d;

    move-result-object v1

    invoke-virtual {v1}, LBg/d;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, LBg/r;->m()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, LBg/r;->b()LBg/d;

    move-result-object v3

    invoke-virtual {v3}, LBg/d;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, LBg/r;->e()LBg/g;

    move-result-object p1

    invoke-virtual {p1}, LBg/g;->d()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lyg/e;->c(Ljava/util/List;I)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    invoke-virtual {v0, v3, v4}, LBg/o;->t(J)V

    invoke-virtual {v0, v1, v2}, LBg/o;->s(J)V

    int-to-long p1, p2

    invoke-virtual {v0, p1, p2}, LBg/o;->q(J)V

    invoke-virtual {v0, p3, p4}, LBg/o;->p(J)V

    return-object v0
.end method

.method public final b(LBg/j;Z)I
    .locals 5

    if-eqz p2, :cond_0

    const/16 p2, 0x20

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, LBg/b;->c()LBg/a;

    move-result-object v0

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, 0xb

    :cond_1
    invoke-virtual {p1}, LBg/b;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, LBg/b;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBg/i;

    invoke-virtual {v0}, LBg/i;->d()J

    move-result-wide v1

    sget-object v3, Lyg/c;->AES_EXTRA_DATA_RECORD:Lyg/c;

    invoke-virtual {v3}, Lyg/c;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    invoke-virtual {v0}, LBg/i;->d()J

    move-result-wide v1

    sget-object v3, Lyg/c;->ZIP64_EXTRA_FIELD_SIGNATURE:Lyg/c;

    invoke-virtual {v3}, Lyg/c;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, LBg/i;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    goto :goto_1

    :cond_4
    return p2
.end method

.method public final c(Ljava/util/List;I)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LBg/j;",
            ">;I)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LBg/j;

    invoke-virtual {v1}, LBg/j;->O()I

    move-result v1

    if-ne v1, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    int-to-long p1, v0

    return-wide p1

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "file headers are null, cannot calculate number of entries on this disk"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(LBg/r;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lyg/e;->j(LBg/r;Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lyg/e;->g(LBg/r;)J

    move-result-wide v3

    iget-object v0, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {p0, p1, v8, v0, p3}, Lyg/e;->m(LBg/r;Ljava/io/ByteArrayOutputStream;LFg/f;Ljava/nio/charset/Charset;)V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-virtual {p1}, LBg/r;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, v3, v0

    if-gez v0, :cond_0

    invoke-virtual {p1}, LBg/r;->b()LBg/d;

    move-result-object v0

    invoke-virtual {v0}, LBg/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0xffff

    if-lt v0, v1, :cond_4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p1}, LBg/r;->j()LBg/o;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, LBg/o;

    invoke-direct {v0}, LBg/o;-><init>()V

    invoke-virtual {p1, v0}, LBg/r;->z(LBg/o;)V

    :cond_1
    invoke-virtual {p1}, LBg/r;->i()LBg/n;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, LBg/n;

    invoke-direct {v0}, LBg/n;-><init>()V

    invoke-virtual {p1, v0}, LBg/r;->y(LBg/n;)V

    :cond_2
    invoke-virtual {p1}, LBg/r;->i()LBg/n;

    move-result-object v0

    int-to-long v5, v2

    add-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, LBg/n;->g(J)V

    invoke-virtual {p0, p2}, Lyg/e;->h(Ljava/io/OutputStream;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lyg/e;->f(Ljava/io/OutputStream;)I

    move-result v0

    invoke-virtual {p1}, LBg/r;->i()LBg/n;

    move-result-object v5

    invoke-virtual {v5, v0}, LBg/n;->f(I)V

    invoke-virtual {p1}, LBg/r;->i()LBg/n;

    move-result-object v5

    add-int/2addr v0, v1

    invoke-virtual {v5, v0}, LBg/n;->h(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, LBg/r;->i()LBg/n;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, LBg/n;->f(I)V

    invoke-virtual {p1}, LBg/r;->i()LBg/n;

    move-result-object v0

    invoke-virtual {v0, v1}, LBg/n;->h(I)V

    :goto_1
    invoke-virtual {p0, p1, v2, v3, v4}, Lyg/e;->a(LBg/r;IJ)LBg/o;

    move-result-object v0

    invoke-virtual {p1, v0}, LBg/r;->z(LBg/o;)V

    iget-object v1, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {p0, v0, v8, v1}, Lyg/e;->t(LBg/o;Ljava/io/ByteArrayOutputStream;LFg/f;)V

    invoke-virtual {p1}, LBg/r;->i()LBg/n;

    move-result-object v0

    iget-object v1, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {p0, v0, v8, v1}, Lyg/e;->s(LBg/n;Ljava/io/ByteArrayOutputStream;LFg/f;)V

    :cond_4
    iget-object v6, p0, Lyg/e;->a:LFg/f;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v8

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lyg/e;->n(LBg/r;IJLjava/io/ByteArrayOutputStream;LFg/f;Ljava/nio/charset/Charset;)V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lyg/e;->u(LBg/r;Ljava/io/OutputStream;[BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void

    :goto_2
    :try_start_1
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1

    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters is null, cannot finalize zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(LBg/r;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1}, Lyg/e;->g(LBg/r;)J

    move-result-wide v3

    iget-object v0, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {p0, p1, v8, v0, p3}, Lyg/e;->m(LBg/r;Ljava/io/ByteArrayOutputStream;LFg/f;Ljava/nio/charset/Charset;)V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-virtual {p1}, LBg/r;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, v3, v0

    if-gez v0, :cond_0

    invoke-virtual {p1}, LBg/r;->b()LBg/d;

    move-result-object v0

    invoke-virtual {v0}, LBg/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0xffff

    if-lt v0, v1, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, LBg/r;->j()LBg/o;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, LBg/o;

    invoke-direct {v0}, LBg/o;-><init>()V

    invoke-virtual {p1, v0}, LBg/r;->z(LBg/o;)V

    :cond_1
    invoke-virtual {p1}, LBg/r;->i()LBg/n;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, LBg/n;

    invoke-direct {v0}, LBg/n;-><init>()V

    invoke-virtual {p1, v0}, LBg/r;->y(LBg/n;)V

    :cond_2
    invoke-virtual {p1}, LBg/r;->i()LBg/n;

    move-result-object v0

    int-to-long v5, v2

    add-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, LBg/n;->g(J)V

    invoke-virtual {p0, p1, v2, v3, v4}, Lyg/e;->a(LBg/r;IJ)LBg/o;

    move-result-object v0

    invoke-virtual {p1, v0}, LBg/r;->z(LBg/o;)V

    iget-object v1, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {p0, v0, v8, v1}, Lyg/e;->t(LBg/o;Ljava/io/ByteArrayOutputStream;LFg/f;)V

    invoke-virtual {p1}, LBg/r;->i()LBg/n;

    move-result-object v0

    iget-object v1, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {p0, v0, v8, v1}, Lyg/e;->s(LBg/n;Ljava/io/ByteArrayOutputStream;LFg/f;)V

    :cond_3
    iget-object v6, p0, Lyg/e;->a:LFg/f;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v8

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lyg/e;->n(LBg/r;IJLjava/io/ByteArrayOutputStream;LFg/f;Ljava/nio/charset/Charset;)V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lyg/e;->u(LBg/r;Ljava/io/OutputStream;[BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void

    :goto_1
    :try_start_1
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters is null, cannot finalize zip file without validations"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Ljava/io/OutputStream;)I
    .locals 1

    instance-of v0, p1, LAg/h;

    if-eqz v0, :cond_0

    check-cast p1, LAg/h;

    invoke-virtual {p1}, LAg/h;->d()I

    move-result p1

    return p1

    :cond_0
    check-cast p1, LAg/d;

    invoke-virtual {p1}, LAg/d;->d()I

    move-result p1

    return p1
.end method

.method public final g(LBg/r;)J
    .locals 4

    invoke-virtual {p1}, LBg/r;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LBg/r;->j()LBg/o;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LBg/r;->j()LBg/o;

    move-result-object v0

    invoke-virtual {v0}, LBg/o;->f()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LBg/r;->j()LBg/o;

    move-result-object p1

    invoke-virtual {p1}, LBg/o;->f()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p1}, LBg/r;->e()LBg/g;

    move-result-object p1

    invoke-virtual {p1}, LBg/g;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h(Ljava/io/OutputStream;)Z
    .locals 1

    instance-of v0, p1, LAg/h;

    if-eqz v0, :cond_0

    check-cast p1, LAg/h;

    invoke-virtual {p1}, LAg/h;->h()Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, LAg/d;

    if-eqz v0, :cond_1

    check-cast p1, LAg/d;

    invoke-virtual {p1}, LAg/d;->h()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final i(LBg/j;)Z
    .locals 4

    invoke-virtual {p1}, LBg/b;->d()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p1}, LBg/b;->o()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p1}, LBg/j;->T()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p1}, LBg/j;->O()I

    move-result p1

    const v0, 0xffff

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final j(LBg/r;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, LAg/g;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LBg/r;->e()LBg/g;

    move-result-object v0

    check-cast p2, LAg/g;

    invoke-interface {p2}, LAg/g;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LBg/g;->o(J)V

    invoke-interface {p2}, LAg/g;->d()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, LBg/r;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, LBg/r;->j()LBg/o;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, LBg/o;

    invoke-direct {v0}, LBg/o;-><init>()V

    invoke-virtual {p1, v0}, LBg/r;->z(LBg/o;)V

    :cond_1
    invoke-virtual {p1}, LBg/r;->i()LBg/n;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, LBg/n;

    invoke-direct {v0}, LBg/n;-><init>()V

    invoke-virtual {p1, v0}, LBg/r;->y(LBg/n;)V

    :cond_2
    invoke-virtual {p1}, LBg/r;->j()LBg/o;

    move-result-object v0

    invoke-virtual {p1}, LBg/r;->e()LBg/g;

    move-result-object v1

    invoke-virtual {v1}, LBg/g;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LBg/o;->p(J)V

    invoke-virtual {p1}, LBg/r;->i()LBg/n;

    move-result-object v0

    invoke-virtual {v0, p2}, LBg/n;->f(I)V

    invoke-virtual {p1}, LBg/r;->i()LBg/n;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, LBg/n;->h(I)V

    :cond_3
    invoke-virtual {p1}, LBg/r;->e()LBg/g;

    move-result-object v0

    invoke-virtual {v0, p2}, LBg/g;->l(I)V

    invoke-virtual {p1}, LBg/r;->e()LBg/g;

    move-result-object p1

    invoke-virtual {p1, p2}, LBg/g;->m(I)V

    return-void
.end method

.method public final k(LAg/h;LBg/j;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, LBg/b;->o()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    const/4 v1, 0x4

    const/4 v4, 0x0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lyg/e;->a:LFg/f;

    iget-object v5, p0, Lyg/e;->b:[B

    invoke-virtual {v0, v5, v4, v2, v3}, LFg/f;->r([BIJ)V

    iget-object v0, p0, Lyg/e;->b:[B

    invoke-virtual {p1, v0, v4, v1}, LAg/h;->write([BII)V

    iget-object v0, p0, Lyg/e;->b:[B

    invoke-virtual {p1, v0, v4, v1}, LAg/h;->write([BII)V

    invoke-virtual {p2}, LBg/b;->k()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, LAg/h;->k(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {p2}, LBg/b;->o()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, LFg/f;->q(Ljava/io/OutputStream;J)V

    iget-object v0, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {p2}, LBg/b;->d()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, LFg/f;->q(Ljava/io/OutputStream;J)V

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to skip "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes to update LFH"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lyg/e;->a:LFg/f;

    iget-object v2, p0, Lyg/e;->b:[B

    invoke-virtual {p2}, LBg/b;->d()J

    move-result-wide v5

    invoke-virtual {v0, v2, v4, v5, v6}, LFg/f;->r([BIJ)V

    iget-object v0, p0, Lyg/e;->b:[B

    invoke-virtual {p1, v0, v4, v1}, LAg/h;->write([BII)V

    iget-object v0, p0, Lyg/e;->a:LFg/f;

    iget-object v2, p0, Lyg/e;->b:[B

    invoke-virtual {p2}, LBg/b;->o()J

    move-result-wide v5

    invoke-virtual {v0, v2, v4, v5, v6}, LFg/f;->r([BIJ)V

    iget-object p2, p0, Lyg/e;->b:[B

    invoke-virtual {p1, p2, v4, v1}, LAg/h;->write([BII)V

    :goto_0
    return-void
.end method

.method public l(LBg/j;LBg/r;LAg/h;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p1}, LBg/j;->O()I

    move-result v0

    invoke-virtual {p3}, LAg/h;->d()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    invoke-virtual {p2}, LBg/r;->k()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, LBg/r;->k()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, LFg/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1}, LBg/j;->O()I

    move-result v1

    const/16 v3, 0x9

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".z0"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LBg/j;->O()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".z"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LBg/j;->O()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    new-instance v0, LAg/h;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, LAg/h;-><init>(Ljava/io/File;)V

    goto :goto_2

    :cond_2
    move-object v0, p3

    move v4, v2

    :goto_2
    invoke-virtual {v0}, LAg/h;->c()J

    move-result-wide v5

    invoke-virtual {p1}, LBg/j;->T()J

    move-result-wide v7

    const-wide/16 v9, 0xe

    add-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, LAg/h;->j(J)V

    iget-object p2, p0, Lyg/e;->a:LFg/f;

    iget-object v1, p0, Lyg/e;->b:[B

    invoke-virtual {p1}, LBg/b;->f()J

    move-result-wide v7

    invoke-virtual {p2, v1, v2, v7, v8}, LFg/f;->r([BIJ)V

    iget-object p2, p0, Lyg/e;->b:[B

    const/4 v1, 0x4

    invoke-virtual {v0, p2, v2, v1}, LAg/h;->write([BII)V

    invoke-virtual {p0, v0, p1}, Lyg/e;->k(LAg/h;LBg/j;)V

    if-eqz v4, :cond_3

    invoke-virtual {v0}, LAg/h;->close()V

    goto :goto_3

    :cond_3
    invoke-virtual {p3, v5, v6}, LAg/h;->j(J)V

    :goto_3
    return-void

    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid input parameters, cannot update local file header"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(LBg/r;Ljava/io/ByteArrayOutputStream;LFg/f;Ljava/nio/charset/Charset;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-virtual {p1}, LBg/r;->b()LBg/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LBg/r;->b()LBg/d;

    move-result-object v0

    invoke-virtual {v0}, LBg/d;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LBg/r;->b()LBg/d;

    move-result-object v0

    invoke-virtual {v0}, LBg/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, LBg/r;->b()LBg/d;

    move-result-object v0

    invoke-virtual {v0}, LBg/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, LBg/j;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lyg/e;->p(LBg/r;LBg/j;Ljava/io/ByteArrayOutputStream;LFg/f;Ljava/nio/charset/Charset;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final n(LBg/r;IJLjava/io/ByteArrayOutputStream;LFg/f;Ljava/nio/charset/Charset;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [B

    sget-object v1, Lyg/c;->END_OF_CENTRAL_DIRECTORY:Lyg/c;

    invoke-virtual {v1}, Lyg/c;->a()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p6, p5, v1}, LFg/f;->o(Ljava/io/OutputStream;I)V

    invoke-virtual {p1}, LBg/r;->e()LBg/g;

    move-result-object v1

    invoke-virtual {v1}, LBg/g;->d()I

    move-result v1

    invoke-virtual {p6, p5, v1}, LFg/f;->s(Ljava/io/OutputStream;I)V

    invoke-virtual {p1}, LBg/r;->e()LBg/g;

    move-result-object v1

    invoke-virtual {v1}, LBg/g;->e()I

    move-result v1

    invoke-virtual {p6, p5, v1}, LFg/f;->s(Ljava/io/OutputStream;I)V

    invoke-virtual {p1}, LBg/r;->b()LBg/d;

    move-result-object v1

    invoke-virtual {v1}, LBg/d;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, LBg/r;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, LBg/r;->b()LBg/d;

    move-result-object v3

    invoke-virtual {v3}, LBg/d;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, LBg/r;->e()LBg/g;

    move-result-object v4

    invoke-virtual {v4}, LBg/g;->d()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lyg/e;->c(Ljava/util/List;I)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    const-wide/32 v5, 0xffff

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    move-wide v3, v5

    :cond_1
    long-to-int v3, v3

    invoke-virtual {p6, p5, v3}, LFg/f;->s(Ljava/io/OutputStream;I)V

    cmp-long v3, v1, v5

    if-lez v3, :cond_2

    move-wide v1, v5

    :cond_2
    long-to-int v1, v1

    invoke-virtual {p6, p5, v1}, LFg/f;->s(Ljava/io/OutputStream;I)V

    invoke-virtual {p6, p5, p2}, LFg/f;->o(Ljava/io/OutputStream;I)V

    const-wide v1, 0xffffffffL

    cmp-long p2, p3, v1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-lez p2, :cond_3

    invoke-virtual {p6, v0, v4, v1, v2}, LFg/f;->r([BIJ)V

    invoke-virtual {p5, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_3
    invoke-virtual {p6, v0, v4, p3, p4}, LFg/f;->r([BIJ)V

    invoke-virtual {p5, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_1
    invoke-virtual {p1}, LBg/r;->e()LBg/g;

    move-result-object p1

    invoke-virtual {p1}, LBg/g;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LFg/h;->j(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p1, p7}, Lyg/d;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p2, p1

    invoke-virtual {p6, p5, p2}, LFg/f;->s(Ljava/io/OutputStream;I)V

    invoke-virtual {p5, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    :cond_4
    invoke-virtual {p6, p5, v4}, LFg/f;->s(Ljava/io/OutputStream;I)V

    :goto_2
    return-void
.end method

.method public o(LBg/k;Ljava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object v1, p0, Lyg/e;->a:LFg/f;

    sget-object v2, Lyg/c;->EXTRA_DATA_RECORD:Lyg/c;

    invoke-virtual {v2}, Lyg/c;->a()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v0, v2}, LFg/f;->o(Ljava/io/OutputStream;I)V

    iget-object v1, p0, Lyg/e;->a:LFg/f;

    iget-object v2, p0, Lyg/e;->b:[B

    invoke-virtual {p1}, LBg/b;->f()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, LFg/f;->r([BIJ)V

    iget-object v1, p0, Lyg/e;->b:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p1}, LBg/k;->P()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {p1}, LBg/b;->d()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, LFg/f;->q(Ljava/io/OutputStream;J)V

    iget-object v1, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {p1}, LBg/b;->o()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, LFg/f;->q(Ljava/io/OutputStream;J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lyg/e;->a:LFg/f;

    iget-object v3, p0, Lyg/e;->b:[B

    invoke-virtual {p1}, LBg/b;->d()J

    move-result-wide v6

    invoke-virtual {v1, v3, v5, v6, v7}, LFg/f;->r([BIJ)V

    iget-object v1, p0, Lyg/e;->b:[B

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v1, p0, Lyg/e;->a:LFg/f;

    iget-object v3, p0, Lyg/e;->b:[B

    invoke-virtual {p1}, LBg/b;->o()J

    move-result-wide v6

    invoke-virtual {v1, v3, v5, v6, v7}, LFg/f;->r([BIJ)V

    iget-object p1, p0, Lyg/e;->b:[B

    invoke-virtual {v0, p1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters is null, cannot write extended local header"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p(LBg/r;LBg/j;Ljava/io/ByteArrayOutputStream;LFg/f;Ljava/nio/charset/Charset;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v2, :cond_9

    :try_start_0
    new-array v9, v7, [B

    fill-array-data v9, :array_0

    invoke-virtual {p0, v2}, Lyg/e;->i(LBg/j;)Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, LBg/q;->a()Lyg/c;

    move-result-object v11

    invoke-virtual {v11}, Lyg/c;->a()J

    move-result-wide v11

    long-to-int v11, v11

    invoke-virtual {v4, v3, v11}, LFg/f;->o(Ljava/io/OutputStream;I)V

    invoke-virtual/range {p2 .. p2}, LBg/j;->U()I

    move-result v11

    invoke-virtual {v4, v3, v11}, LFg/f;->s(Ljava/io/OutputStream;I)V

    invoke-virtual/range {p2 .. p2}, LBg/b;->p()I

    move-result v11

    invoke-virtual {v4, v3, v11}, LFg/f;->s(Ljava/io/OutputStream;I)V

    invoke-virtual/range {p2 .. p2}, LBg/b;->l()[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual/range {p2 .. p2}, LBg/b;->e()LCg/d;

    move-result-object v11

    invoke-virtual {v11}, LCg/d;->a()I

    move-result v11

    invoke-virtual {v4, v3, v11}, LFg/f;->s(Ljava/io/OutputStream;I)V

    iget-object v11, v1, Lyg/e;->b:[B

    invoke-virtual/range {p2 .. p2}, LBg/b;->m()J

    move-result-wide v12

    invoke-virtual {v4, v11, v8, v12, v13}, LFg/f;->r([BIJ)V

    iget-object v11, v1, Lyg/e;->b:[B

    const/4 v12, 0x4

    invoke-virtual {v3, v11, v8, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v11, v1, Lyg/e;->b:[B

    invoke-virtual/range {p2 .. p2}, LBg/b;->f()J

    move-result-wide v13

    invoke-virtual {v4, v11, v8, v13, v14}, LFg/f;->r([BIJ)V

    iget-object v11, v1, Lyg/e;->b:[B

    invoke-virtual {v3, v11, v8, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const-wide v13, 0xffffffffL

    if-eqz v10, :cond_0

    iget-object v11, v1, Lyg/e;->b:[B

    invoke-virtual {v4, v11, v8, v13, v14}, LFg/f;->r([BIJ)V

    iget-object v11, v1, Lyg/e;->b:[B

    invoke-virtual {v3, v11, v8, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v11, v1, Lyg/e;->b:[B

    invoke-virtual {v3, v11, v8, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0, v6}, LBg/r;->A(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    iget-object v11, v1, Lyg/e;->b:[B

    invoke-virtual/range {p2 .. p2}, LBg/b;->d()J

    move-result-wide v6

    invoke-virtual {v4, v11, v8, v6, v7}, LFg/f;->r([BIJ)V

    iget-object v6, v1, Lyg/e;->b:[B

    invoke-virtual {v3, v6, v8, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v6, v1, Lyg/e;->b:[B

    invoke-virtual/range {p2 .. p2}, LBg/b;->o()J

    move-result-wide v13

    invoke-virtual {v4, v6, v8, v13, v14}, LFg/f;->r([BIJ)V

    iget-object v6, v1, Lyg/e;->b:[B

    invoke-virtual {v3, v6, v8, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_0
    new-array v6, v8, [B

    invoke-virtual/range {p2 .. p2}, LBg/b;->j()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LFg/h;->j(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual/range {p2 .. p2}, LBg/b;->j()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lyg/d;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v6

    :cond_1
    array-length v7, v6

    invoke-virtual {v4, v3, v7}, LFg/f;->s(Ljava/io/OutputStream;I)V

    new-array v7, v12, [B

    if-eqz v10, :cond_2

    iget-object v11, v1, Lyg/e;->b:[B

    const-wide v13, 0xffffffffL

    invoke-virtual {v4, v11, v8, v13, v14}, LFg/f;->r([BIJ)V

    iget-object v11, v1, Lyg/e;->b:[B

    invoke-static {v11, v8, v7, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    iget-object v11, v1, Lyg/e;->b:[B

    invoke-virtual/range {p2 .. p2}, LBg/j;->T()J

    move-result-wide v13

    invoke-virtual {v4, v11, v8, v13, v14}, LFg/f;->r([BIJ)V

    iget-object v11, v1, Lyg/e;->b:[B

    invoke-static {v11, v8, v7, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    invoke-virtual {p0, v2, v10}, Lyg/e;->b(LBg/j;Z)I

    move-result v11

    invoke-virtual {v4, v3, v11}, LFg/f;->s(Ljava/io/OutputStream;I)V

    invoke-virtual/range {p2 .. p2}, LBg/j;->Q()Ljava/lang/String;

    move-result-object v11

    new-array v12, v8, [B

    invoke-static {v11}, LFg/h;->j(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-static {v11, v5}, Lyg/d;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v12

    :cond_3
    array-length v11, v12

    invoke-virtual {v4, v3, v11}, LFg/f;->s(Ljava/io/OutputStream;I)V

    if-eqz v10, :cond_4

    iget-object v11, v1, Lyg/e;->c:[B

    const v13, 0xffff

    invoke-virtual {v4, v11, v8, v13}, LFg/f;->p([BII)V

    iget-object v11, v1, Lyg/e;->c:[B

    const/4 v13, 0x2

    invoke-virtual {v3, v11, v8, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :cond_4
    invoke-virtual/range {p2 .. p2}, LBg/j;->O()I

    move-result v11

    invoke-virtual {v4, v3, v11}, LFg/f;->s(Ljava/io/OutputStream;I)V

    :goto_2
    invoke-virtual {v3, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual/range {p2 .. p2}, LBg/j;->P()[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3, v7}, Ljava/io/OutputStream;->write([B)V

    array-length v7, v6

    if-lez v7, :cond_5

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    :cond_5
    if-eqz v10, :cond_6

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, LBg/r;->A(Z)V

    sget-object v0, Lyg/c;->ZIP64_EXTRA_FIELD_SIGNATURE:Lyg/c;

    invoke-virtual {v0}, Lyg/c;->a()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v4, v3, v0}, LFg/f;->s(Ljava/io/OutputStream;I)V

    const/16 v0, 0x1c

    invoke-virtual {v4, v3, v0}, LFg/f;->s(Ljava/io/OutputStream;I)V

    invoke-virtual/range {p2 .. p2}, LBg/b;->o()J

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, LFg/f;->q(Ljava/io/OutputStream;J)V

    invoke-virtual/range {p2 .. p2}, LBg/b;->d()J

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, LFg/f;->q(Ljava/io/OutputStream;J)V

    invoke-virtual/range {p2 .. p2}, LBg/j;->T()J

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, LFg/f;->q(Ljava/io/OutputStream;J)V

    invoke-virtual/range {p2 .. p2}, LBg/j;->O()I

    move-result v0

    invoke-virtual {v4, v3, v0}, LFg/f;->o(Ljava/io/OutputStream;I)V

    :cond_6
    invoke-virtual/range {p2 .. p2}, LBg/b;->c()LBg/a;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p2 .. p2}, LBg/b;->c()LBg/a;

    move-result-object v0

    invoke-virtual {v0}, LBg/q;->a()Lyg/c;

    move-result-object v6

    invoke-virtual {v6}, Lyg/c;->a()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v4, v3, v6}, LFg/f;->s(Ljava/io/OutputStream;I)V

    invoke-virtual {v0}, LBg/a;->f()I

    move-result v6

    invoke-virtual {v4, v3, v6}, LFg/f;->s(Ljava/io/OutputStream;I)V

    invoke-virtual {v0}, LBg/a;->d()LCg/b;

    move-result-object v6

    invoke-virtual {v6}, LCg/b;->b()I

    move-result v6

    invoke-virtual {v4, v3, v6}, LFg/f;->s(Ljava/io/OutputStream;I)V

    invoke-virtual {v0}, LBg/a;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lyg/d;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, LBg/a;->c()LCg/a;

    move-result-object v5

    invoke-virtual {v5}, LCg/a;->d()I

    move-result v5

    int-to-byte v5, v5

    const/4 v6, 0x1

    new-array v6, v6, [B

    aput-byte v5, v6, v8

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, LBg/a;->e()LCg/d;

    move-result-object v0

    invoke-virtual {v0}, LCg/d;->a()I

    move-result v0

    invoke-virtual {v4, v3, v0}, LFg/f;->s(Ljava/io/OutputStream;I)V

    :cond_7
    invoke-virtual {p0, v2, v3}, Lyg/e;->r(LBg/j;Ljava/io/OutputStream;)V

    array-length v0, v12

    if-lez v0, :cond_8

    invoke-virtual {v3, v12}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-void

    :goto_3
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :cond_9
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "input parameters is null, cannot write local file header"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public q(LBg/r;LBg/k;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object v3, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {p2}, LBg/q;->a()Lyg/c;

    move-result-object v4

    invoke-virtual {v4}, Lyg/c;->a()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v2, v4}, LFg/f;->o(Ljava/io/OutputStream;I)V

    iget-object v3, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {p2}, LBg/b;->p()I

    move-result v4

    invoke-virtual {v3, v2, v4}, LFg/f;->s(Ljava/io/OutputStream;I)V

    invoke-virtual {p2}, LBg/b;->l()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v3, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {p2}, LBg/b;->e()LCg/d;

    move-result-object v4

    invoke-virtual {v4}, LCg/d;->a()I

    move-result v4

    invoke-virtual {v3, v2, v4}, LFg/f;->s(Ljava/io/OutputStream;I)V

    iget-object v3, p0, Lyg/e;->a:LFg/f;

    iget-object v4, p0, Lyg/e;->b:[B

    invoke-virtual {p2}, LBg/b;->m()J

    move-result-wide v5

    invoke-virtual {v3, v4, v1, v5, v6}, LFg/f;->r([BIJ)V

    iget-object v3, p0, Lyg/e;->b:[B

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v3, p0, Lyg/e;->a:LFg/f;

    iget-object v5, p0, Lyg/e;->b:[B

    invoke-virtual {p2}, LBg/b;->f()J

    move-result-wide v6

    invoke-virtual {v3, v5, v1, v6, v7}, LFg/f;->r([BIJ)V

    iget-object v3, p0, Lyg/e;->b:[B

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p2}, LBg/b;->d()J

    move-result-wide v5

    const-wide v7, 0xffffffffL

    cmp-long v3, v5, v7

    if-gez v3, :cond_1

    invoke-virtual {p2}, LBg/b;->o()J

    move-result-wide v5

    cmp-long v3, v5, v7

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    :goto_0
    move v3, v0

    :goto_1
    if-eqz v3, :cond_2

    iget-object v5, p0, Lyg/e;->a:LFg/f;

    iget-object v6, p0, Lyg/e;->b:[B

    invoke-virtual {v5, v6, v1, v7, v8}, LFg/f;->r([BIJ)V

    iget-object v5, p0, Lyg/e;->b:[B

    invoke-virtual {v2, v5, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v5, p0, Lyg/e;->b:[B

    invoke-virtual {v2, v5, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p1, v0}, LBg/r;->A(Z)V

    invoke-virtual {p2, v0}, LBg/k;->S(Z)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lyg/e;->a:LFg/f;

    iget-object v5, p0, Lyg/e;->b:[B

    invoke-virtual {p2}, LBg/b;->d()J

    move-result-wide v6

    invoke-virtual {p1, v5, v1, v6, v7}, LFg/f;->r([BIJ)V

    iget-object p1, p0, Lyg/e;->b:[B

    invoke-virtual {v2, p1, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object p1, p0, Lyg/e;->a:LFg/f;

    iget-object v5, p0, Lyg/e;->b:[B

    invoke-virtual {p2}, LBg/b;->o()J

    move-result-wide v6

    invoke-virtual {p1, v5, v1, v6, v7}, LFg/f;->r([BIJ)V

    iget-object p1, p0, Lyg/e;->b:[B

    invoke-virtual {v2, p1, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p2, v1}, LBg/k;->S(Z)V

    :goto_2
    new-array p1, v1, [B

    invoke-virtual {p2}, LBg/b;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LFg/h;->j(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, LBg/b;->j()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4}, Lyg/d;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :cond_3
    iget-object v4, p0, Lyg/e;->a:LFg/f;

    array-length v5, p1

    invoke-virtual {v4, v2, v5}, LFg/f;->s(Ljava/io/OutputStream;I)V

    if-eqz v3, :cond_4

    const/16 v4, 0x14

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    invoke-virtual {p2}, LBg/b;->c()LBg/a;

    move-result-object v5

    if-eqz v5, :cond_5

    add-int/lit8 v4, v4, 0xb

    :cond_5
    iget-object v5, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {v5, v2, v4}, LFg/f;->s(Ljava/io/OutputStream;I)V

    array-length v4, p1

    if-lez v4, :cond_6

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_6
    if-eqz v3, :cond_7

    iget-object p1, p0, Lyg/e;->a:LFg/f;

    sget-object v3, Lyg/c;->ZIP64_EXTRA_FIELD_SIGNATURE:Lyg/c;

    invoke-virtual {v3}, Lyg/c;->a()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p1, v2, v3}, LFg/f;->s(Ljava/io/OutputStream;I)V

    iget-object p1, p0, Lyg/e;->a:LFg/f;

    const/16 v3, 0x10

    invoke-virtual {p1, v2, v3}, LFg/f;->s(Ljava/io/OutputStream;I)V

    iget-object p1, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {p2}, LBg/b;->o()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, LFg/f;->q(Ljava/io/OutputStream;J)V

    iget-object p1, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {p2}, LBg/b;->d()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, LFg/f;->q(Ljava/io/OutputStream;J)V

    :cond_7
    invoke-virtual {p2}, LBg/b;->c()LBg/a;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, LBg/b;->c()LBg/a;

    move-result-object p1

    iget-object p2, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {p1}, LBg/q;->a()Lyg/c;

    move-result-object v3

    invoke-virtual {v3}, Lyg/c;->a()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p2, v2, v3}, LFg/f;->s(Ljava/io/OutputStream;I)V

    iget-object p2, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {p1}, LBg/a;->f()I

    move-result v3

    invoke-virtual {p2, v2, v3}, LFg/f;->s(Ljava/io/OutputStream;I)V

    iget-object p2, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {p1}, LBg/a;->d()LCg/b;

    move-result-object v3

    invoke-virtual {v3}, LCg/b;->b()I

    move-result v3

    invoke-virtual {p2, v2, v3}, LFg/f;->s(Ljava/io/OutputStream;I)V

    invoke-virtual {p1}, LBg/a;->g()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p4}, Lyg/d;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, LBg/a;->c()LCg/a;

    move-result-object p2

    invoke-virtual {p2}, LCg/a;->d()I

    move-result p2

    int-to-byte p2, p2

    new-array p4, v0, [B

    aput-byte p2, p4, v1

    invoke-virtual {v2, p4}, Ljava/io/OutputStream;->write([B)V

    iget-object p2, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {p1}, LBg/a;->e()LCg/d;

    move-result-object p1

    invoke-virtual {p1}, LCg/d;->a()I

    move-result p1

    invoke-virtual {p2, v2, p1}, LFg/f;->s(Ljava/io/OutputStream;I)V

    :cond_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void

    :goto_4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
.end method

.method public final r(LBg/j;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LBg/b;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, LBg/b;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, LBg/b;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBg/i;

    invoke-virtual {v0}, LBg/i;->d()J

    move-result-wide v1

    sget-object v3, Lyg/c;->AES_EXTRA_DATA_RECORD:Lyg/c;

    invoke-virtual {v3}, Lyg/c;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LBg/i;->d()J

    move-result-wide v1

    sget-object v3, Lyg/c;->ZIP64_EXTRA_FIELD_SIGNATURE:Lyg/c;

    invoke-virtual {v3}, Lyg/c;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {v0}, LBg/i;->d()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, p2, v2}, LFg/f;->s(Ljava/io/OutputStream;I)V

    iget-object v1, p0, Lyg/e;->a:LFg/f;

    invoke-virtual {v0}, LBg/i;->e()I

    move-result v2

    invoke-virtual {v1, p2, v2}, LFg/f;->s(Ljava/io/OutputStream;I)V

    invoke-virtual {v0}, LBg/i;->e()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, LBg/i;->c()[B

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LBg/i;->c()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final s(LBg/n;Ljava/io/ByteArrayOutputStream;LFg/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lyg/c;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lyg/c;

    invoke-virtual {v0}, Lyg/c;->a()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p3, p2, v0}, LFg/f;->o(Ljava/io/OutputStream;I)V

    invoke-virtual {p1}, LBg/n;->c()I

    move-result v0

    invoke-virtual {p3, p2, v0}, LFg/f;->o(Ljava/io/OutputStream;I)V

    invoke-virtual {p1}, LBg/n;->d()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, LFg/f;->q(Ljava/io/OutputStream;J)V

    invoke-virtual {p1}, LBg/n;->e()I

    move-result p1

    invoke-virtual {p3, p2, p1}, LFg/f;->o(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public final t(LBg/o;Ljava/io/ByteArrayOutputStream;LFg/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LBg/q;->a()Lyg/c;

    move-result-object v0

    invoke-virtual {v0}, Lyg/c;->a()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p3, p2, v0}, LFg/f;->o(Ljava/io/OutputStream;I)V

    invoke-virtual {p1}, LBg/o;->h()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, LFg/f;->q(Ljava/io/OutputStream;J)V

    invoke-virtual {p1}, LBg/o;->k()I

    move-result v0

    invoke-virtual {p3, p2, v0}, LFg/f;->s(Ljava/io/OutputStream;I)V

    invoke-virtual {p1}, LBg/o;->l()I

    move-result v0

    invoke-virtual {p3, p2, v0}, LFg/f;->s(Ljava/io/OutputStream;I)V

    invoke-virtual {p1}, LBg/o;->d()I

    move-result v0

    invoke-virtual {p3, p2, v0}, LFg/f;->o(Ljava/io/OutputStream;I)V

    invoke-virtual {p1}, LBg/o;->e()I

    move-result v0

    invoke-virtual {p3, p2, v0}, LFg/f;->o(Ljava/io/OutputStream;I)V

    invoke-virtual {p1}, LBg/o;->j()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, LFg/f;->q(Ljava/io/OutputStream;J)V

    invoke-virtual {p1}, LBg/o;->i()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, LFg/f;->q(Ljava/io/OutputStream;J)V

    invoke-virtual {p1}, LBg/o;->g()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, LFg/f;->q(Ljava/io/OutputStream;J)V

    invoke-virtual {p1}, LBg/o;->f()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, LFg/f;->q(Ljava/io/OutputStream;J)V

    return-void
.end method

.method public final u(LBg/r;Ljava/io/OutputStream;[BLjava/nio/charset/Charset;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    instance-of v0, p2, LAg/d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LAg/d;

    array-length v1, p3

    invoke-virtual {v0, v1}, LAg/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p4}, Lyg/e;->d(LBg/r;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void

    :cond_0
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid buff to write as zip headers"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
