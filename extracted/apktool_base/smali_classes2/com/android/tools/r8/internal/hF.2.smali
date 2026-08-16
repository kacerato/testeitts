.class public final Lcom/android/tools/r8/internal/hF;
.super Lcom/android/tools/r8/internal/K;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public transient c:[I

.field public transient d:[I

.field public transient e:I

.field public transient f:Z

.field public transient g:I

.field public transient h:I

.field public i:I

.field public transient j:Lcom/android/tools/r8/internal/eF;

.field public transient k:Lcom/android/tools/r8/internal/cF;

.field public transient l:Lcom/android/tools/r8/internal/ZE;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/K;-><init>()V

    if-ltz p1, :cond_0

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->a(IF)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/hF;->g:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/hF;->e:I

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->b(IF)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/hF;->h:I

    iget p1, p0, Lcom/android/tools/r8/internal/hF;->g:I

    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/tools/r8/internal/hF;->c:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/tools/r8/internal/hF;->d:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The expected number of elements must be nonnegative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I)Z
    .locals 5

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/hF;->f:Z

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/hF;->c:[I

    invoke-static {p1}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v1

    iget v2, p0, Lcom/android/tools/r8/internal/hF;->e:I

    and-int/2addr v1, v2

    aget v2, v0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    const/4 v4, 0x1

    if-ne p1, v2, :cond_2

    return v4

    :cond_2
    add-int/2addr v1, v4

    iget v2, p0, Lcom/android/tools/r8/internal/hF;->e:I

    and-int/2addr v1, v2

    aget v2, v0, v1

    if-nez v2, :cond_3

    return v3

    :cond_3
    if-ne p1, v2, :cond_2

    return v4
.end method

.method public final b(II)I
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/hF;->f:Z

    if-eqz v1, :cond_0

    iget p1, p0, Lcom/android/tools/r8/internal/hF;->g:I

    goto :goto_2

    :cond_0
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/hF;->f:Z

    iget v0, p0, Lcom/android/tools/r8/internal/hF;->g:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/hF;->c:[I

    invoke-static {p1}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v2

    iget v3, p0, Lcom/android/tools/r8/internal/hF;->e:I

    and-int/2addr v2, v3

    aget v3, v1, v2

    if-eqz v3, :cond_3

    if-ne v3, p1, :cond_2

    :goto_0
    move p1, v2

    goto :goto_2

    :cond_2
    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/tools/r8/internal/hF;->e:I

    and-int/2addr v2, v3

    aget v3, v1, v2

    if-eqz v3, :cond_3

    if-ne v3, p1, :cond_2

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/hF;->c:[I

    aput p1, v1, v0

    iget-object p1, p0, Lcom/android/tools/r8/internal/hF;->d:[I

    aput p2, p1, v0

    iget p1, p0, Lcom/android/tools/r8/internal/hF;->i:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/hF;->i:I

    iget v0, p0, Lcom/android/tools/r8/internal/hF;->h:I

    if-lt p1, v0, :cond_4

    add-int/lit8 p1, p1, 0x2

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->a(IF)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hF;->e(I)V

    :cond_4
    const/4 p1, -0x1

    :goto_2
    if-gez p1, :cond_5

    iget p1, p0, Lcom/android/tools/r8/internal/K;->b:I

    return p1

    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/hF;->d:[I

    aget v1, v0, p1

    aput p2, v0, p1

    return v1
.end method

.method public final clear()V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/hF;->i:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/hF;->i:I

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/hF;->f:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/hF;->c:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/hF;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/tools/r8/internal/hF;->k:Lcom/android/tools/r8/internal/cF;

    iput-object v1, v0, Lcom/android/tools/r8/internal/hF;->l:Lcom/android/tools/r8/internal/ZE;

    iput-object v1, v0, Lcom/android/tools/r8/internal/hF;->j:Lcom/android/tools/r8/internal/eF;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/hF;->f:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/hF;->f:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/hF;->c:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/android/tools/r8/internal/hF;->c:[I

    iget-object v1, p0, Lcom/android/tools/r8/internal/hF;->d:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/android/tools/r8/internal/hF;->d:[I

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final d(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/hF;->d:[I

    iget-object v1, p0, Lcom/android/tools/r8/internal/hF;->c:[I

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/hF;->f:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/tools/r8/internal/hF;->g:I

    aget v2, v0, v2

    if-ne v2, p1, :cond_0

    return v3

    :cond_0
    iget v2, p0, Lcom/android/tools/r8/internal/hF;->g:I

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-eqz v2, :cond_2

    aget v2, v1, v4

    if-eqz v2, :cond_1

    aget v2, v0, v4

    if-ne v2, p1, :cond_1

    return v3

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final e(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/internal/hF;->c:[I

    iget-object v1, p0, Lcom/android/tools/r8/internal/hF;->d:[I

    add-int/lit8 v2, p1, -0x1

    add-int/lit8 v3, p1, 0x1

    new-array v4, v3, [I

    new-array v3, v3, [I

    iget v5, p0, Lcom/android/tools/r8/internal/hF;->g:I

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/hF;->f:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/tools/r8/internal/hF;->i:I

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/android/tools/r8/internal/hF;->i:I

    :goto_0
    add-int/lit8 v7, v6, -0x1

    if-eqz v6, :cond_3

    :goto_1
    add-int/lit8 v5, v5, -0x1

    aget v6, v0, v5

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v6}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v6

    and-int/2addr v6, v2

    aget v8, v4, v6

    if-eqz v8, :cond_2

    :goto_2
    add-int/lit8 v6, v6, 0x1

    and-int/2addr v6, v2

    aget v8, v4, v6

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    aget v8, v0, v5

    aput v8, v4, v6

    aget v8, v1, v5

    aput v8, v3, v6

    move v6, v7

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/hF;->g:I

    aget v0, v1, v0

    aput v0, v3, p1

    iput p1, p0, Lcom/android/tools/r8/internal/hF;->g:I

    iput v2, p0, Lcom/android/tools/r8/internal/hF;->e:I

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->b(IF)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/hF;->h:I

    iput-object v4, p0, Lcom/android/tools/r8/internal/hF;->c:[I

    iput-object v3, p0, Lcom/android/tools/r8/internal/hF;->d:[I

    return-void
.end method

.method public final f(I)I
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/hF;->d:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/android/tools/r8/internal/hF;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/hF;->i:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/hF;->c:[I

    :goto_0
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/android/tools/r8/internal/hF;->e:I

    and-int/2addr v2, v3

    :goto_1
    aget v3, v1, v2

    if-nez v3, :cond_1

    const/4 v2, 0x0

    aput v2, v1, p1

    iget p1, p0, Lcom/android/tools/r8/internal/hF;->i:I

    iget v1, p0, Lcom/android/tools/r8/internal/hF;->h:I

    div-int/lit8 v1, v1, 0x4

    if-ge p1, v1, :cond_0

    iget p1, p0, Lcom/android/tools/r8/internal/hF;->g:I

    const/16 v1, 0x10

    if-le p1, v1, :cond_0

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hF;->e(I)V

    :cond_0
    return v0

    :cond_1
    invoke-static {v3}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v4

    iget v5, p0, Lcom/android/tools/r8/internal/hF;->e:I

    and-int/2addr v4, v5

    if-gt p1, v2, :cond_2

    if-ge p1, v4, :cond_3

    if-le v4, v2, :cond_4

    goto :goto_2

    :cond_2
    if-lt p1, v4, :cond_4

    if-le v4, v2, :cond_4

    :cond_3
    :goto_2
    aput v3, v1, p1

    iget-object v3, p0, Lcom/android/tools/r8/internal/hF;->d:[I

    aget v4, v3, v2

    aput v4, v3, p1

    move p1, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v5

    goto :goto_1
.end method

.method public final get(I)I
    .locals 3

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/hF;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/hF;->d:[I

    iget v0, p0, Lcom/android/tools/r8/internal/hF;->g:I

    aget p1, p1, v0

    return p1

    :cond_0
    iget p1, p0, Lcom/android/tools/r8/internal/K;->b:I

    return p1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/hF;->c:[I

    invoke-static {p1}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v1

    iget v2, p0, Lcom/android/tools/r8/internal/hF;->e:I

    and-int/2addr v1, v2

    aget v2, v0, v1

    if-nez v2, :cond_2

    iget p1, p0, Lcom/android/tools/r8/internal/K;->b:I

    return p1

    :cond_2
    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/hF;->d:[I

    aget p1, p1, v1

    return p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/tools/r8/internal/hF;->e:I

    and-int/2addr v1, v2

    aget v2, v0, v1

    if-nez v2, :cond_4

    iget p1, p0, Lcom/android/tools/r8/internal/K;->b:I

    return p1

    :cond_4
    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/hF;->d:[I

    aget p1, p1, v1

    return p1
.end method

.method public final h()Lcom/android/tools/r8/internal/I30;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hF;->j:Lcom/android/tools/r8/internal/eF;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/eF;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/eF;-><init>(Lcom/android/tools/r8/internal/hF;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/hF;->j:Lcom/android/tools/r8/internal/eF;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/hF;->j:Lcom/android/tools/r8/internal/eF;

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/hF;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/hF;->i:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/hF;->i:I

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-eqz v0, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/hF;->c:[I

    aget v0, v0, v2

    if-nez v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/hF;->d:[I

    aget v4, v4, v2

    xor-int/2addr v0, v4

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/hF;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/hF;->d:[I

    iget v2, p0, Lcom/android/tools/r8/internal/hF;->g:I

    aget v0, v0, v2

    add-int/2addr v1, v0

    :cond_3
    return v1
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/hF;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hF;->k:Lcom/android/tools/r8/internal/cF;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/cF;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/cF;-><init>(Lcom/android/tools/r8/internal/hF;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/hF;->k:Lcom/android/tools/r8/internal/cF;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/hF;->k:Lcom/android/tools/r8/internal/cF;

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 5

    const/high16 v0, 0x3f400000    # 0.75f

    float-to-double v1, v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/jA;->a(IF)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/hF;->g:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/hF;->e(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/hF;->i:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v2, v1

    int-to-long v1, v2

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/jA;->b(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x40000000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/android/tools/r8/internal/hF;->g:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/hF;->e(I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final remove(I)I
    .locals 3

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/hF;->f:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/hF;->f:Z

    iget-object p1, p0, Lcom/android/tools/r8/internal/hF;->d:[I

    iget v0, p0, Lcom/android/tools/r8/internal/hF;->g:I

    aget p1, p1, v0

    iget v1, p0, Lcom/android/tools/r8/internal/hF;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/hF;->i:I

    iget v2, p0, Lcom/android/tools/r8/internal/hF;->h:I

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/hF;->e(I)V

    :cond_0
    return p1

    :cond_1
    iget p1, p0, Lcom/android/tools/r8/internal/K;->b:I

    return p1

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/hF;->c:[I

    invoke-static {p1}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v1

    iget v2, p0, Lcom/android/tools/r8/internal/hF;->e:I

    and-int/2addr v1, v2

    aget v2, v0, v1

    if-nez v2, :cond_3

    iget p1, p0, Lcom/android/tools/r8/internal/K;->b:I

    return p1

    :cond_3
    if-ne p1, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/hF;->f(I)I

    move-result p1

    return p1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/tools/r8/internal/hF;->e:I

    and-int/2addr v1, v2

    aget v2, v0, v1

    if-nez v2, :cond_5

    iget p1, p0, Lcom/android/tools/r8/internal/K;->b:I

    return p1

    :cond_5
    if-ne p1, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/hF;->f(I)I

    move-result p1

    return p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/hF;->i:I

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hF;->l:Lcom/android/tools/r8/internal/ZE;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/ZE;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/ZE;-><init>(Lcom/android/tools/r8/internal/hF;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/hF;->l:Lcom/android/tools/r8/internal/ZE;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/hF;->l:Lcom/android/tools/r8/internal/ZE;

    return-object v0
.end method
