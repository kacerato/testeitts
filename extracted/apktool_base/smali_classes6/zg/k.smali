.class public Lzg/k;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public b:Ljava/io/PushbackInputStream;

.field public c:Lzg/c;

.field public d:Lyg/b;

.field public e:[C

.field public f:LFg/e;

.field public g:LBg/k;

.field public h:Ljava/util/zip/CRC32;

.field public i:[B

.field public j:Z

.field public k:LBg/m;

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lzg/k;-><init>(Ljava/io/InputStream;[CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;LFg/e;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lzg/k;-><init>(Ljava/io/InputStream;LFg/e;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;LFg/e;LBg/m;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0, p2, p3}, Lzg/k;-><init>(Ljava/io/InputStream;[CLFg/e;LBg/m;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;LFg/e;Ljava/nio/charset/Charset;)V
    .locals 3

    .line 6
    new-instance v0, LBg/m;

    const/16 v1, 0x1000

    const/4 v2, 0x1

    invoke-direct {v0, p3, v1, v2}, LBg/m;-><init>(Ljava/nio/charset/Charset;IZ)V

    invoke-direct {p0, p1, p2, v0}, Lzg/k;-><init>(Ljava/io/InputStream;LFg/e;LBg/m;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lzg/k;-><init>(Ljava/io/InputStream;[CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[C)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lzg/k;-><init>(Ljava/io/InputStream;[CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[CLBg/m;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0, p3}, Lzg/k;-><init>(Ljava/io/InputStream;[CLFg/e;LBg/m;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[CLFg/e;LBg/m;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 10
    new-instance v0, Lyg/b;

    invoke-direct {v0}, Lyg/b;-><init>()V

    iput-object v0, p0, Lzg/k;->d:Lyg/b;

    .line 11
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lzg/k;->h:Ljava/util/zip/CRC32;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lzg/k;->j:Z

    .line 13
    iput-boolean v0, p0, Lzg/k;->l:Z

    .line 14
    iput-boolean v0, p0, Lzg/k;->m:Z

    .line 15
    invoke-virtual {p4}, LBg/m;->a()I

    move-result v0

    const/16 v1, 0x200

    if-lt v0, v1, :cond_0

    .line 16
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-virtual {p4}, LBg/m;->a()I

    move-result v1

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lzg/k;->b:Ljava/io/PushbackInputStream;

    .line 17
    iput-object p2, p0, Lzg/k;->e:[C

    .line 18
    iput-object p3, p0, Lzg/k;->f:LFg/e;

    .line 19
    iput-object p4, p0, Lzg/k;->k:LBg/m;

    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer size cannot be less than 512 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;[CLjava/nio/charset/Charset;)V
    .locals 3

    .line 5
    new-instance v0, LBg/m;

    const/16 v1, 0x1000

    const/4 v2, 0x1

    invoke-direct {v0, p3, v1, v2}, LBg/m;-><init>(Ljava/nio/charset/Charset;IZ)V

    invoke-direct {p0, p1, p2, v0}, Lzg/k;-><init>(Ljava/io/InputStream;[CLBg/m;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lzg/k;->c()V

    iget-boolean v0, p0, Lzg/k;->m:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lzg/k;->l:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lzg/k;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lzg/k;->c:Lzg/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lzg/c;->close()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzg/k;->l:Z

    return-void
.end method

.method public final d(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LBg/i;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LBg/i;

    invoke-virtual {v1}, LBg/i;->d()J

    move-result-wide v1

    sget-object v3, Lyg/c;->ZIP64_EXTRA_FIELD_SIGNATURE:Lyg/c;

    invoke-virtual {v3}, Lyg/c;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public final e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lzg/k;->c:Lzg/c;

    iget-object v1, p0, Lzg/k;->b:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v1}, Lzg/c;->d(Ljava/io/PushbackInputStream;)I

    move-result v0

    iget-object v1, p0, Lzg/k;->c:Lzg/c;

    iget-object v2, p0, Lzg/k;->b:Ljava/io/PushbackInputStream;

    invoke-virtual {v1, v2, v0}, Lzg/c;->a(Ljava/io/InputStream;I)V

    invoke-virtual {p0}, Lzg/k;->q()V

    invoke-virtual {p0}, Lzg/k;->u()V

    invoke-virtual {p0}, Lzg/k;->s()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzg/k;->m:Z

    return-void
.end method

.method public final f(LBg/a;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LBg/a;->c()LCg/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LBg/a;->c()LCg/a;

    move-result-object p1

    invoke-virtual {p1}, LCg/a;->e()I

    move-result p1

    add-int/lit8 p1, p1, 0xc

    return p1

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "AesExtraDataRecord not found or invalid for Aes encrypted entry"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(LBg/k;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, LFg/h;->i(LBg/b;)LCg/d;

    move-result-object v0

    sget-object v1, LCg/d;->STORE:LCg/d;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LBg/b;->o()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p1}, LBg/b;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lzg/k;->j:Z

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_1
    invoke-virtual {p1}, LBg/b;->d()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lzg/k;->h(LBg/k;)I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final h(LBg/k;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-virtual {p1}, LBg/b;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, LBg/b;->g()LCg/e;

    move-result-object v0

    sget-object v2, LCg/e;->AES:LCg/e;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LBg/b;->c()LBg/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzg/k;->f(LBg/a;)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, LBg/b;->g()LCg/e;

    move-result-object p1

    sget-object v0, LCg/e;->ZIP_STANDARD:LCg/e;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xc

    return p1

    :cond_2
    return v1
.end method

.method public j()LBg/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lzg/k;->k(LBg/j;Z)LBg/k;

    move-result-object v0

    return-object v0
.end method

.method public k(LBg/j;Z)LBg/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lzg/k;->g:LBg/k;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lzg/k;->r()V

    :cond_0
    iget-object p2, p0, Lzg/k;->d:Lyg/b;

    iget-object v0, p0, Lzg/k;->b:Ljava/io/PushbackInputStream;

    iget-object v1, p0, Lzg/k;->k:LBg/m;

    invoke-virtual {v1}, LBg/m;->b()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lyg/b;->p(Ljava/io/InputStream;Ljava/nio/charset/Charset;)LBg/k;

    move-result-object p2

    iput-object p2, p0, Lzg/k;->g:LBg/k;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p2}, LBg/b;->t()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lzg/k;->e:[C

    if-nez p2, :cond_2

    iget-object p2, p0, Lzg/k;->f:LFg/e;

    if-eqz p2, :cond_2

    invoke-interface {p2}, LFg/e;->getPassword()[C

    move-result-object p2

    invoke-virtual {p0, p2}, Lzg/k;->t([C)V

    :cond_2
    iget-object p2, p0, Lzg/k;->g:LBg/k;

    invoke-virtual {p0, p2}, Lzg/k;->v(LBg/k;)V

    iget-object p2, p0, Lzg/k;->h:Ljava/util/zip/CRC32;

    invoke-virtual {p2}, Ljava/util/zip/CRC32;->reset()V

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lzg/k;->g:LBg/k;

    invoke-virtual {p1}, LBg/b;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LBg/b;->y(J)V

    iget-object v0, p0, Lzg/k;->g:LBg/k;

    invoke-virtual {p1}, LBg/b;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LBg/b;->w(J)V

    iget-object v0, p0, Lzg/k;->g:LBg/k;

    invoke-virtual {p1}, LBg/b;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LBg/b;->K(J)V

    iget-object v0, p0, Lzg/k;->g:LBg/k;

    invoke-virtual {p1}, LBg/b;->s()Z

    move-result p1

    invoke-virtual {v0, p1}, LBg/b;->A(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lzg/k;->j:Z

    goto :goto_0

    :cond_3
    iput-boolean p2, p0, Lzg/k;->j:Z

    :goto_0
    iget-object p1, p0, Lzg/k;->g:LBg/k;

    invoke-virtual {p0, p1}, Lzg/k;->n(LBg/k;)Lzg/c;

    move-result-object p1

    iput-object p1, p0, Lzg/k;->c:Lzg/c;

    iput-boolean p2, p0, Lzg/k;->m:Z

    iget-object p1, p0, Lzg/k;->g:LBg/k;

    return-object p1
.end method

.method public final l(Lzg/j;LBg/k;)Lzg/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzg/j;",
            "LBg/k;",
            ")",
            "Lzg/b<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, LBg/b;->t()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lzg/e;

    iget-object v1, p0, Lzg/k;->e:[C

    iget-object v2, p0, Lzg/k;->k:LBg/m;

    invoke-virtual {v2}, LBg/m;->a()I

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lzg/e;-><init>(Lzg/j;LBg/k;[CI)V

    return-object v0

    :cond_0
    invoke-virtual {p2}, LBg/b;->g()LCg/e;

    move-result-object v0

    sget-object v1, LCg/e;->AES:LCg/e;

    if-ne v0, v1, :cond_1

    new-instance v0, Lzg/a;

    iget-object v5, p0, Lzg/k;->e:[C

    iget-object v1, p0, Lzg/k;->k:LBg/m;

    invoke-virtual {v1}, LBg/m;->a()I

    move-result v6

    iget-object v1, p0, Lzg/k;->k:LBg/m;

    invoke-virtual {v1}, LBg/m;->c()Z

    move-result v7

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lzg/a;-><init>(Lzg/j;LBg/k;[CIZ)V

    return-object v0

    :cond_1
    invoke-virtual {p2}, LBg/b;->g()LCg/e;

    move-result-object v0

    sget-object v1, LCg/e;->ZIP_STANDARD:LCg/e;

    if-ne v0, v1, :cond_2

    new-instance v0, Lzg/l;

    iget-object v5, p0, Lzg/k;->e:[C

    iget-object v1, p0, Lzg/k;->k:LBg/m;

    invoke-virtual {v1}, LBg/m;->a()I

    move-result v6

    iget-object v1, p0, Lzg/k;->k:LBg/m;

    invoke-virtual {v1}, LBg/m;->c()Z

    move-result v7

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lzg/l;-><init>(Lzg/j;LBg/k;[CIZ)V

    return-object v0

    :cond_2
    invoke-virtual {p2}, LBg/b;->j()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Entry [%s] Strong Encryption not supported"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$a;->UNSUPPORTED_ENCRYPTION:Lnet/lingala/zip4j/exception/ZipException$a;

    invoke-direct {p2, p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$a;)V

    throw p2
.end method

.method public final m(Lzg/b;LBg/k;)Lzg/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzg/b<",
            "*>;",
            "LBg/k;",
            ")",
            "Lzg/c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p2}, LFg/h;->i(LBg/b;)LCg/d;

    move-result-object p2

    sget-object v0, LCg/d;->DEFLATE:LCg/d;

    if-ne p2, v0, :cond_0

    new-instance p2, Lzg/d;

    iget-object v0, p0, Lzg/k;->k:LBg/m;

    invoke-virtual {v0}, LBg/m;->a()I

    move-result v0

    invoke-direct {p2, p1, v0}, Lzg/d;-><init>(Lzg/b;I)V

    return-object p2

    :cond_0
    new-instance p2, Lzg/i;

    invoke-direct {p2, p1}, Lzg/i;-><init>(Lzg/b;)V

    return-object p2
.end method

.method public final n(LBg/k;)Lzg/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lzg/j;

    iget-object v1, p0, Lzg/k;->b:Ljava/io/PushbackInputStream;

    invoke-virtual {p0, p1}, Lzg/k;->g(LBg/k;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lzg/j;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {p0, v0, p1}, Lzg/k;->l(Lzg/j;LBg/k;)Lzg/b;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lzg/k;->m(Lzg/b;LBg/k;)Lzg/c;

    move-result-object p1

    return-object p1
.end method

.method public final o(LBg/k;)Z
    .locals 1

    invoke-virtual {p1}, LBg/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LCg/e;->ZIP_STANDARD:LCg/e;

    invoke-virtual {p1}, LBg/b;->g()LCg/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final p(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public final q()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lzg/k;->g:LBg/k;

    invoke-virtual {v0}, LBg/b;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lzg/k;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzg/k;->d:Lyg/b;

    iget-object v1, p0, Lzg/k;->b:Ljava/io/PushbackInputStream;

    iget-object v2, p0, Lzg/k;->g:LBg/k;

    invoke-virtual {v2}, LBg/b;->h()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lzg/k;->d(Ljava/util/List;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lyg/b;->j(Ljava/io/InputStream;Z)LBg/e;

    move-result-object v0

    iget-object v1, p0, Lzg/k;->g:LBg/k;

    invoke-virtual {v0}, LBg/e;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, LBg/b;->w(J)V

    iget-object v1, p0, Lzg/k;->g:LBg/k;

    invoke-virtual {v0}, LBg/e;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, LBg/b;->K(J)V

    iget-object v1, p0, Lzg/k;->g:LBg/k;

    invoke-virtual {v0}, LBg/e;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, LBg/b;->y(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final r()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lzg/k;->i:[B

    if-nez v0, :cond_0

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lzg/k;->i:[B

    :cond_0
    :goto_0
    iget-object v0, p0, Lzg/k;->i:[B

    invoke-virtual {p0, v0}, Lzg/k;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzg/k;->m:Z

    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [B

    .line 2
    invoke-virtual {p0, v0}, Lzg/k;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 3
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lzg/k;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Lzg/k;->l:Z

    if-nez v0, :cond_5

    if-ltz p3, :cond_4

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    iget-object v0, p0, Lzg/k;->g:LBg/k;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    return v1

    .line 7
    :cond_1
    :try_start_0
    iget-object v0, p0, Lzg/k;->c:Lzg/c;

    invoke-virtual {v0, p1, p2, p3}, Lzg/c;->read([BII)I

    move-result p3

    if-ne p3, v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lzg/k;->e()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lzg/k;->h:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p3

    .line 10
    :goto_1
    iget-object p2, p0, Lzg/k;->g:LBg/k;

    invoke-virtual {p0, p2}, Lzg/k;->o(LBg/k;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$a;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$a;

    invoke-direct {p2, p3, p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lnet/lingala/zip4j/exception/ZipException$a;)V

    throw p2

    .line 12
    :cond_3
    throw p1

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative read length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lzg/k;->g:LBg/k;

    iget-object v0, p0, Lzg/k;->h:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    return-void
.end method

.method public t([C)V
    .locals 0

    iput-object p1, p0, Lzg/k;->e:[C

    return-void
.end method

.method public final u()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lzg/k;->g:LBg/k;

    invoke-virtual {v0}, LBg/b;->g()LCg/e;

    move-result-object v0

    sget-object v1, LCg/e;->AES:LCg/e;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lzg/k;->g:LBg/k;

    invoke-virtual {v0}, LBg/b;->c()LBg/a;

    move-result-object v0

    invoke-virtual {v0}, LBg/a;->d()LCg/b;

    move-result-object v0

    sget-object v1, LCg/b;->TWO:LCg/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lzg/k;->g:LBg/k;

    invoke-virtual {v0}, LBg/b;->f()J

    move-result-wide v0

    iget-object v2, p0, Lzg/k;->h:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$a;->CHECKSUM_MISMATCH:Lnet/lingala/zip4j/exception/ZipException$a;

    iget-object v1, p0, Lzg/k;->g:LBg/k;

    invoke-virtual {p0, v1}, Lzg/k;->o(LBg/k;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$a;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$a;

    :cond_1
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reached end of entry, but crc verification failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lzg/k;->g:LBg/k;

    invoke-virtual {v3}, LBg/b;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$a;)V

    throw v1

    :cond_2
    return-void
.end method

.method public final v(LBg/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LBg/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzg/k;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, LBg/b;->e()LCg/d;

    move-result-object v0

    sget-object v1, LCg/d;->STORE:LCg/d;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, LBg/b;->o()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid local file header for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LBg/b;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Uncompressed size has to be set for entry of compression type store which is not a directory"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
