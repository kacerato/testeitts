.class public abstract Lcom/android/tools/r8/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;I)Lcom/android/tools/r8/internal/F1;
    .locals 2

    and-int/lit8 p2, p2, 0x1f

    if-nez p2, :cond_0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p1, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    .line 4
    iget-wide v0, p1, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p1, v0

    shl-int/2addr p1, p2

    .line 5
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    int-to-long p1, p1

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/G1;->a(J)Lcom/android/tools/r8/internal/Im0;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->V()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->R()I

    move-result v0

    shl-int/2addr v0, p2

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->S()I

    move-result p1

    shl-int/2addr p1, p2

    const/4 v1, 0x1

    shl-int p2, v1, p2

    sub-int/2addr p2, v1

    or-int/2addr p1, p2

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/G1;->a(II)Lcom/android/tools/r8/internal/F1;

    move-result-object p0

    return-object p0

    .line 12
    :cond_2
    sget p0, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p0, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;
    .locals 2

    .line 13
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->Z()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 16
    :cond_1
    instance-of v0, p1, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    .line 18
    iget-wide v0, p1, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p1, v0

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p2

    .line 20
    iget-wide v0, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p2, v0

    and-int/2addr p1, p2

    int-to-long p1, p1

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/G1;->a(J)Lcom/android/tools/r8/internal/Im0;

    move-result-object p0

    return-object p0

    .line 22
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->V()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->V()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->R()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->R()I

    move-result v1

    and-int/2addr v0, v1

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->S()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->S()I

    move-result p2

    or-int/2addr p1, p2

    .line 26
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/G1;->a(II)Lcom/android/tools/r8/internal/F1;

    move-result-object p0

    return-object p0

    .line 27
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->V()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->S()I

    move-result p1

    .line 29
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/G1;->a(II)Lcom/android/tools/r8/internal/F1;

    move-result-object p0

    return-object p0

    .line 30
    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->V()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 31
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->S()I

    move-result p1

    .line 32
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/G1;->a(II)Lcom/android/tools/r8/internal/F1;

    move-result-object p0

    return-object p0

    .line 33
    :cond_5
    sget p0, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p0, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;I)Lcom/android/tools/r8/internal/F1;
    .locals 2

    and-int/lit8 p2, p2, 0x1f

    if-nez p2, :cond_0

    return-object p1

    .line 23
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    instance-of v0, p1, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    .line 26
    iget-wide v0, p1, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p1, v0

    shr-int/2addr p1, p2

    .line 27
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    int-to-long p1, p1

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/G1;->a(J)Lcom/android/tools/r8/internal/Im0;

    move-result-object p0

    return-object p0

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->V()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->R()I

    move-result v0

    shr-int/2addr v0, p2

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->S()I

    move-result p1

    shr-int/2addr p1, p2

    .line 33
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/G1;->a(II)Lcom/android/tools/r8/internal/F1;

    move-result-object p0

    return-object p0

    .line 34
    :cond_2
    sget p0, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p0, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->Z()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 3
    :cond_1
    instance-of v0, p1, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    .line 5
    iget-wide v0, p1, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p1, v0

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p2

    .line 7
    iget-wide v0, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p2, v0

    or-int/2addr p1, p2

    .line 8
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    int-to-long p1, p1

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/G1;->a(J)Lcom/android/tools/r8/internal/Im0;

    move-result-object p0

    return-object p0

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->V()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->V()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->R()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->R()I

    move-result v1

    or-int/2addr v0, v1

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->S()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->S()I

    move-result p2

    and-int/2addr p1, p2

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/G1;->a(II)Lcom/android/tools/r8/internal/F1;

    move-result-object p0

    return-object p0

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->V()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 17
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->R()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/G1;->a(II)Lcom/android/tools/r8/internal/F1;

    move-result-object p0

    return-object p0

    .line 19
    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->V()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->R()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/G1;->a(II)Lcom/android/tools/r8/internal/F1;

    move-result-object p0

    return-object p0

    .line 22
    :cond_5
    sget p0, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p0, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p0
.end method
