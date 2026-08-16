.class public final Lcom/android/tools/r8/internal/dH;
.super Lcom/android/tools/r8/internal/T;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public transient b:[I

.field public transient c:[Ljava/lang/Object;

.field public transient d:I

.field public transient e:Z

.field public transient f:I

.field public transient g:I

.field public h:I

.field public final i:F

.field public transient j:Lcom/android/tools/r8/internal/aH;

.field public transient k:Lcom/android/tools/r8/internal/YG;

.field public transient l:Lcom/android/tools/r8/internal/VG;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 9
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/T;-><init>()V

    if-ltz p1, :cond_0

    const/high16 v0, 0x3f400000    # 0.75f

    .line 2
    iput v0, p0, Lcom/android/tools/r8/internal/dH;->i:F

    .line 3
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->a(IF)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/dH;->f:I

    add-int/lit8 v1, p1, -0x1

    .line 4
    iput v1, p0, Lcom/android/tools/r8/internal/dH;->d:I

    .line 5
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->b(IF)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/dH;->g:I

    .line 6
    iget p1, p0, Lcom/android/tools/r8/internal/dH;->f:I

    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/tools/r8/internal/dH;->b:[I

    .line 7
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The expected number of elements must be nonnegative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/dH;->e:Z

    if-eqz v1, :cond_0

    iget p1, p0, Lcom/android/tools/r8/internal/dH;->f:I

    goto :goto_2

    .line 2
    :cond_0
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/dH;->e:Z

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/dH;->f:I

    goto :goto_1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/dH;->b:[I

    .line 5
    invoke-static {p1}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v2

    iget v3, p0, Lcom/android/tools/r8/internal/dH;->d:I

    and-int/2addr v2, v3

    aget v3, v1, v2

    if-eqz v3, :cond_3

    if-ne v3, p1, :cond_2

    :goto_0
    move p1, v2

    goto :goto_2

    :cond_2
    add-int/2addr v2, v0

    .line 6
    iget v3, p0, Lcom/android/tools/r8/internal/dH;->d:I

    and-int/2addr v2, v3

    aget v3, v1, v2

    if-eqz v3, :cond_3

    if-ne v3, p1, :cond_2

    goto :goto_0

    :cond_3
    move v0, v2

    .line 7
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/dH;->b:[I

    aput p1, v1, v0

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 9
    iget p1, p0, Lcom/android/tools/r8/internal/dH;->h:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/dH;->h:I

    iget v0, p0, Lcom/android/tools/r8/internal/dH;->g:I

    if-lt p1, v0, :cond_4

    add-int/lit8 p1, p1, 0x2

    iget v0, p0, Lcom/android/tools/r8/internal/dH;->i:F

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->a(IF)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/dH;->d(I)V

    :cond_4
    const/4 p1, -0x1

    :goto_2
    if-gez p1, :cond_5

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 11
    aput-object p2, v0, p1

    return-object v1
.end method

.method public final a(I)Z
    .locals 5

    if-nez p1, :cond_0

    .line 12
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/dH;->e:Z

    return p1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/dH;->b:[I

    .line 14
    invoke-static {p1}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v1

    iget v2, p0, Lcom/android/tools/r8/internal/dH;->d:I

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

    .line 15
    iget v2, p0, Lcom/android/tools/r8/internal/dH;->d:I

    and-int/2addr v1, v2

    aget v2, v0, v1

    if-nez v2, :cond_3

    return v3

    :cond_3
    if-ne p1, v2, :cond_2

    return v4
.end method

.method public final c()Lcom/android/tools/r8/internal/I30;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/dH;->j:Lcom/android/tools/r8/internal/aH;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/aH;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/aH;-><init>(Lcom/android/tools/r8/internal/dH;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/dH;->j:Lcom/android/tools/r8/internal/aH;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/dH;->j:Lcom/android/tools/r8/internal/aH;

    return-object v0
.end method

.method public final clear()V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/dH;->h:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/dH;->h:I

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/dH;->e:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/dH;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dH;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/tools/r8/internal/dH;->k:Lcom/android/tools/r8/internal/YG;

    iput-object v1, v0, Lcom/android/tools/r8/internal/dH;->l:Lcom/android/tools/r8/internal/VG;

    iput-object v1, v0, Lcom/android/tools/r8/internal/dH;->j:Lcom/android/tools/r8/internal/aH;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/dH;->e:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/dH;->e:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/dH;->b:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/android/tools/r8/internal/dH;->b:[I

    iget-object v1, p0, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/dH;->b:[I

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/dH;->e:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/tools/r8/internal/dH;->f:I

    aget-object v2, v0, v2

    if-ne v2, p1, :cond_0

    return v3

    :cond_0
    iget v2, p0, Lcom/android/tools/r8/internal/dH;->f:I

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-eqz v2, :cond_2

    aget v2, v1, v4

    if-eqz v2, :cond_1

    aget-object v2, v0, v4

    if-ne v2, p1, :cond_1

    return v3

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final d(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/internal/dH;->b:[I

    iget-object v1, p0, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    add-int/lit8 v2, p1, -0x1

    add-int/lit8 v3, p1, 0x1

    new-array v4, v3, [I

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/tools/r8/internal/dH;->f:I

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/dH;->e:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/tools/r8/internal/dH;->h:I

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/android/tools/r8/internal/dH;->h:I

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

    aget-object v8, v1, v5

    aput-object v8, v3, v6

    move v6, v7

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/dH;->f:I

    aget-object v0, v1, v0

    aput-object v0, v3, p1

    iput p1, p0, Lcom/android/tools/r8/internal/dH;->f:I

    iput v2, p0, Lcom/android/tools/r8/internal/dH;->d:I

    iget v0, p0, Lcom/android/tools/r8/internal/dH;->i:F

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->b(IF)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/dH;->g:I

    iput-object v4, p0, Lcom/android/tools/r8/internal/dH;->b:[I

    iput-object v3, p0, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    return-void
.end method

.method public final e(I)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    aget-object v1, v0, p1

    const/4 v2, 0x0

    aput-object v2, v0, p1

    iget v0, p0, Lcom/android/tools/r8/internal/dH;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/dH;->h:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/dH;->b:[I

    :goto_0
    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/tools/r8/internal/dH;->d:I

    and-int/2addr v3, v4

    :goto_1
    aget v4, v0, v3

    if-nez v4, :cond_1

    const/4 v3, 0x0

    aput v3, v0, p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    aput-object v2, v0, p1

    iget p1, p0, Lcom/android/tools/r8/internal/dH;->h:I

    iget v0, p0, Lcom/android/tools/r8/internal/dH;->g:I

    div-int/lit8 v0, v0, 0x4

    if-ge p1, v0, :cond_0

    iget p1, p0, Lcom/android/tools/r8/internal/dH;->f:I

    const/16 v0, 0x10

    if-le p1, v0, :cond_0

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/dH;->d(I)V

    :cond_0
    return-object v1

    :cond_1
    invoke-static {v4}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v5

    iget v6, p0, Lcom/android/tools/r8/internal/dH;->d:I

    and-int/2addr v5, v6

    if-gt p1, v3, :cond_2

    if-ge p1, v5, :cond_3

    if-le v5, v3, :cond_4

    goto :goto_2

    :cond_2
    if-lt p1, v5, :cond_4

    if-le v5, v3, :cond_4

    :cond_3
    :goto_2
    aput v4, v0, p1

    iget-object v4, p0, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    aget-object v5, v4, v3

    aput-object v5, v4, p1

    move p1, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v6

    goto :goto_1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/dH;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    iget v0, p0, Lcom/android/tools/r8/internal/dH;->f:I

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/dH;->b:[I

    invoke-static {p1}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v2

    iget v3, p0, Lcom/android/tools/r8/internal/dH;->d:I

    and-int/2addr v2, v3

    aget v3, v1, v2

    if-nez v3, :cond_2

    return-object v0

    :cond_2
    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    aget-object p1, p1, v2

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/tools/r8/internal/dH;->d:I

    and-int/2addr v2, v3

    aget v3, v1, v2

    if-nez v3, :cond_4

    return-object v0

    :cond_4
    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    aget-object p1, p1, v2

    return-object p1
.end method

.method public final hashCode()I
    .locals 6

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/dH;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/dH;->h:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/dH;->h:I

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-eqz v0, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/dH;->b:[I

    aget v0, v0, v2

    if-nez v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    aget-object v5, v5, v2

    if-eq p0, v5, :cond_3

    if-nez v5, :cond_2

    move v5, v1

    goto :goto_3

    :cond_2
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    :goto_3
    xor-int/2addr v0, v5

    :cond_3
    add-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/dH;->e:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/dH;->f:I

    aget-object v0, v0, v2

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    :goto_4
    add-int/2addr v3, v1

    :cond_6
    return v3
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/dH;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Lcom/android/tools/r8/internal/nI;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/dH;->k:Lcom/android/tools/r8/internal/YG;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/YG;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/YG;-><init>(Lcom/android/tools/r8/internal/dH;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/dH;->k:Lcom/android/tools/r8/internal/YG;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/dH;->k:Lcom/android/tools/r8/internal/YG;

    return-object v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dH;->keySet()Lcom/android/tools/r8/internal/nI;

    move-result-object v0

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/dH;->i:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/dH;->i:F

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/jA;->a(IF)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/dH;->f:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/dH;->d(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/dH;->h:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    int-to-long v0, v1

    long-to-float v0, v0

    iget v1, p0, Lcom/android/tools/r8/internal/dH;->i:F

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

    iget v1, p0, Lcom/android/tools/r8/internal/dH;->f:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/dH;->d(I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/T;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/dH;->e:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/dH;->e:Z

    iget-object p1, p0, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/dH;->f:I

    aget-object v2, p1, v1

    aput-object v0, p1, v1

    iget p1, p0, Lcom/android/tools/r8/internal/dH;->h:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/dH;->h:I

    iget v0, p0, Lcom/android/tools/r8/internal/dH;->g:I

    div-int/lit8 v0, v0, 0x4

    if-ge p1, v0, :cond_0

    const/16 p1, 0x10

    if-le v1, p1, :cond_0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/dH;->d(I)V

    :cond_0
    return-object v2

    :cond_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/dH;->b:[I

    invoke-static {p1}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v2

    iget v3, p0, Lcom/android/tools/r8/internal/dH;->d:I

    and-int/2addr v2, v3

    aget v3, v1, v2

    if-nez v3, :cond_3

    return-object v0

    :cond_3
    if-ne p1, v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/dH;->e(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/tools/r8/internal/dH;->d:I

    and-int/2addr v2, v3

    aget v3, v1, v2

    if-nez v3, :cond_5

    return-object v0

    :cond_5
    if-ne p1, v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/dH;->e(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/dH;->h:I

    return v0
.end method

.method public final values()Lcom/android/tools/r8/internal/Od0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/dH;->l:Lcom/android/tools/r8/internal/VG;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/VG;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/VG;-><init>(Lcom/android/tools/r8/internal/dH;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/dH;->l:Lcom/android/tools/r8/internal/VG;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/dH;->l:Lcom/android/tools/r8/internal/VG;

    return-object v0
.end method
