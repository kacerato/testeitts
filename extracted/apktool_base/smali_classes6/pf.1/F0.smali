.class public final Lpf/F0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a([JII)I
    .locals 6
    .annotation build Lnf/y;
    .end annotation

    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0}, Lnf/G0;->r([JI)J

    move-result-wide v0

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_3

    :goto_1
    invoke-static {p0, p1}, Lnf/G0;->r([JI)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v2

    if-gez v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-static {p0, p2}, Lnf/G0;->r([JI)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v2

    if-lez v2, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_2
    if-gt p1, p2, :cond_0

    invoke-static {p0, p1}, Lnf/G0;->r([JI)J

    move-result-wide v2

    invoke-static {p0, p2}, Lnf/G0;->r([JI)J

    move-result-wide v4

    invoke-static {p0, p1, v4, v5}, Lnf/G0;->y([JIJ)V

    invoke-static {p0, p2, v2, v3}, Lnf/G0;->y([JIJ)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method public static final b([BII)I
    .locals 3
    .annotation build Lnf/y;
    .end annotation

    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0}, Lnf/y0;->r([BI)B

    move-result v0

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_3

    :goto_1
    invoke-static {p0, p1}, Lnf/y0;->r([BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v0, 0xff

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v1

    if-gez v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-static {p0, p2}, Lnf/y0;->r([BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_2
    if-gt p1, p2, :cond_0

    invoke-static {p0, p1}, Lnf/y0;->r([BI)B

    move-result v1

    invoke-static {p0, p2}, Lnf/y0;->r([BI)B

    move-result v2

    invoke-static {p0, p1, v2}, Lnf/y0;->y([BIB)V

    invoke-static {p0, p2, v1}, Lnf/y0;->y([BIB)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method public static final c([SII)I
    .locals 4
    .annotation build Lnf/y;
    .end annotation

    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0}, Lnf/M0;->r([SI)S

    move-result v0

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_3

    :goto_1
    invoke-static {p0, p1}, Lnf/M0;->r([SI)S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    and-int v3, v0, v2

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v1

    if-gez v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-static {p0, p2}, Lnf/M0;->r([SI)S

    move-result v1

    and-int/2addr v1, v2

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_2
    if-gt p1, p2, :cond_0

    invoke-static {p0, p1}, Lnf/M0;->r([SI)S

    move-result v1

    invoke-static {p0, p2}, Lnf/M0;->r([SI)S

    move-result v2

    invoke-static {p0, p1, v2}, Lnf/M0;->y([SIS)V

    invoke-static {p0, p2, v1}, Lnf/M0;->y([SIS)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method public static final d([III)I
    .locals 3
    .annotation build Lnf/y;
    .end annotation

    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0}, Lnf/C0;->t([II)I

    move-result v0

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_3

    :goto_1
    invoke-static {p0, p1}, Lnf/C0;->t([II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v1

    if-gez v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-static {p0, p2}, Lnf/C0;->t([II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_2
    if-gt p1, p2, :cond_0

    invoke-static {p0, p1}, Lnf/C0;->t([II)I

    move-result v1

    invoke-static {p0, p2}, Lnf/C0;->t([II)I

    move-result v2

    invoke-static {p0, p1, v2}, Lnf/C0;->B([III)V

    invoke-static {p0, p2, v1}, Lnf/C0;->B([III)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method public static final e([JII)V
    .locals 2
    .annotation build Lnf/y;
    .end annotation

    invoke-static {p0, p1, p2}, Lpf/F0;->a([JII)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_0

    invoke-static {p0, p1, v1}, Lpf/F0;->e([JII)V

    :cond_0
    if-ge v0, p2, :cond_1

    invoke-static {p0, v0, p2}, Lpf/F0;->e([JII)V

    :cond_1
    return-void
.end method

.method public static final f([BII)V
    .locals 2
    .annotation build Lnf/y;
    .end annotation

    invoke-static {p0, p1, p2}, Lpf/F0;->b([BII)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_0

    invoke-static {p0, p1, v1}, Lpf/F0;->f([BII)V

    :cond_0
    if-ge v0, p2, :cond_1

    invoke-static {p0, v0, p2}, Lpf/F0;->f([BII)V

    :cond_1
    return-void
.end method

.method public static final g([SII)V
    .locals 2
    .annotation build Lnf/y;
    .end annotation

    invoke-static {p0, p1, p2}, Lpf/F0;->c([SII)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_0

    invoke-static {p0, p1, v1}, Lpf/F0;->g([SII)V

    :cond_0
    if-ge v0, p2, :cond_1

    invoke-static {p0, v0, p2}, Lpf/F0;->g([SII)V

    :cond_1
    return-void
.end method

.method public static final h([III)V
    .locals 2
    .annotation build Lnf/y;
    .end annotation

    invoke-static {p0, p1, p2}, Lpf/F0;->d([III)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_0

    invoke-static {p0, p1, v1}, Lpf/F0;->h([III)V

    :cond_0
    if-ge v0, p2, :cond_1

    invoke-static {p0, v0, p2}, Lpf/F0;->h([III)V

    :cond_1
    return-void
.end method

.method public static final i([JII)V
    .locals 1
    .param p0    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/y;
    .end annotation

    const-string v0, "$v$c$kotlin-ULongArray$-array$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    invoke-static {p0, p1, p2}, Lpf/F0;->e([JII)V

    return-void
.end method

.method public static final j([BII)V
    .locals 1
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/y;
    .end annotation

    const-string v0, "$v$c$kotlin-UByteArray$-array$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    invoke-static {p0, p1, p2}, Lpf/F0;->f([BII)V

    return-void
.end method

.method public static final k([SII)V
    .locals 1
    .param p0    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/y;
    .end annotation

    const-string v0, "$v$c$kotlin-UShortArray$-array$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    invoke-static {p0, p1, p2}, Lpf/F0;->g([SII)V

    return-void
.end method

.method public static final l([III)V
    .locals 1
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/y;
    .end annotation

    const-string v0, "$v$c$kotlin-UIntArray$-array$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    invoke-static {p0, p1, p2}, Lpf/F0;->h([III)V

    return-void
.end method
