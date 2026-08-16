.class public Lyg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/nio/charset/Charset;)I
    .locals 0

    invoke-static {p1, p2}, Lyg/d;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    return p1
.end method

.method public final b(ZLBg/s;Ljava/nio/charset/Charset;)[B
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lyg/a;->e(ZLBg/s;)B

    move-result p1

    aput-byte p1, v0, v1

    if-eqz p3, :cond_0

    sget-object p1, LFg/d;->w:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    aget-byte p2, v0, p1

    const/4 p3, 0x3

    invoke-static {p2, p3}, LFg/a;->b(BI)B

    move-result p2

    aput-byte p2, v0, p1

    :cond_1
    return-object v0
.end method

.method public final c(LBg/s;)LBg/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, LBg/a;

    invoke-direct {v0}, LBg/a;-><init>()V

    invoke-virtual {p1}, LBg/s;->b()LCg/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, LBg/s;->b()LCg/b;

    move-result-object v1

    invoke-virtual {v0, v1}, LBg/a;->i(LCg/b;)V

    :cond_0
    invoke-virtual {p1}, LBg/s;->a()LCg/a;

    move-result-object v1

    sget-object v2, LCg/a;->KEY_STRENGTH_128:LCg/a;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v2}, LBg/a;->h(LCg/a;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LBg/s;->a()LCg/a;

    move-result-object v1

    sget-object v2, LCg/a;->KEY_STRENGTH_192:LCg/a;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, v2}, LBg/a;->h(LCg/a;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LBg/s;->a()LCg/a;

    move-result-object v1

    sget-object v2, LCg/a;->KEY_STRENGTH_256:LCg/a;

    if-ne v1, v2, :cond_3

    invoke-virtual {v0, v2}, LBg/a;->h(LCg/a;)V

    :goto_0
    invoke-virtual {p1}, LBg/s;->d()LCg/d;

    move-result-object p1

    invoke-virtual {v0, p1}, LBg/a;->j(LCg/d;)V

    return-object v0

    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid AES key strength"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(LBg/s;ZILjava/nio/charset/Charset;LFg/f;)LBg/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, LBg/j;

    invoke-direct {v0}, LBg/j;-><init>()V

    sget-object v1, Lyg/c;->CENTRAL_DIRECTORY:Lyg/c;

    invoke-virtual {v0, v1}, LBg/q;->b(Lyg/c;)V

    invoke-static {p1, p5}, LFg/i;->a(LBg/s;LFg/f;)I

    move-result p5

    invoke-virtual {v0, p5}, LBg/j;->b0(I)V

    invoke-static {p1}, LFg/i;->b(LBg/s;)Lyg/g;

    move-result-object p5

    invoke-virtual {p5}, Lyg/g;->a()I

    move-result p5

    invoke-virtual {v0, p5}, LBg/b;->L(I)V

    invoke-virtual {p1}, LBg/s;->o()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-virtual {p1}, LBg/s;->f()LCg/e;

    move-result-object p5

    sget-object v1, LCg/e;->AES:LCg/e;

    if-ne p5, v1, :cond_0

    sget-object p5, LCg/d;->AES_INTERNAL_ONLY:LCg/d;

    invoke-virtual {v0, p5}, LBg/b;->x(LCg/d;)V

    invoke-virtual {p0, p1}, Lyg/a;->c(LBg/s;)LBg/a;

    move-result-object p5

    invoke-virtual {v0, p5}, LBg/b;->v(LBg/a;)V

    invoke-virtual {v0}, LBg/b;->i()I

    move-result p5

    add-int/lit8 p5, p5, 0xb

    invoke-virtual {v0, p5}, LBg/b;->E(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LBg/s;->d()LCg/d;

    move-result-object p5

    invoke-virtual {v0, p5}, LBg/b;->x(LCg/d;)V

    :goto_0
    invoke-virtual {p1}, LBg/s;->o()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p1}, LBg/s;->f()LCg/e;

    move-result-object p5

    if-eqz p5, :cond_1

    invoke-virtual {p1}, LBg/s;->f()LCg/e;

    move-result-object p5

    sget-object v1, LCg/e;->NONE:LCg/e;

    if-eq p5, v1, :cond_1

    const/4 p5, 0x1

    invoke-virtual {v0, p5}, LBg/b;->B(Z)V

    invoke-virtual {p1}, LBg/s;->f()LCg/e;

    move-result-object p5

    invoke-virtual {v0, p5}, LBg/b;->C(LCg/e;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Encryption method has to be set when encryptFiles flag is set in zip parameters"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-virtual {p1}, LBg/s;->k()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lyg/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, LBg/b;->F(Ljava/lang/String;)V

    invoke-virtual {p0, p5, p4}, Lyg/a;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)I

    move-result v1

    invoke-virtual {v0, v1}, LBg/b;->G(I)V

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    invoke-virtual {v0, p3}, LBg/j;->V(I)V

    invoke-virtual {p1}, LBg/s;->l()J

    move-result-wide p2

    invoke-static {p2, p3}, LFg/h;->h(J)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, LBg/b;->J(J)V

    invoke-static {p5}, LFg/c;->A(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {v0, p2}, LBg/b;->A(Z)V

    invoke-static {p2}, LFg/c;->i(Z)[B

    move-result-object p2

    invoke-virtual {v0, p2}, LBg/j;->W([B)V

    invoke-virtual {p1}, LBg/s;->u()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, LBg/s;->h()J

    move-result-wide p2

    const-wide/16 v1, -0x1

    cmp-long p2, p2, v1

    if-nez p2, :cond_4

    const-wide/16 p2, 0x0

    invoke-virtual {v0, p2, p3}, LBg/b;->K(J)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, LBg/s;->h()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, LBg/b;->K(J)V

    :goto_3
    invoke-virtual {p1}, LBg/s;->o()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, LBg/s;->f()LCg/e;

    move-result-object p2

    sget-object p3, LCg/e;->ZIP_STANDARD:LCg/e;

    if-ne p2, p3, :cond_5

    invoke-virtual {p1}, LBg/s;->g()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, LBg/b;->y(J)V

    :cond_5
    invoke-virtual {v0}, LBg/b;->t()Z

    move-result p2

    invoke-virtual {p0, p2, p1, p4}, Lyg/a;->b(ZLBg/s;Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, LBg/b;->I([B)V

    invoke-virtual {p1}, LBg/s;->u()Z

    move-result p2

    invoke-virtual {v0, p2}, LBg/b;->z(Z)V

    invoke-virtual {p1}, LBg/s;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LBg/j;->X(Ljava/lang/String;)V

    return-object v0
.end method

.method public final e(ZLBg/s;)B
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {v0, v0}, LFg/a;->b(BI)B

    move-result v0

    :cond_0
    sget-object p1, LCg/d;->DEFLATE:LCg/d;

    invoke-virtual {p2}, LBg/s;->d()LCg/d;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, LCg/c;->NORMAL:LCg/c;

    invoke-virtual {p2}, LBg/s;->c()LCg/c;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-static {v0, v2}, LFg/a;->c(BI)B

    move-result p1

    invoke-static {p1, v1}, LFg/a;->c(BI)B

    move-result v0

    goto :goto_0

    :cond_1
    sget-object p1, LCg/c;->MAXIMUM:LCg/c;

    invoke-virtual {p2}, LBg/s;->c()LCg/c;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0, v2}, LFg/a;->b(BI)B

    move-result p1

    invoke-static {p1, v1}, LFg/a;->c(BI)B

    move-result v0

    goto :goto_0

    :cond_2
    sget-object p1, LCg/c;->FAST:LCg/c;

    invoke-virtual {p2}, LBg/s;->c()LCg/c;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0, v2}, LFg/a;->c(BI)B

    move-result p1

    invoke-static {p1, v1}, LFg/a;->b(BI)B

    move-result v0

    goto :goto_0

    :cond_3
    sget-object p1, LCg/c;->FASTEST:LCg/c;

    invoke-virtual {p2}, LBg/s;->c()LCg/c;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, LCg/c;->ULTRA:LCg/c;

    invoke-virtual {p2}, LBg/s;->c()LCg/c;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-static {v0, v2}, LFg/a;->b(BI)B

    move-result p1

    invoke-static {p1, v1}, LFg/a;->b(BI)B

    move-result v0

    :cond_5
    :goto_0
    invoke-virtual {p2}, LBg/s;->u()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x3

    invoke-static {v0, p1}, LFg/a;->b(BI)B

    move-result v0

    :cond_6
    return v0
.end method

.method public f(LBg/j;)LBg/k;
    .locals 3

    new-instance v0, LBg/k;

    invoke-direct {v0}, LBg/k;-><init>()V

    sget-object v1, Lyg/c;->LOCAL_FILE_HEADER:Lyg/c;

    invoke-virtual {v0, v1}, LBg/q;->b(Lyg/c;)V

    invoke-virtual {p1}, LBg/b;->p()I

    move-result v1

    invoke-virtual {v0, v1}, LBg/b;->L(I)V

    invoke-virtual {p1}, LBg/b;->e()LCg/d;

    move-result-object v1

    invoke-virtual {v0, v1}, LBg/b;->x(LCg/d;)V

    invoke-virtual {p1}, LBg/b;->m()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LBg/b;->J(J)V

    invoke-virtual {p1}, LBg/b;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LBg/b;->K(J)V

    invoke-virtual {p1}, LBg/b;->k()I

    move-result v1

    invoke-virtual {v0, v1}, LBg/b;->G(I)V

    invoke-virtual {p1}, LBg/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LBg/b;->F(Ljava/lang/String;)V

    invoke-virtual {p1}, LBg/b;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, LBg/b;->B(Z)V

    invoke-virtual {p1}, LBg/b;->g()LCg/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LBg/b;->C(LCg/e;)V

    invoke-virtual {p1}, LBg/b;->c()LBg/a;

    move-result-object v1

    invoke-virtual {v0, v1}, LBg/b;->v(LBg/a;)V

    invoke-virtual {p1}, LBg/b;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LBg/b;->y(J)V

    invoke-virtual {p1}, LBg/b;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LBg/b;->w(J)V

    invoke-virtual {p1}, LBg/b;->l()[B

    move-result-object v1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v1}, LBg/b;->I([B)V

    invoke-virtual {p1}, LBg/b;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, LBg/b;->z(Z)V

    invoke-virtual {p1}, LBg/b;->i()I

    move-result p1

    invoke-virtual {v0, p1}, LBg/b;->E(I)V

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, LFg/h;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "fileNameInZip is null or empty"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
