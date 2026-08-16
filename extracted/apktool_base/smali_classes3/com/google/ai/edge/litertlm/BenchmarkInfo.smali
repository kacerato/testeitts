.class public final Lcom/google/ai/edge/litertlm/BenchmarkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:D

.field public final b:D

.field public final c:I

.field public final d:I

.field public final e:D

.field public final f:D


# direct methods
.method public constructor <init>(DDIIDD)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "initTimeInSecond",
            "timeToFirstTokenInSecond",
            "lastPrefillTokenCount",
            "lastDecodeTokenCount",
            "lastPrefillTokensPerSecond",
            "lastDecodeTokensPerSecond"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->a:D

    iput-wide p3, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->b:D

    iput p5, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->c:I

    iput p6, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->d:I

    iput-wide p7, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->e:D

    iput-wide p9, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->f:D

    return-void
.end method

.method public static synthetic h(Lcom/google/ai/edge/litertlm/BenchmarkInfo;DDIIDDILjava/lang/Object;)Lcom/google/ai/edge/litertlm/BenchmarkInfo;
    .locals 11

    move-object v0, p0

    and-int/lit8 v1, p11, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->a:D

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p11, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->b:D

    goto :goto_1

    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 v5, p11, 0x4

    if-eqz v5, :cond_2

    iget v5, v0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->c:I

    goto :goto_2

    :cond_2
    move/from16 v5, p5

    :goto_2
    and-int/lit8 v6, p11, 0x8

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->d:I

    goto :goto_3

    :cond_3
    move/from16 v6, p6

    :goto_3
    and-int/lit8 v7, p11, 0x10

    if-eqz v7, :cond_4

    iget-wide v7, v0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->e:D

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p7

    :goto_4
    and-int/lit8 v9, p11, 0x20

    if-eqz v9, :cond_5

    iget-wide v9, v0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->f:D

    goto :goto_5

    :cond_5
    move-wide/from16 v9, p9

    :goto_5
    move-wide p1, v1

    move-wide p3, v3

    move/from16 p5, v5

    move/from16 p6, v6

    move-wide/from16 p7, v7

    move-wide/from16 p9, v9

    invoke-virtual/range {p0 .. p10}, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->g(DDIIDD)Lcom/google/ai/edge/litertlm/BenchmarkInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()D
    .locals 2

    iget-wide v0, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->a:D

    return-wide v0
.end method

.method public final b()D
    .locals 2

    iget-wide v0, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->b:D

    return-wide v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->d:I

    return v0
.end method

.method public final e()D
    .locals 2

    iget-wide v0, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->e:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/ai/edge/litertlm/BenchmarkInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/ai/edge/litertlm/BenchmarkInfo;

    iget-wide v3, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->a:D

    iget-wide v5, p1, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->a:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->b:D

    iget-wide v5, p1, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->b:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->c:I

    iget v3, p1, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->d:I

    iget v3, p1, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->e:D

    iget-wide v5, p1, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->e:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->f:D

    iget-wide v5, p1, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->f:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final f()D
    .locals 2

    iget-wide v0, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->f:D

    return-wide v0
.end method

.method public final g(DDIIDD)Lcom/google/ai/edge/litertlm/BenchmarkInfo;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "initTimeInSecond",
            "timeToFirstTokenInSecond",
            "lastPrefillTokenCount",
            "lastDecodeTokenCount",
            "lastPrefillTokensPerSecond",
            "lastDecodeTokensPerSecond"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v11, Lcom/google/ai/edge/litertlm/BenchmarkInfo;

    move-object v0, v11

    move-wide v1, p1

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/ai/edge/litertlm/BenchmarkInfo;-><init>(DDIIDD)V

    return-object v11
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->e:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->f:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()D
    .locals 2

    iget-wide v0, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->a:D

    return-wide v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->d:I

    return v0
.end method

.method public final k()D
    .locals 2

    iget-wide v0, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->f:D

    return-wide v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->c:I

    return v0
.end method

.method public final m()D
    .locals 2

    iget-wide v0, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->e:D

    return-wide v0
.end method

.method public final n()D
    .locals 2

    iget-wide v0, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->b:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->a:D

    iget-wide v2, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->b:D

    iget v4, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->c:I

    iget v5, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->d:I

    iget-wide v6, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->e:D

    iget-wide v8, p0, Lcom/google/ai/edge/litertlm/BenchmarkInfo;->f:D

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BenchmarkInfo(initTimeInSecond="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", timeToFirstTokenInSecond="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", lastPrefillTokenCount="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", lastDecodeTokenCount="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", lastPrefillTokensPerSecond="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", lastDecodeTokensPerSecond="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
