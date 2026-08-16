.class public final Lcom/android/tools/r8/internal/dI;
.super Lcom/android/tools/r8/internal/c0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient b:[I

.field public transient c:I

.field public transient d:Z

.field public transient e:I

.field public transient f:I

.field public g:I

.field public final h:F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/c0;-><init>()V

    if-ltz p1, :cond_0

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/android/tools/r8/internal/dI;->h:F

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->a(IF)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/dI;->e:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/dI;->c:I

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->b(IF)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/dI;->f:I

    iget p1, p0, Lcom/android/tools/r8/internal/dI;->e:I

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/tools/r8/internal/dI;->b:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The expected number of elements must be nonnegative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/JH;)Z
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/dI;->h:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/dI;->h:F

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/jA;->a(IF)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/dI;->e:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/dI;->k(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/dI;->g:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    int-to-long v0, v1

    long-to-float v0, v0

    iget v1, p0, Lcom/android/tools/r8/internal/dI;->h:F

    div-float/2addr v0, v1

    float-to-double v0, v0

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

    iget v1, p0, Lcom/android/tools/r8/internal/dI;->e:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/dI;->k(I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/W;->a(Lcom/android/tools/r8/internal/JH;)Z

    move-result p1

    return p1
.end method

.method public final add(I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/dI;->d:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/dI;->d:Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/dI;->b:[I

    invoke-static {p1}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v3

    iget v4, p0, Lcom/android/tools/r8/internal/dI;->c:I

    and-int/2addr v3, v4

    aget v4, v2, v3

    if-eqz v4, :cond_3

    if-ne v4, p1, :cond_2

    return v0

    :cond_2
    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/tools/r8/internal/dI;->c:I

    and-int/2addr v3, v4

    aget v4, v2, v3

    if-eqz v4, :cond_3

    if-ne v4, p1, :cond_2

    return v0

    :cond_3
    aput p1, v2, v3

    :goto_0
    iget p1, p0, Lcom/android/tools/r8/internal/dI;->g:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/dI;->g:I

    iget v0, p0, Lcom/android/tools/r8/internal/dI;->f:I

    if-lt p1, v0, :cond_4

    add-int/lit8 p1, p1, 0x2

    iget v0, p0, Lcom/android/tools/r8/internal/dI;->h:F

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->a(IF)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/dI;->k(I)V

    :cond_4
    return v1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/dI;->h:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/dI;->h:F

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/jA;->a(IF)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/dI;->e:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/dI;->k(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/dI;->g:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    int-to-long v0, v1

    long-to-float v0, v0

    iget v1, p0, Lcom/android/tools/r8/internal/dI;->h:F

    div-float/2addr v0, v1

    float-to-double v0, v0

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

    iget v1, p0, Lcom/android/tools/r8/internal/dI;->e:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/dI;->k(I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/dI;->g:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/dI;->g:I

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/dI;->d:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/dI;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dI;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/dI;->b:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/android/tools/r8/internal/dI;->b:[I

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/dI;->d:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/dI;->d:Z

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final h(I)Z
    .locals 5

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/dI;->d:Z

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/dI;->b:[I

    invoke-static {p1}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v1

    iget v2, p0, Lcom/android/tools/r8/internal/dI;->c:I

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

    iget v2, p0, Lcom/android/tools/r8/internal/dI;->c:I

    and-int/2addr v1, v2

    aget v2, v0, v1

    if-nez v2, :cond_3

    return v3

    :cond_3
    if-ne p1, v2, :cond_2

    return v4
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/dI;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/dI;->g:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/dI;->g:I

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-eqz v0, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/dI;->b:[I

    aget v0, v0, v2

    if-nez v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_1

    :cond_2
    return v1
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/dI;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/PH;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/cI;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/cI;-><init>(Lcom/android/tools/r8/internal/dI;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/cI;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/cI;-><init>(Lcom/android/tools/r8/internal/dI;)V

    return-object v0
.end method

.method public final k(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/dI;->b:[I

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [I

    iget v3, p0, Lcom/android/tools/r8/internal/dI;->e:I

    iget-boolean v4, p0, Lcom/android/tools/r8/internal/dI;->d:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/tools/r8/internal/dI;->g:I

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/tools/r8/internal/dI;->g:I

    :goto_0
    add-int/lit8 v5, v4, -0x1

    if-eqz v4, :cond_3

    :goto_1
    add-int/lit8 v3, v3, -0x1

    aget v4, v0, v3

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v4

    and-int/2addr v4, v1

    aget v6, v2, v4

    if-eqz v6, :cond_2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    and-int/2addr v4, v1

    aget v6, v2, v4

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    aget v6, v0, v3

    aput v6, v2, v4

    move v4, v5

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/android/tools/r8/internal/dI;->e:I

    iput v1, p0, Lcom/android/tools/r8/internal/dI;->c:I

    iget v0, p0, Lcom/android/tools/r8/internal/dI;->h:F

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->b(IF)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/dI;->f:I

    iput-object v2, p0, Lcom/android/tools/r8/internal/dI;->b:[I

    return-void
.end method

.method public final l(I)V
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/dI;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/dI;->g:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/dI;->b:[I

    :goto_0
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/android/tools/r8/internal/dI;->c:I

    and-int/2addr v1, v2

    :goto_1
    aget v2, v0, v1

    if-nez v2, :cond_1

    const/4 v1, 0x0

    aput v1, v0, p1

    iget p1, p0, Lcom/android/tools/r8/internal/dI;->g:I

    iget v0, p0, Lcom/android/tools/r8/internal/dI;->f:I

    div-int/lit8 v0, v0, 0x4

    if-ge p1, v0, :cond_0

    iget p1, p0, Lcom/android/tools/r8/internal/dI;->e:I

    const/16 v0, 0x10

    if-le p1, v0, :cond_0

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/dI;->k(I)V

    :cond_0
    return-void

    :cond_1
    invoke-static {v2}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v3

    iget v4, p0, Lcom/android/tools/r8/internal/dI;->c:I

    and-int/2addr v3, v4

    if-gt p1, v1, :cond_2

    if-ge p1, v3, :cond_3

    if-le v3, v1, :cond_4

    goto :goto_2

    :cond_2
    if-lt p1, v3, :cond_4

    if-le v3, v1, :cond_4

    :cond_3
    :goto_2
    aput v2, v0, p1

    move p1, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    and-int/2addr v1, v4

    goto :goto_1
.end method

.method public final remove(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/dI;->d:Z

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/dI;->d:Z

    iget-object p1, p0, Lcom/android/tools/r8/internal/dI;->b:[I

    iget v2, p0, Lcom/android/tools/r8/internal/dI;->e:I

    aput v1, p1, v2

    iget p1, p0, Lcom/android/tools/r8/internal/dI;->g:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/internal/dI;->g:I

    iget v1, p0, Lcom/android/tools/r8/internal/dI;->f:I

    div-int/lit8 v1, v1, 0x4

    if-ge p1, v1, :cond_0

    const/16 p1, 0x10

    if-le v2, p1, :cond_0

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/dI;->k(I)V

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/dI;->b:[I

    invoke-static {p1}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v3

    iget v4, p0, Lcom/android/tools/r8/internal/dI;->c:I

    and-int/2addr v3, v4

    aget v4, v2, v3

    if-nez v4, :cond_3

    return v1

    :cond_3
    if-ne p1, v4, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/dI;->l(I)V

    return v0

    :cond_4
    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/tools/r8/internal/dI;->c:I

    and-int/2addr v3, v4

    aget v4, v2, v3

    if-nez v4, :cond_5

    return v1

    :cond_5
    if-ne p1, v4, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/dI;->l(I)V

    return v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/dI;->g:I

    return v0
.end method
