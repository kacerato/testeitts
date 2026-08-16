.class public Ltf/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(SS)S
    .locals 2
    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    const v0, 0xffff

    and-int v1, p0, v0

    and-int/2addr v0, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method public static b(II)I
    .locals 1
    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method public static final c(BB)B
    .locals 2
    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    and-int/lit16 v0, p0, 0xff

    and-int/lit16 v1, p1, 0xff

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method public static final varargs d(I[I)I
    .locals 3
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    .annotation build Lnf/y;
    .end annotation

    const-string v0, "$v$c$kotlin-UIntArray$-other$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lnf/C0;->v([I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {p1, v1}, Lnf/C0;->t([II)I

    move-result v2

    invoke-static {p0, v2}, Ltf/n;->b(II)I

    move-result p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static final varargs e(J[J)J
    .locals 4
    .param p2    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    .annotation build Lnf/y;
    .end annotation

    const-string v0, "$v$c$kotlin-ULongArray$-other$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lnf/G0;->t([J)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {p2, v1}, Lnf/G0;->r([JI)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Ltf/n;->j(JJ)J

    move-result-wide p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide p0
.end method

.method public static final f(SSS)S
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    invoke-static {p1, p2}, Ltf/n;->a(SS)S

    move-result p1

    invoke-static {p0, p1}, Ltf/n;->a(SS)S

    move-result p0

    return p0
.end method

.method public static final g(III)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    invoke-static {p1, p2}, Ltf/n;->b(II)I

    move-result p1

    invoke-static {p0, p1}, Ltf/n;->b(II)I

    move-result p0

    return p0
.end method

.method public static final varargs h(B[B)B
    .locals 3
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    .annotation build Lnf/y;
    .end annotation

    const-string v0, "$v$c$kotlin-UByteArray$-other$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lnf/y0;->t([B)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {p1, v1}, Lnf/y0;->r([BI)B

    move-result v2

    invoke-static {p0, v2}, Ltf/n;->c(BB)B

    move-result p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static final i(BBB)B
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    invoke-static {p1, p2}, Ltf/n;->c(BB)B

    move-result p1

    invoke-static {p0, p1}, Ltf/n;->c(BB)B

    move-result p0

    return p0
.end method

.method public static j(JJ)J
    .locals 1
    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide p0, p2

    :goto_0
    return-wide p0
.end method

.method public static final k(JJJ)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    invoke-static {p2, p3, p4, p5}, Ltf/n;->j(JJ)J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ltf/n;->j(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final varargs l(S[S)S
    .locals 3
    .param p1    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    .annotation build Lnf/y;
    .end annotation

    const-string v0, "$v$c$kotlin-UShortArray$-other$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lnf/M0;->t([S)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {p1, v1}, Lnf/M0;->r([SI)S

    move-result v2

    invoke-static {p0, v2}, Ltf/n;->a(SS)S

    move-result p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static final m(SS)S
    .locals 2
    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    const v0, 0xffff

    and-int v1, p0, v0

    and-int/2addr v0, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method public static n(II)I
    .locals 1
    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method public static final o(BB)B
    .locals 2
    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    and-int/lit16 v0, p0, 0xff

    and-int/lit16 v1, p1, 0xff

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method public static final varargs p(I[I)I
    .locals 3
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    .annotation build Lnf/y;
    .end annotation

    const-string v0, "$v$c$kotlin-UIntArray$-other$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lnf/C0;->v([I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {p1, v1}, Lnf/C0;->t([II)I

    move-result v2

    invoke-static {p0, v2}, Ltf/n;->n(II)I

    move-result p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static final varargs q(J[J)J
    .locals 4
    .param p2    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    .annotation build Lnf/y;
    .end annotation

    const-string v0, "$v$c$kotlin-ULongArray$-other$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lnf/G0;->t([J)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {p2, v1}, Lnf/G0;->r([JI)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Ltf/n;->v(JJ)J

    move-result-wide p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide p0
.end method

.method public static final r(SSS)S
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    invoke-static {p1, p2}, Ltf/n;->m(SS)S

    move-result p1

    invoke-static {p0, p1}, Ltf/n;->m(SS)S

    move-result p0

    return p0
.end method

.method public static final s(III)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    invoke-static {p1, p2}, Ltf/n;->n(II)I

    move-result p1

    invoke-static {p0, p1}, Ltf/n;->n(II)I

    move-result p0

    return p0
.end method

.method public static final varargs t(B[B)B
    .locals 3
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    .annotation build Lnf/y;
    .end annotation

    const-string v0, "$v$c$kotlin-UByteArray$-other$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lnf/y0;->t([B)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {p1, v1}, Lnf/y0;->r([BI)B

    move-result v2

    invoke-static {p0, v2}, Ltf/n;->o(BB)B

    move-result p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static final u(BBB)B
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    invoke-static {p1, p2}, Ltf/n;->o(BB)B

    move-result p1

    invoke-static {p0, p1}, Ltf/n;->o(BB)B

    move-result p0

    return p0
.end method

.method public static v(JJ)J
    .locals 1
    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide p0, p2

    :goto_0
    return-wide p0
.end method

.method public static final w(JJJ)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    invoke-static {p2, p3, p4, p5}, Ltf/n;->v(JJ)J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ltf/n;->v(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final varargs x(S[S)S
    .locals 3
    .param p1    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    .annotation build Lnf/y;
    .end annotation

    const-string v0, "$v$c$kotlin-UShortArray$-other$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lnf/M0;->t([S)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {p1, v1}, Lnf/M0;->r([SI)S

    move-result v2

    invoke-static {p0, v2}, Ltf/n;->m(SS)S

    move-result p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method
