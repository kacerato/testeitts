.class public LAg/k;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public b:LAg/d;

.field public c:[C

.field public d:LBg/r;

.field public e:LAg/c;

.field public f:LBg/j;

.field public g:LBg/k;

.field public h:Lyg/a;

.field public i:Lyg/e;

.field public j:Ljava/util/zip/CRC32;

.field public k:LFg/f;

.field public l:J

.field public m:LBg/m;

.field public n:Z

.field public o:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, LAg/k;-><init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, LAg/k;-><init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, LAg/k;-><init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[CLBg/m;LBg/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 6
    new-instance v0, Lyg/a;

    invoke-direct {v0}, Lyg/a;-><init>()V

    iput-object v0, p0, LAg/k;->h:Lyg/a;

    .line 7
    new-instance v0, Lyg/e;

    invoke-direct {v0}, Lyg/e;-><init>()V

    iput-object v0, p0, LAg/k;->i:Lyg/e;

    .line 8
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, LAg/k;->j:Ljava/util/zip/CRC32;

    .line 9
    new-instance v0, LFg/f;

    invoke-direct {v0}, LFg/f;-><init>()V

    iput-object v0, p0, LAg/k;->k:LFg/f;

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, LAg/k;->l:J

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, LAg/k;->o:Z

    .line 12
    invoke-virtual {p3}, LBg/m;->a()I

    move-result v0

    const/16 v1, 0x200

    if-lt v0, v1, :cond_0

    .line 13
    new-instance v0, LAg/d;

    invoke-direct {v0, p1}, LAg/d;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, LAg/k;->b:LAg/d;

    .line 14
    iput-object p2, p0, LAg/k;->c:[C

    .line 15
    iput-object p3, p0, LAg/k;->m:LBg/m;

    .line 16
    invoke-virtual {p0, p4, v0}, LAg/k;->j(LBg/r;LAg/d;)LBg/r;

    move-result-object p1

    iput-object p1, p0, LAg/k;->d:LBg/r;

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, LAg/k;->n:Z

    .line 18
    invoke-virtual {p0}, LAg/k;->p()V

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer size cannot be less than 512 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, LBg/m;

    const/16 v1, 0x1000

    const/4 v2, 0x1

    invoke-direct {v0, p3, v1, v2}, LBg/m;-><init>(Ljava/nio/charset/Charset;IZ)V

    new-instance p3, LBg/r;

    invoke-direct {p3}, LBg/r;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, LAg/k;-><init>(Ljava/io/OutputStream;[CLBg/m;LBg/r;)V

    return-void
.end method


# virtual methods
.method public final a(LBg/s;)LBg/s;
    .locals 6

    new-instance v0, LBg/s;

    invoke-direct {v0, p1}, LBg/s;-><init>(LBg/s;)V

    invoke-virtual {p1}, LBg/s;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LFg/c;->A(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LBg/s;->P(Z)V

    sget-object v4, LCg/d;->STORE:LCg/d;

    invoke-virtual {v0, v4}, LBg/s;->y(LCg/d;)V

    invoke-virtual {v0, v1}, LBg/s;->A(Z)V

    invoke-virtual {v0, v2, v3}, LBg/s;->D(J)V

    :cond_0
    invoke-virtual {p1}, LBg/s;->l()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-gtz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LBg/s;->I(J)V

    :cond_1
    return-object v0
.end method

.method public c()LBg/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LAg/k;->e:LAg/c;

    invoke-virtual {v0}, LAg/c;->c()V

    iget-object v0, p0, LAg/k;->e:LAg/c;

    invoke-virtual {v0}, LAg/c;->d()J

    move-result-wide v0

    iget-object v2, p0, LAg/k;->f:LBg/j;

    invoke-virtual {v2, v0, v1}, LBg/b;->w(J)V

    iget-object v2, p0, LAg/k;->g:LBg/k;

    invoke-virtual {v2, v0, v1}, LBg/b;->w(J)V

    iget-object v0, p0, LAg/k;->f:LBg/j;

    iget-wide v1, p0, LAg/k;->l:J

    invoke-virtual {v0, v1, v2}, LBg/b;->K(J)V

    iget-object v0, p0, LAg/k;->g:LBg/k;

    iget-wide v1, p0, LAg/k;->l:J

    invoke-virtual {v0, v1, v2}, LBg/b;->K(J)V

    iget-object v0, p0, LAg/k;->f:LBg/j;

    invoke-virtual {p0, v0}, LAg/k;->o(LBg/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LAg/k;->f:LBg/j;

    iget-object v1, p0, LAg/k;->j:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LBg/b;->y(J)V

    iget-object v0, p0, LAg/k;->g:LBg/k;

    iget-object v1, p0, LAg/k;->j:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LBg/b;->y(J)V

    :cond_0
    iget-object v0, p0, LAg/k;->d:LBg/r;

    invoke-virtual {v0}, LBg/r;->f()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LAg/k;->g:LBg/k;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LAg/k;->d:LBg/r;

    invoke-virtual {v0}, LBg/r;->b()LBg/d;

    move-result-object v0

    invoke-virtual {v0}, LBg/d;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LAg/k;->f:LBg/j;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LAg/k;->g:LBg/k;

    invoke-virtual {v0}, LBg/b;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LAg/k;->i:Lyg/e;

    iget-object v1, p0, LAg/k;->g:LBg/k;

    iget-object v2, p0, LAg/k;->b:LAg/d;

    invoke-virtual {v0, v1, v2}, Lyg/e;->o(LBg/k;Ljava/io/OutputStream;)V

    :cond_1
    invoke-virtual {p0}, LAg/k;->l()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LAg/k;->o:Z

    iget-object v0, p0, LAg/k;->f:LBg/j;

    return-object v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LAg/k;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, LAg/k;->c()LBg/j;

    :cond_0
    iget-object v0, p0, LAg/k;->d:LBg/r;

    invoke-virtual {v0}, LBg/r;->e()LBg/g;

    move-result-object v0

    iget-object v1, p0, LAg/k;->b:LAg/d;

    invoke-virtual {v1}, LAg/d;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LBg/g;->o(J)V

    iget-object v0, p0, LAg/k;->i:Lyg/e;

    iget-object v1, p0, LAg/k;->d:LBg/r;

    iget-object v2, p0, LAg/k;->b:LAg/d;

    iget-object v3, p0, LAg/k;->m:LBg/m;

    invoke-virtual {v3}, LBg/m;->b()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lyg/e;->d(LBg/r;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    iget-object v0, p0, LAg/k;->b:LAg/d;

    invoke-virtual {v0}, LAg/d;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LAg/k;->n:Z

    return-void
.end method

.method public final d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LAg/k;->n:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(LBg/s;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LAg/k;->h:Lyg/a;

    iget-object v1, p0, LAg/k;->b:LAg/d;

    invoke-virtual {v1}, LAg/d;->h()Z

    move-result v2

    iget-object v1, p0, LAg/k;->b:LAg/d;

    invoke-virtual {v1}, LAg/d;->d()I

    move-result v3

    iget-object v1, p0, LAg/k;->m:LBg/m;

    invoke-virtual {v1}, LBg/m;->b()Ljava/nio/charset/Charset;

    move-result-object v4

    iget-object v5, p0, LAg/k;->k:LFg/f;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lyg/a;->d(LBg/s;ZILjava/nio/charset/Charset;LFg/f;)LBg/j;

    move-result-object p1

    iput-object p1, p0, LAg/k;->f:LBg/j;

    iget-object v0, p0, LAg/k;->b:LAg/d;

    invoke-virtual {v0}, LAg/d;->f()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, LBg/j;->a0(J)V

    iget-object p1, p0, LAg/k;->h:Lyg/a;

    iget-object v0, p0, LAg/k;->f:LBg/j;

    invoke-virtual {p1, v0}, Lyg/a;->f(LBg/j;)LBg/k;

    move-result-object p1

    iput-object p1, p0, LAg/k;->g:LBg/k;

    iget-object v0, p0, LAg/k;->i:Lyg/e;

    iget-object v1, p0, LAg/k;->d:LBg/r;

    iget-object v2, p0, LAg/k;->b:LAg/d;

    iget-object v3, p0, LAg/k;->m:LBg/m;

    invoke-virtual {v3}, LBg/m;->b()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lyg/e;->q(LBg/r;LBg/k;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public final f(LAg/j;LBg/s;)LAg/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LAg/j;",
            "LBg/s;",
            ")",
            "LAg/b<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, LBg/s;->o()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LAg/f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, LAg/f;-><init>(LAg/j;LBg/s;[C)V

    return-object v0

    :cond_0
    iget-object v0, p0, LAg/k;->c:[C

    if-eqz v0, :cond_4

    array-length v0, v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, LBg/s;->f()LCg/e;

    move-result-object v0

    sget-object v1, LCg/e;->AES:LCg/e;

    if-ne v0, v1, :cond_1

    new-instance v0, LAg/a;

    iget-object v1, p0, LAg/k;->c:[C

    iget-object v2, p0, LAg/k;->m:LBg/m;

    invoke-virtual {v2}, LBg/m;->c()Z

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, LAg/a;-><init>(LAg/j;LBg/s;[CZ)V

    return-object v0

    :cond_1
    invoke-virtual {p2}, LBg/s;->f()LCg/e;

    move-result-object v0

    sget-object v1, LCg/e;->ZIP_STANDARD:LCg/e;

    if-ne v0, v1, :cond_2

    new-instance v0, LAg/l;

    iget-object v1, p0, LAg/k;->c:[C

    iget-object v2, p0, LAg/k;->m:LBg/m;

    invoke-virtual {v2}, LBg/m;->c()Z

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, LAg/l;-><init>(LAg/j;LBg/s;[CZ)V

    return-object v0

    :cond_2
    invoke-virtual {p2}, LBg/s;->f()LCg/e;

    move-result-object p1

    sget-object p2, LCg/e;->ZIP_STANDARD_VARIANT_STRONG:LCg/e;

    if-ne p1, p2, :cond_3

    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " encryption method is not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid encryption method"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "password not set"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(LAg/b;LBg/s;)LAg/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LAg/b<",
            "*>;",
            "LBg/s;",
            ")",
            "LAg/c;"
        }
    .end annotation

    invoke-virtual {p2}, LBg/s;->d()LCg/d;

    move-result-object v0

    sget-object v1, LCg/d;->DEFLATE:LCg/d;

    if-ne v0, v1, :cond_0

    new-instance v0, LAg/e;

    invoke-virtual {p2}, LBg/s;->c()LCg/c;

    move-result-object p2

    iget-object v1, p0, LAg/k;->m:LBg/m;

    invoke-virtual {v1}, LBg/m;->a()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, LAg/e;-><init>(LAg/b;LCg/c;I)V

    return-object v0

    :cond_0
    new-instance p2, LAg/i;

    invoke-direct {p2, p1}, LAg/i;-><init>(LAg/b;)V

    return-object p2
.end method

.method public final h(LBg/s;)LAg/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, LAg/j;

    iget-object v1, p0, LAg/k;->b:LAg/d;

    invoke-direct {v0, v1}, LAg/j;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0, p1}, LAg/k;->f(LAg/j;LBg/s;)LAg/b;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LAg/k;->g(LAg/b;LBg/s;)LAg/c;

    move-result-object p1

    return-object p1
.end method

.method public final j(LBg/r;LAg/d;)LBg/r;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, LBg/r;

    invoke-direct {p1}, LBg/r;-><init>()V

    :cond_0
    invoke-virtual {p2}, LAg/d;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LBg/r;->v(Z)V

    invoke-virtual {p2}, LAg/d;->g()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, LBg/r;->w(J)V

    :cond_1
    return-object p1
.end method

.method public k(LBg/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LAg/k;->n(LBg/s;)V

    invoke-virtual {p0, p1}, LAg/k;->a(LBg/s;)LBg/s;

    move-result-object p1

    invoke-virtual {p0, p1}, LAg/k;->e(LBg/s;)V

    invoke-virtual {p0, p1}, LAg/k;->h(LBg/s;)LAg/c;

    move-result-object p1

    iput-object p1, p0, LAg/k;->e:LAg/c;

    const/4 p1, 0x0

    iput-boolean p1, p0, LAg/k;->o:Z

    return-void
.end method

.method public final l()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LAg/k;->l:J

    iget-object v0, p0, LAg/k;->j:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    iget-object v0, p0, LAg/k;->e:LAg/c;

    invoke-virtual {v0}, LAg/c;->close()V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LAg/k;->d()V

    iget-object v0, p0, LAg/k;->d:LBg/r;

    invoke-virtual {v0}, LBg/r;->e()LBg/g;

    move-result-object v0

    invoke-virtual {v0, p1}, LBg/g;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final n(LBg/s;)V
    .locals 4

    invoke-virtual {p1}, LBg/s;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LFg/h;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, LBg/s;->d()LCg/d;

    move-result-object v0

    sget-object v1, LCg/d;->STORE:LCg/d;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, LBg/s;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p1}, LBg/s;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LFg/c;->A(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, LBg/s;->u()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "uncompressed size should be set for zip entries of compression type store"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fileNameInZip is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(LBg/j;)Z
    .locals 2

    invoke-virtual {p1}, LBg/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LBg/b;->g()LCg/e;

    move-result-object v0

    sget-object v1, LCg/e;->AES:LCg/e;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LBg/b;->c()LBg/a;

    move-result-object p1

    invoke-virtual {p1}, LBg/a;->d()LCg/b;

    move-result-object p1

    sget-object v0, LCg/b;->ONE:LCg/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final p()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LAg/k;->b:LAg/d;

    invoke-virtual {v0}, LAg/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LAg/k;->k:LFg/f;

    iget-object v1, p0, LAg/k;->b:LAg/d;

    sget-object v2, Lyg/c;->SPLIT_ZIP:Lyg/c;

    invoke-virtual {v2}, Lyg/c;->a()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, LFg/f;->o(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, LAg/k;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, LAg/k;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, LAg/k;->d()V

    .line 4
    iget-object v0, p0, LAg/k;->j:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 5
    iget-object v0, p0, LAg/k;->e:LAg/c;

    invoke-virtual {v0, p1, p2, p3}, LAg/c;->write([BII)V

    .line 6
    iget-wide p1, p0, LAg/k;->l:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, LAg/k;->l:J

    return-void
.end method
