.class public final LTf/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nURandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 URandom.kt\nkotlin/random/URandomKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,149:1\n1#2:150\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nURandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 URandom.kt\nkotlin/random/URandomKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,149:1\n1#2:150\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(II)V
    .locals 1

    invoke-static {p1, p0}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lnf/B0;->e(I)Lnf/B0;

    move-result-object p0

    invoke-static {p1}, Lnf/B0;->e(I)Lnf/B0;

    move-result-object p1

    invoke-static {p0, p1}, LTf/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final b(JJ)V
    .locals 1

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lnf/F0;->b(J)Lnf/F0;

    move-result-object p0

    invoke-static {p2, p3}, Lnf/F0;->b(J)Lnf/F0;

    move-result-object p1

    invoke-static {p0, p1}, LTf/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final c(LTf/f;I)[B
    .locals 1
    .param p0    # LTf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    .annotation build Lnf/y;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LTf/f;->d(I)[B

    move-result-object p0

    invoke-static {p0}, Lnf/y0;->k([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static final d(LTf/f;[B)[B
    .locals 1
    .param p0    # LTf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lnf/D;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    .annotation build Lnf/y;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$nextUBytes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$v$c$kotlin-UByteArray$-array$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LTf/f;->e([B)[B

    return-object p1
.end method

.method public static final e(LTf/f;[BII)[B
    .locals 1
    .param p0    # LTf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lnf/D;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    .annotation build Lnf/y;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$nextUBytes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$v$c$kotlin-UByteArray$-array$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, LTf/f;->f([BII)[B

    return-object p1
.end method

.method public static synthetic f(LTf/f;[BIIILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lnf/y0;->t([B)I

    move-result p3

    :cond_1
    invoke-static {p0, p1, p2, p3}, LTf/h;->e(LTf/f;[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static final g(LTf/f;)I
    .locals 1
    .param p0    # LTf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LTf/f;->l()I

    move-result p0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final h(LTf/f;LVf/x;)I
    .locals 2
    .param p0    # LTf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LVf/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LVf/x;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, LVf/v;->d()I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p1}, LVf/v;->c()I

    move-result v0

    invoke-virtual {p1}, LVf/v;->d()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    invoke-static {p0, v0, p1}, LTf/h;->i(LTf/f;II)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LVf/v;->c()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, LVf/v;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lnf/B0;->o(I)I

    move-result v0

    invoke-virtual {p1}, LVf/v;->d()I

    move-result p1

    invoke-static {p0, v0, p1}, LTf/h;->i(LTf/f;II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, LTf/h;->g(LTf/f;)I

    move-result p0

    :goto_0
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get random in empty range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final i(LTf/f;II)I
    .locals 1
    .param p0    # LTf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "$this$nextUInt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, LTf/h;->a(II)V

    const/high16 v0, -0x80000000

    xor-int/2addr p1, v0

    xor-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, LTf/f;->n(II)I

    move-result p0

    xor-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final j(LTf/f;I)I
    .locals 1
    .param p0    # LTf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "$this$nextUInt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, LTf/h;->i(LTf/f;II)I

    move-result p0

    return p0
.end method

.method public static final k(LTf/f;)J
    .locals 2
    .param p0    # LTf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LTf/f;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final l(LTf/f;LVf/A;)J
    .locals 10
    .param p0    # LTf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LVf/A;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LVf/A;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, LVf/y;->d()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    const-wide v1, 0xffffffffL

    const/4 v3, 0x1

    if-gez v0, :cond_0

    invoke-virtual {p1}, LVf/y;->c()J

    move-result-wide v4

    invoke-virtual {p1}, LVf/y;->d()J

    move-result-wide v6

    int-to-long v8, v3

    and-long v0, v8, v1

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {p0, v4, v5, v0, v1}, LTf/h;->n(LTf/f;JJ)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LVf/y;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, LVf/y;->c()J

    move-result-wide v4

    int-to-long v6, v3

    and-long v0, v6, v1

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v2

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Lnf/F0;->i(J)J

    move-result-wide v2

    invoke-virtual {p1}, LVf/y;->d()J

    move-result-wide v4

    invoke-static {p0, v2, v3, v4, v5}, LTf/h;->n(LTf/f;JJ)J

    move-result-wide p0

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    add-long/2addr p0, v0

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, LTf/h;->k(LTf/f;)J

    move-result-wide p0

    :goto_0
    return-wide p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get random in empty range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final m(LTf/f;J)J
    .locals 2
    .param p0    # LTf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "$this$nextULong"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1, p2}, LTf/h;->n(LTf/f;JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final n(LTf/f;JJ)J
    .locals 2
    .param p0    # LTf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "$this$nextULong"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, LTf/h;->b(JJ)V

    const-wide/high16 v0, -0x8000000000000000L

    xor-long/2addr p1, v0

    xor-long/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3, p4}, LTf/f;->q(JJ)J

    move-result-wide p0

    xor-long/2addr p0, v0

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method
