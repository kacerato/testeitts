.class public final Lcom/android/tools/r8/internal/ze;
.super Lcom/android/tools/r8/internal/Be;
.source "SourceFile"


# instance fields
.field public final c:Ljava/nio/ByteBuffer;

.field public final d:J

.field public e:J

.field public f:J

.field public final g:J

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 4

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Be;-><init>()V

    const p2, 0x7fffffff

    iput p2, p0, Lcom/android/tools/r8/internal/ze;->j:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/ze;->c:Ljava/nio/ByteBuffer;

    sget-object p2, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v0, Lcom/android/tools/r8/internal/bw0;->g:J

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/tools/r8/internal/aw0;->c(Ljava/lang/Object;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/tools/r8/internal/ze;->d:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p2

    int-to-long v2, p2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/tools/r8/internal/ze;->e:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/tools/r8/internal/ze;->f:J

    iput-wide v0, p0, Lcom/android/tools/r8/internal/ze;->g:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;
    .locals 2

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->l()I

    move-result v0

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Be;->a()V

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/ze;->d(I)I

    move-result v0

    .line 24
    iget v1, p0, Lcom/android/tools/r8/internal/Be;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/Be;->a:I

    .line 25
    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/z50;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/kW;

    const/4 p2, 0x0

    .line 26
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/ze;->a(I)V

    .line 27
    iget p2, p0, Lcom/android/tools/r8/internal/Be;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/android/tools/r8/internal/Be;->a:I

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->b()I

    move-result p2

    if-nez p2, :cond_0

    .line 29
    iput v0, p0, Lcom/android/tools/r8/internal/ze;->j:I

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->y()V

    return-object p1

    .line 31
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/MJ;

    const-string p2, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1
.end method

.method public final a(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/ze;->i:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/MJ;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1
.end method

.method public final a(ILcom/android/tools/r8/internal/jW;Lcom/android/tools/r8/internal/zv;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Be;->a()V

    .line 5
    iget v0, p0, Lcom/android/tools/r8/internal/Be;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/Be;->a:I

    .line 6
    invoke-interface {p2, p0, p3}, Lcom/android/tools/r8/internal/jW;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jW;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x4

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ze;->a(I)V

    .line 8
    iget p1, p0, Lcom/android/tools/r8/internal/Be;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/Be;->a:I

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/eW;Lcom/android/tools/r8/internal/zv;)V
    .locals 2

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->l()I

    move-result v0

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Be;->a()V

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/ze;->d(I)I

    move-result v0

    .line 12
    iget v1, p0, Lcom/android/tools/r8/internal/Be;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/Be;->a:I

    .line 13
    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/jW;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jW;

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ze;->a(I)V

    .line 15
    iget p1, p0, Lcom/android/tools/r8/internal/Be;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/Be;->a:I

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->b()I

    move-result p1

    if-nez p1, :cond_0

    .line 17
    iput v0, p0, Lcom/android/tools/r8/internal/ze;->j:I

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->y()V

    return-void

    .line 19
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/MJ;

    const-string p2, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1
.end method

.method public final b()I
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/ze;->j:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-wide v1, p0, Lcom/android/tools/r8/internal/ze;->f:J

    iget-wide v3, p0, Lcom/android/tools/r8/internal/ze;->g:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/android/tools/r8/internal/ze;->j:I

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->y()V

    return-void
.end method

.method public final c()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->x()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d(I)I
    .locals 4

    if-ltz p1, :cond_1

    .line 13
    iget-wide v0, p0, Lcom/android/tools/r8/internal/ze;->f:J

    iget-wide v2, p0, Lcom/android/tools/r8/internal/ze;->g:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr p1, v0

    .line 14
    iget v0, p0, Lcom/android/tools/r8/internal/ze;->j:I

    if-gt p1, v0, :cond_0

    .line 15
    iput p1, p0, Lcom/android/tools/r8/internal/ze;->j:I

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->y()V

    return v0

    .line 17
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/MJ;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1

    .line 19
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/MJ;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1
.end method

.method public final d()Lcom/android/tools/r8/internal/i8;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->l()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-wide v1, p0, Lcom/android/tools/r8/internal/ze;->e:J

    iget-wide v4, p0, Lcom/android/tools/r8/internal/ze;->f:J

    sub-long/2addr v1, v4

    long-to-int v1, v1

    if-gt v0, v1, :cond_0

    .line 3
    new-array v1, v0, [B

    int-to-long v9, v0

    .line 4
    sget-object v3, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    move-object v6, v1

    move-wide v7, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/tools/r8/internal/aw0;->a(J[BJ)V

    .line 5
    iget-wide v2, p0, Lcom/android/tools/r8/internal/ze;->f:J

    add-long/2addr v2, v9

    iput-wide v2, p0, Lcom/android/tools/r8/internal/ze;->f:J

    .line 6
    sget-object v0, Lcom/android/tools/r8/internal/m8;->c:Lcom/android/tools/r8/internal/i8;

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/i8;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/i8;-><init>([B)V

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/m8;->c:Lcom/android/tools/r8/internal/i8;

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/MJ;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 10
    throw v0

    .line 11
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/MJ;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 12
    throw v0
.end method

.method public final e()D
    .locals 2

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->w()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final e(I)Z
    .locals 10

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    .line 1
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/ze;->f(I)V

    return v2

    .line 2
    :cond_0
    sget p1, Lcom/android/tools/r8/internal/MJ;->c:I

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/KJ;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/KJ;-><init>()V

    .line 4
    throw p1

    :cond_1
    return v1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->s()I

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/ze;->e(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ze;->a(I)V

    return v2

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->l()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ze;->f(I)V

    return v2

    :cond_5
    const/16 p1, 0x8

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ze;->f(I)V

    return v2

    .line 10
    :cond_6
    iget-wide v3, p0, Lcom/android/tools/r8/internal/ze;->e:J

    iget-wide v5, p0, Lcom/android/tools/r8/internal/ze;->f:J

    sub-long/2addr v3, v5

    long-to-int p1, v3

    const-string v0, "CodedInputStream encountered a malformed varint."

    const-wide/16 v3, 0x1

    const/16 v5, 0xa

    if-lt p1, v5, :cond_9

    :goto_0
    if-ge v1, v5, :cond_8

    .line 11
    iget-wide v6, p0, Lcom/android/tools/r8/internal/ze;->f:J

    add-long v8, v6, v3

    iput-wide v8, p0, Lcom/android/tools/r8/internal/ze;->f:J

    .line 12
    sget-object p1, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result p1

    if-ltz p1, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_8
    new-instance p1, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 14
    throw p1

    :cond_9
    :goto_1
    if-ge v1, v5, :cond_c

    .line 15
    iget-wide v6, p0, Lcom/android/tools/r8/internal/ze;->f:J

    iget-wide v8, p0, Lcom/android/tools/r8/internal/ze;->e:J

    cmp-long p1, v6, v8

    if-eqz p1, :cond_b

    add-long v8, v6, v3

    .line 16
    iput-wide v8, p0, Lcom/android/tools/r8/internal/ze;->f:J

    .line 17
    sget-object p1, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result p1

    if-ltz p1, :cond_a

    :goto_2
    return v2

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 18
    :cond_b
    new-instance p1, Lcom/android/tools/r8/internal/MJ;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 19
    throw p1

    .line 20
    :cond_c
    new-instance p1, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 21
    throw p1
.end method

.method public final f()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->l()I

    move-result v0

    return v0
.end method

.method public final f(I)V
    .locals 4

    if-ltz p1, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/android/tools/r8/internal/ze;->e:J

    iget-wide v2, p0, Lcom/android/tools/r8/internal/ze;->f:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-gt p1, v0, :cond_0

    int-to-long v0, p1

    add-long/2addr v2, v0

    .line 3
    iput-wide v2, p0, Lcom/android/tools/r8/internal/ze;->f:J

    return-void

    :cond_0
    if-gez p1, :cond_1

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/MJ;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 5
    throw p1

    .line 6
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/MJ;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 7
    throw p1
.end method

.method public final g()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->v()I

    move-result v0

    return v0
.end method

.method public final h()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final j()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->l()I

    move-result v0

    return v0
.end method

.method public final k()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public final l()I
    .locals 12

    iget-wide v0, p0, Lcom/android/tools/r8/internal/ze;->f:J

    iget-wide v2, p0, Lcom/android/tools/r8/internal/ze;->e:J

    cmp-long v2, v2, v0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    add-long v5, v0, v3

    sget-object v2, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v7

    if-ltz v7, :cond_1

    iput-wide v5, p0, Lcom/android/tools/r8/internal/ze;->f:J

    return v7

    :cond_1
    iget-wide v8, p0, Lcom/android/tools/r8/internal/ze;->e:J

    sub-long/2addr v8, v5

    const-wide/16 v10, 0x9

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v8, 0x2

    add-long/2addr v8, v0

    invoke-virtual {v2, v5, v6}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v5

    shl-int/lit8 v5, v5, 0x7

    xor-int/2addr v5, v7

    if-gez v5, :cond_3

    xor-int/lit8 v0, v5, -0x80

    goto/16 :goto_3

    :cond_3
    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    invoke-virtual {v2, v8, v9}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v8

    shl-int/lit8 v8, v8, 0xe

    xor-int/2addr v5, v8

    if-ltz v5, :cond_4

    xor-int/lit16 v0, v5, 0x3f80

    move-wide v8, v6

    goto/16 :goto_3

    :cond_4
    const-wide/16 v8, 0x4

    add-long/2addr v8, v0

    invoke-virtual {v2, v6, v7}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v6

    shl-int/lit8 v6, v6, 0x15

    xor-int/2addr v5, v6

    if-gez v5, :cond_5

    const v0, -0x1fc080

    xor-int/2addr v0, v5

    goto/16 :goto_3

    :cond_5
    const-wide/16 v6, 0x5

    add-long/2addr v6, v0

    invoke-virtual {v2, v8, v9}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v8

    shl-int/lit8 v9, v8, 0x1c

    xor-int/2addr v5, v9

    const v9, 0xfe03f80

    xor-int/2addr v5, v9

    if-gez v8, :cond_b

    const-wide/16 v8, 0x6

    add-long/2addr v8, v0

    invoke-virtual {v2, v6, v7}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v6

    if-gez v6, :cond_c

    const-wide/16 v6, 0x7

    add-long/2addr v6, v0

    invoke-virtual {v2, v8, v9}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v8

    if-gez v8, :cond_b

    const-wide/16 v8, 0x8

    add-long/2addr v8, v0

    invoke-virtual {v2, v6, v7}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v6

    if-gez v6, :cond_c

    add-long/2addr v10, v0

    invoke-virtual {v2, v8, v9}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v6

    if-gez v6, :cond_a

    const-wide/16 v6, 0xa

    add-long/2addr v0, v6

    invoke-virtual {v2, v10, v11}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v2

    if-gez v2, :cond_9

    :goto_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    const/16 v5, 0x40

    if-ge v2, v5, :cond_8

    iget-wide v5, p0, Lcom/android/tools/r8/internal/ze;->f:J

    iget-wide v7, p0, Lcom/android/tools/r8/internal/ze;->e:J

    cmp-long v7, v5, v7

    if-eqz v7, :cond_7

    add-long v7, v5, v3

    iput-wide v7, p0, Lcom/android/tools/r8/internal/ze;->f:J

    sget-object v7, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    invoke-virtual {v7, v5, v6}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v5

    and-int/lit8 v6, v5, 0x7f

    int-to-long v6, v6

    shl-long/2addr v6, v2

    or-long/2addr v0, v6

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_6

    long-to-int v0, v0

    return v0

    :cond_6
    add-int/lit8 v2, v2, 0x7

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/android/tools/r8/internal/MJ;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/android/tools/r8/internal/MJ;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-wide v8, v0

    goto :goto_2

    :cond_a
    move-wide v8, v10

    goto :goto_2

    :cond_b
    move-wide v8, v6

    :cond_c
    :goto_2
    move v0, v5

    :goto_3
    iput-wide v8, p0, Lcom/android/tools/r8/internal/ze;->f:J

    return v0
.end method

.method public final m()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->v()I

    move-result v0

    return v0
.end method

.method public final n()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public final o()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->l()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Be;->b(I)I

    move-result v0

    return v0
.end method

.method public final p()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->x()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Be;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final q()Ljava/lang/String;
    .locals 11

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->l()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/android/tools/r8/internal/ze;->e:J

    iget-wide v4, p0, Lcom/android/tools/r8/internal/ze;->f:J

    sub-long/2addr v1, v4

    long-to-int v1, v1

    if-gt v0, v1, :cond_0

    new-array v1, v0, [B

    int-to-long v9, v0

    sget-object v3, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    move-object v6, v1

    move-wide v7, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/tools/r8/internal/aw0;->a(J[BJ)V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/android/tools/r8/internal/YI;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-wide v1, p0, Lcom/android/tools/r8/internal/ze;->f:J

    add-long/2addr v1, v9

    iput-wide v1, p0, Lcom/android/tools/r8/internal/ze;->f:J

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    new-instance v0, Lcom/android/tools/r8/internal/MJ;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/MJ;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->l()I

    move-result v0

    if-lez v0, :cond_2

    iget-wide v1, p0, Lcom/android/tools/r8/internal/ze;->e:J

    iget-wide v3, p0, Lcom/android/tools/r8/internal/ze;->f:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    if-gt v0, v1, :cond_2

    iget-wide v1, p0, Lcom/android/tools/r8/internal/ze;->d:J

    sub-long/2addr v3, v1

    long-to-int v1, v3

    iget-object v2, p0, Lcom/android/tools/r8/internal/ze;->c:Ljava/nio/ByteBuffer;

    sget-object v3, Lcom/android/tools/r8/internal/tw0;->a:Lcom/android/tools/r8/internal/ow0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    add-int/2addr v4, v1

    invoke-virtual {v3, v2, v4, v0}, Lcom/android/tools/r8/internal/ow0;->a([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/tools/r8/internal/ow0;->b(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v2, v1, v0}, Lcom/android/tools/r8/internal/ow0;->a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-wide v2, p0, Lcom/android/tools/r8/internal/ze;->f:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/tools/r8/internal/ze;->f:J

    return-object v1

    :cond_2
    if-nez v0, :cond_3

    const-string v0, ""

    return-object v0

    :cond_3
    if-gtz v0, :cond_4

    new-instance v0, Lcom/android/tools/r8/internal/MJ;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/android/tools/r8/internal/MJ;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()I
    .locals 4

    iget-wide v0, p0, Lcom/android/tools/r8/internal/ze;->f:J

    iget-wide v2, p0, Lcom/android/tools/r8/internal/ze;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/ze;->i:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->l()I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/internal/ze;->i:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    return v0

    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/MJ;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final t()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->l()I

    move-result v0

    return v0
.end method

.method public final u()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ze;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public final v()I
    .locals 6

    iget-wide v0, p0, Lcom/android/tools/r8/internal/ze;->f:J

    iget-wide v2, p0, Lcom/android/tools/r8/internal/ze;->e:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/tools/r8/internal/ze;->f:J

    sget-object v2, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const-wide/16 v4, 0x2

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const-wide/16 v4, 0x3

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v3

    return v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/MJ;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final w()J
    .locals 10

    iget-wide v0, p0, Lcom/android/tools/r8/internal/ze;->f:J

    iget-wide v2, p0, Lcom/android/tools/r8/internal/ze;->e:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/tools/r8/internal/ze;->f:J

    sget-object v2, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const-wide/16 v7, 0x1

    add-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const-wide/16 v7, 0x2

    add-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x10

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const-wide/16 v7, 0x3

    add-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x18

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const-wide/16 v7, 0x4

    add-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const-wide/16 v7, 0x5

    add-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const-wide/16 v7, 0x6

    add-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x30

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const-wide/16 v7, 0x7

    add-long/2addr v0, v7

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/MJ;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final x()J
    .locals 17

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/tools/r8/internal/ze;->f:J

    iget-wide v3, v0, Lcom/android/tools/r8/internal/ze;->e:J

    cmp-long v3, v3, v1

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    add-long v8, v1, v4

    sget-object v3, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v10

    if-ltz v10, :cond_1

    iput-wide v8, v0, Lcom/android/tools/r8/internal/ze;->f:J

    int-to-long v1, v10

    return-wide v1

    :cond_1
    iget-wide v11, v0, Lcom/android/tools/r8/internal/ze;->e:J

    sub-long/2addr v11, v8

    const-wide/16 v13, 0x9

    cmp-long v11, v11, v13

    if-gez v11, :cond_2

    goto/16 :goto_2

    :cond_2
    const-wide/16 v11, 0x2

    add-long/2addr v11, v1

    invoke-virtual {v3, v8, v9}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v8

    shl-int/lit8 v8, v8, 0x7

    xor-int/2addr v8, v10

    if-gez v8, :cond_3

    xor-int/lit8 v1, v8, -0x80

    :goto_0
    int-to-long v1, v1

    goto/16 :goto_5

    :cond_3
    const-wide/16 v9, 0x3

    add-long/2addr v9, v1

    invoke-virtual {v3, v11, v12}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v11

    shl-int/lit8 v11, v11, 0xe

    xor-int/2addr v8, v11

    if-ltz v8, :cond_4

    xor-int/lit16 v1, v8, 0x3f80

    int-to-long v1, v1

    move-wide v11, v9

    goto/16 :goto_5

    :cond_4
    const-wide/16 v11, 0x4

    add-long/2addr v11, v1

    invoke-virtual {v3, v9, v10}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v9

    shl-int/lit8 v9, v9, 0x15

    xor-int/2addr v8, v9

    if-gez v8, :cond_5

    const v1, -0x1fc080

    xor-int/2addr v1, v8

    goto :goto_0

    :cond_5
    int-to-long v8, v8

    const-wide/16 v15, 0x5

    add-long v4, v1, v15

    invoke-virtual {v3, v11, v12}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v10

    int-to-long v10, v10

    const/16 v12, 0x1c

    shl-long/2addr v10, v12

    xor-long/2addr v8, v10

    cmp-long v10, v8, v6

    if-ltz v10, :cond_6

    const-wide/32 v1, 0xfe03f80

    xor-long/2addr v1, v8

    move-wide v11, v4

    goto/16 :goto_5

    :cond_6
    const-wide/16 v10, 0x6

    add-long v11, v1, v10

    invoke-virtual {v3, v4, v5}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x23

    shl-long/2addr v4, v10

    xor-long/2addr v4, v8

    cmp-long v8, v4, v6

    if-gez v8, :cond_7

    const-wide v1, -0x7f01fc080L

    :goto_1
    xor-long/2addr v1, v4

    goto/16 :goto_5

    :cond_7
    const-wide/16 v8, 0x7

    add-long/2addr v8, v1

    invoke-virtual {v3, v11, v12}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v10

    int-to-long v10, v10

    const/16 v12, 0x2a

    shl-long/2addr v10, v12

    xor-long/2addr v4, v10

    cmp-long v10, v4, v6

    if-ltz v10, :cond_8

    const-wide v1, 0x3f80fe03f80L

    xor-long/2addr v1, v4

    move-wide v11, v8

    goto/16 :goto_5

    :cond_8
    const-wide/16 v10, 0x8

    add-long v11, v1, v10

    invoke-virtual {v3, v8, v9}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x31

    shl-long/2addr v8, v10

    xor-long/2addr v4, v8

    cmp-long v8, v4, v6

    if-gez v8, :cond_9

    const-wide v1, -0x1fc07f01fc080L

    goto :goto_1

    :cond_9
    add-long/2addr v13, v1

    invoke-virtual {v3, v11, v12}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    xor-long/2addr v4, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v4, v8

    cmp-long v8, v4, v6

    if-gez v8, :cond_e

    const-wide/16 v8, 0xa

    add-long/2addr v1, v8

    invoke-virtual {v3, v13, v14}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v3

    int-to-long v8, v3

    cmp-long v3, v8, v6

    if-gez v3, :cond_d

    :goto_2
    const/4 v1, 0x0

    :goto_3
    const/16 v2, 0x40

    if-ge v1, v2, :cond_c

    iget-wide v2, v0, Lcom/android/tools/r8/internal/ze;->f:J

    iget-wide v4, v0, Lcom/android/tools/r8/internal/ze;->e:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_b

    const-wide/16 v4, 0x1

    add-long v8, v2, v4

    iput-wide v8, v0, Lcom/android/tools/r8/internal/ze;->f:J

    sget-object v8, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    invoke-virtual {v8, v2, v3}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    int-to-long v8, v3

    shl-long/2addr v8, v1

    or-long/2addr v6, v8

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_a

    return-wide v6

    :cond_a
    add-int/lit8 v1, v1, 0x7

    goto :goto_3

    :cond_b
    new-instance v1, Lcom/android/tools/r8/internal/MJ;

    const-string v2, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v1, Lcom/android/tools/r8/internal/MJ;

    const-string v2, "CodedInputStream encountered a malformed varint."

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    move-wide v11, v1

    goto :goto_4

    :cond_e
    move-wide v11, v13

    :goto_4
    move-wide v1, v4

    :goto_5
    iput-wide v11, v0, Lcom/android/tools/r8/internal/ze;->f:J

    return-wide v1
.end method

.method public final y()V
    .locals 4

    iget-wide v0, p0, Lcom/android/tools/r8/internal/ze;->e:J

    iget v2, p0, Lcom/android/tools/r8/internal/ze;->h:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/tools/r8/internal/ze;->e:J

    iget-wide v2, p0, Lcom/android/tools/r8/internal/ze;->g:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    iget v3, p0, Lcom/android/tools/r8/internal/ze;->j:I

    if-le v2, v3, :cond_0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/ze;->h:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/tools/r8/internal/ze;->e:J

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/ze;->h:I

    return-void
.end method
