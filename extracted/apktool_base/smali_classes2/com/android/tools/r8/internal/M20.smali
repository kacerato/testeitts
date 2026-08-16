.class public final Lcom/android/tools/r8/internal/M20;
.super Lcom/android/tools/r8/internal/a1;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public transient b:[Ljava/lang/Object;

.field public transient c:[Ljava/lang/Object;

.field public transient d:I

.field public transient e:Z

.field public f:Lcom/android/tools/r8/internal/Sz;

.field public transient g:I

.field public transient h:I

.field public transient i:[J

.field public transient j:I

.field public transient k:I

.field public l:I

.field public transient m:Lcom/android/tools/r8/internal/J20;

.field public transient n:Lcom/android/tools/r8/internal/H20;

.field public transient o:Lcom/android/tools/r8/internal/E20;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Sz;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/a1;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/M20;->g:I

    iput v0, p0, Lcom/android/tools/r8/internal/M20;->h:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    const/16 p1, 0x10

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->a(IF)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/M20;->j:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/M20;->d:I

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->b(IF)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/M20;->k:I

    iget p1, p0, Lcom/android/tools/r8/internal/M20;->j:I

    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/tools/r8/internal/M20;->i:[J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/a1;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/a1;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final c(Ljava/lang/Object;)Lcom/android/tools/r8/internal/a1;
    .locals 0

    .line 16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final c(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget v3, v0, Lcom/android/tools/r8/internal/M20;->l:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2
    iput v2, v0, Lcom/android/tools/r8/internal/M20;->h:I

    iput v2, v0, Lcom/android/tools/r8/internal/M20;->g:I

    .line 3
    iget-object v1, v0, Lcom/android/tools/r8/internal/M20;->i:[J

    const-wide/16 v3, -0x1

    aput-wide v3, v1, v2

    return-void

    .line 4
    :cond_0
    iget v3, v0, Lcom/android/tools/r8/internal/M20;->g:I

    const-wide v4, -0x100000000L

    const/16 v6, 0x20

    const-wide v7, 0xffffffffL

    if-ne v3, v1, :cond_1

    .line 5
    iput v2, v0, Lcom/android/tools/r8/internal/M20;->g:I

    .line 6
    iget-object v3, v0, Lcom/android/tools/r8/internal/M20;->i:[J

    aget-wide v9, v3, v1

    long-to-int v9, v9

    aget-wide v10, v3, v9

    int-to-long v12, v2

    and-long/2addr v7, v12

    shl-long v6, v7, v6

    xor-long/2addr v6, v10

    and-long/2addr v4, v6

    xor-long/2addr v4, v10

    aput-wide v4, v3, v9

    .line 7
    aget-wide v4, v3, v1

    aput-wide v4, v3, v2

    return-void

    .line 8
    :cond_1
    iget v3, v0, Lcom/android/tools/r8/internal/M20;->h:I

    if-ne v3, v1, :cond_2

    .line 9
    iput v2, v0, Lcom/android/tools/r8/internal/M20;->h:I

    .line 10
    iget-object v3, v0, Lcom/android/tools/r8/internal/M20;->i:[J

    aget-wide v4, v3, v1

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    aget-wide v5, v3, v4

    int-to-long v9, v2

    and-long/2addr v9, v7

    xor-long/2addr v9, v5

    and-long/2addr v7, v9

    xor-long/2addr v5, v7

    aput-wide v5, v3, v4

    .line 11
    aget-wide v4, v3, v1

    aput-wide v4, v3, v2

    return-void

    .line 12
    :cond_2
    iget-object v3, v0, Lcom/android/tools/r8/internal/M20;->i:[J

    aget-wide v9, v3, v1

    ushr-long v11, v9, v6

    long-to-int v1, v11

    long-to-int v11, v9

    .line 13
    aget-wide v12, v3, v1

    int-to-long v14, v2

    and-long/2addr v14, v7

    xor-long v16, v12, v14

    and-long v7, v16, v7

    xor-long/2addr v7, v12

    aput-wide v7, v3, v1

    .line 14
    aget-wide v7, v3, v11

    shl-long v12, v14, v6

    xor-long/2addr v12, v7

    and-long/2addr v4, v12

    xor-long/2addr v4, v7

    aput-wide v4, v3, v11

    .line 15
    aput-wide v9, v3, v2

    return-void
.end method

.method public final clear()V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/M20;->l:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/M20;->l:I

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/M20;->e:Z

    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/M20;->h:I

    iput v0, p0, Lcom/android/tools/r8/internal/M20;->g:I

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/M20;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/tools/r8/internal/M20;->n:Lcom/android/tools/r8/internal/H20;

    iput-object v1, v0, Lcom/android/tools/r8/internal/M20;->o:Lcom/android/tools/r8/internal/E20;

    iput-object v1, v0, Lcom/android/tools/r8/internal/M20;->m:Lcom/android/tools/r8/internal/J20;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/M20;->e:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/M20;->e:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/M20;->i:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/android/tools/r8/internal/M20;->i:[J

    iget-object v1, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    iput-object v1, v0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/M20;->e:Z

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v1, p1}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v1

    iget v2, p0, Lcom/android/tools/r8/internal/M20;->d:I

    and-int/2addr v1, v2

    aget-object v2, v0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v4, p1, v2}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    return v4

    :cond_2
    add-int/2addr v1, v4

    iget v2, p0, Lcom/android/tools/r8/internal/M20;->d:I

    and-int/2addr v1, v2

    aget-object v2, v0, v1

    if-nez v2, :cond_3

    return v3

    :cond_3
    iget-object v5, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v5, p1, v2}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v4
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/M20;->e:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/tools/r8/internal/M20;->j:I

    aget-object v2, v0, v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v3

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/internal/M20;->j:I

    :goto_1
    add-int/lit8 v4, v2, -0x1

    if-eqz v2, :cond_4

    aget-object v2, v1, v4

    if-eqz v2, :cond_3

    aget-object v2, v0, v4

    if-nez v2, :cond_2

    if-nez p1, :cond_3

    goto :goto_2

    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    return v3

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final d(I)V
    .locals 12

    iget v0, p0, Lcom/android/tools/r8/internal/M20;->l:I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/M20;->h:I

    iput p1, p0, Lcom/android/tools/r8/internal/M20;->g:I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/M20;->g:I

    const-wide v1, -0x100000000L

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->i:[J

    aget-wide v3, v0, p1

    long-to-int p1, v3

    iput p1, p0, Lcom/android/tools/r8/internal/M20;->g:I

    if-ltz p1, :cond_2

    aget-wide v3, v0, p1

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    return-void

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/M20;->h:I

    const/16 v3, 0x20

    const-wide v4, 0xffffffffL

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->i:[J

    aget-wide v1, v0, p1

    ushr-long/2addr v1, v3

    long-to-int p1, v1

    iput p1, p0, Lcom/android/tools/r8/internal/M20;->h:I

    if-ltz p1, :cond_2

    aget-wide v1, v0, p1

    or-long/2addr v1, v4

    aput-wide v1, v0, p1

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->i:[J

    aget-wide v6, v0, p1

    ushr-long v8, v6, v3

    long-to-int p1, v8

    long-to-int v3, v6

    aget-wide v8, v0, p1

    and-long v10, v6, v4

    xor-long/2addr v10, v8

    and-long/2addr v4, v10

    xor-long/2addr v4, v8

    aput-wide v4, v0, p1

    aget-wide v4, v0, v3

    and-long/2addr v6, v1

    xor-long/2addr v6, v4

    and-long/2addr v1, v6

    xor-long/2addr v1, v4

    aput-wide v1, v0, v3

    return-void
.end method

.method public final e()Lcom/android/tools/r8/internal/M30;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->n:Lcom/android/tools/r8/internal/H20;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/H20;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/H20;-><init>(Lcom/android/tools/r8/internal/M20;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/M20;->n:Lcom/android/tools/r8/internal/H20;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->n:Lcom/android/tools/r8/internal/H20;

    return-object v0
.end method

.method public final e(I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3
    iget-object v2, v0, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    .line 4
    iget-object v3, v0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v5, v1, 0x1

    .line 5
    new-array v6, v5, [Ljava/lang/Object;

    .line 6
    new-array v7, v5, [Ljava/lang/Object;

    .line 7
    iget v8, v0, Lcom/android/tools/r8/internal/M20;->g:I

    .line 8
    iget-object v9, v0, Lcom/android/tools/r8/internal/M20;->i:[J

    .line 9
    new-array v5, v5, [J

    const/4 v10, -0x1

    .line 10
    iput v10, v0, Lcom/android/tools/r8/internal/M20;->g:I

    .line 11
    iget v11, v0, Lcom/android/tools/r8/internal/M20;->l:I

    move v12, v10

    move v13, v12

    :goto_0
    add-int/lit8 v14, v11, -0x1

    if-eqz v11, :cond_3

    .line 12
    iget-object v11, v0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    aget-object v15, v2, v8

    const/4 v10, 0x0

    invoke-interface {v11, v15, v10}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v1

    goto :goto_2

    .line 13
    :cond_0
    iget-object v10, v0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    aget-object v11, v2, v8

    invoke-interface {v10, v11}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v10

    :goto_1
    and-int/2addr v10, v4

    .line 14
    aget-object v11, v6, v10

    if-eqz v11, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 15
    :cond_1
    :goto_2
    aget-object v11, v2, v8

    aput-object v11, v6, v10

    .line 16
    aget-object v11, v3, v8

    aput-object v11, v7, v10

    const/4 v11, -0x1

    if-eq v13, v11, :cond_2

    .line 17
    aget-wide v18, v5, v12

    move-object v11, v2

    move-object v13, v3

    int-to-long v2, v10

    const-wide v16, 0xffffffffL

    and-long v2, v2, v16

    xor-long v2, v18, v2

    and-long v2, v2, v16

    xor-long v2, v18, v2

    aput-wide v2, v5, v12

    .line 18
    aget-wide v2, v5, v10

    move-object v15, v11

    int-to-long v11, v12

    and-long v11, v11, v16

    const/16 v16, 0x20

    shl-long v11, v11, v16

    xor-long/2addr v11, v2

    const-wide v16, -0x100000000L

    and-long v11, v11, v16

    xor-long/2addr v2, v11

    aput-wide v2, v5, v10

    goto :goto_3

    :cond_2
    move-object v15, v2

    move-object v13, v3

    .line 19
    iput v10, v0, Lcom/android/tools/r8/internal/M20;->g:I

    const-wide/16 v2, -0x1

    .line 20
    aput-wide v2, v5, v10

    .line 21
    :goto_3
    aget-wide v2, v9, v8

    long-to-int v2, v2

    move v12, v10

    move-object v3, v13

    move v11, v14

    const/4 v10, -0x1

    move v13, v8

    move v8, v2

    move-object v2, v15

    goto :goto_0

    .line 22
    :cond_3
    iput-object v5, v0, Lcom/android/tools/r8/internal/M20;->i:[J

    .line 23
    iput v12, v0, Lcom/android/tools/r8/internal/M20;->h:I

    const/4 v2, -0x1

    if-eq v12, v2, :cond_4

    .line 24
    aget-wide v2, v5, v12

    const-wide v8, 0xffffffffL

    or-long/2addr v2, v8

    aput-wide v2, v5, v12

    .line 25
    :cond_4
    iput v1, v0, Lcom/android/tools/r8/internal/M20;->j:I

    .line 26
    iput v4, v0, Lcom/android/tools/r8/internal/M20;->d:I

    const/high16 v2, 0x3f400000    # 0.75f

    .line 27
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/jA;->b(IF)I

    move-result v1

    iput v1, v0, Lcom/android/tools/r8/internal/M20;->k:I

    .line 28
    iput-object v6, v0, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    .line 29
    iput-object v7, v0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    return-void
.end method

.method public final f(I)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    aget-object v1, v0, p1

    const/4 v2, 0x0

    aput-object v2, v0, p1

    iget v0, p0, Lcom/android/tools/r8/internal/M20;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/M20;->l:I

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/M20;->d(I)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    :goto_0
    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/tools/r8/internal/M20;->d:I

    and-int/2addr v3, v4

    :goto_1
    aget-object v4, v0, v3

    if-nez v4, :cond_1

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    aput-object v2, v0, p1

    iget p1, p0, Lcom/android/tools/r8/internal/M20;->l:I

    iget v0, p0, Lcom/android/tools/r8/internal/M20;->k:I

    div-int/lit8 v0, v0, 0x4

    if-ge p1, v0, :cond_0

    iget p1, p0, Lcom/android/tools/r8/internal/M20;->j:I

    const/16 v0, 0x10

    if-le p1, v0, :cond_0

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/M20;->e(I)V

    :cond_0
    return-object v1

    :cond_1
    iget-object v5, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v5, v4}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v5

    iget v6, p0, Lcom/android/tools/r8/internal/M20;->d:I

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
    aput-object v4, v0, p1

    iget-object v4, p0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    aget-object v5, v4, v3

    aput-object v5, v4, p1

    invoke-virtual {p0, v3, p1}, Lcom/android/tools/r8/internal/M20;->c(II)V

    move p1, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v6

    goto :goto_1
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/M20;->l:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/M20;->g:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/M20;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    iget v0, p0, Lcom/android/tools/r8/internal/M20;->j:I

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v2, p1}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v2

    iget v3, p0, Lcom/android/tools/r8/internal/M20;->d:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-nez v3, :cond_2

    return-object v1

    :cond_2
    iget-object v4, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v4, p1, v3}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    aget-object p1, p1, v2

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/tools/r8/internal/M20;->d:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-nez v3, :cond_4

    return-object v1

    :cond_4
    iget-object v4, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v4, p1, v3}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    aget-object p1, p1, v2

    return-object p1
.end method

.method public final hashCode()I
    .locals 6

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/M20;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/M20;->l:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/M20;->l:I

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_1
    add-int/lit8 v5, v0, -0x1

    if-eqz v0, :cond_5

    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-nez v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    if-eq p0, v0, :cond_2

    iget-object v4, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v4, v0}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;)I

    move-result v4

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eq p0, v0, :cond_4

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3
    xor-int/2addr v0, v4

    move v4, v0

    :cond_4
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    move v0, v5

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/M20;->e:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/M20;->j:I

    aget-object v0, v0, v2

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v3, v1

    :cond_7
    return v3
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final i()Lcom/android/tools/r8/internal/M30;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->m:Lcom/android/tools/r8/internal/J20;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/J20;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/J20;-><init>(Lcom/android/tools/r8/internal/M20;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/M20;->m:Lcom/android/tools/r8/internal/J20;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->m:Lcom/android/tools/r8/internal/J20;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/M20;->l:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/M20;->e:Z

    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/M20;->j:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    aget-object v3, v0, v1

    aput-object v2, v0, v1

    iget v0, p0, Lcom/android/tools/r8/internal/M20;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/M20;->l:I

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/M20;->d(I)V

    iget v0, p0, Lcom/android/tools/r8/internal/M20;->l:I

    iget v1, p0, Lcom/android/tools/r8/internal/M20;->k:I

    div-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/M20;->j:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/M20;->e(I)V

    :cond_0
    return-object v3
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/M20;->l:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/M20;->h:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/M20;->e:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/android/tools/r8/internal/M20;->j:I

    goto/16 :goto_3

    :cond_0
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/M20;->e:Z

    iget v0, p0, Lcom/android/tools/r8/internal/M20;->j:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v3, p1}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v3

    iget v4, p0, Lcom/android/tools/r8/internal/M20;->d:I

    and-int/2addr v3, v4

    aget-object v4, v0, v3

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v5, v4, p1}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    move p1, v3

    goto :goto_3

    :cond_2
    add-int/2addr v3, v2

    iget v4, p0, Lcom/android/tools/r8/internal/M20;->d:I

    and-int/2addr v3, v4

    aget-object v4, v0, v3

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v5, v4, p1}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    aput-object p1, v2, v0

    iget-object p1, p0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    aput-object p2, p1, v0

    iget p1, p0, Lcom/android/tools/r8/internal/M20;->l:I

    if-nez p1, :cond_4

    iput v0, p0, Lcom/android/tools/r8/internal/M20;->h:I

    iput v0, p0, Lcom/android/tools/r8/internal/M20;->g:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/M20;->i:[J

    const-wide/16 v3, -0x1

    aput-wide v3, v2, v0

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/tools/r8/internal/M20;->i:[J

    iget v3, p0, Lcom/android/tools/r8/internal/M20;->h:I

    aget-wide v4, v2, v3

    int-to-long v6, v0

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    xor-long/2addr v6, v4

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, v2, v3

    int-to-long v3, v3

    and-long/2addr v3, v8

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v3, v8

    aput-wide v3, v2, v0

    iput v0, p0, Lcom/android/tools/r8/internal/M20;->h:I

    :goto_2
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/M20;->l:I

    iget v0, p0, Lcom/android/tools/r8/internal/M20;->k:I

    if-lt p1, v0, :cond_5

    add-int/lit8 p1, p1, 0x2

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->a(IF)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/M20;->e(I)V

    :cond_5
    const/4 p1, -0x1

    :goto_3
    if-gez p1, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1
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

    iget v1, p0, Lcom/android/tools/r8/internal/M20;->j:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/M20;->e(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/M20;->l:I

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

    iget v1, p0, Lcom/android/tools/r8/internal/M20;->j:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/M20;->e(I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/a1;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/M20;->e:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/M20;->j()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v2, p1}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v2

    iget v3, p0, Lcom/android/tools/r8/internal/M20;->d:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-nez v3, :cond_2

    return-object v1

    :cond_2
    iget-object v4, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v4, p1, v3}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/M20;->f(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/tools/r8/internal/M20;->d:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-nez v3, :cond_4

    return-object v1

    :cond_4
    iget-object v4, p0, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v4, p1, v3}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/M20;->f(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/M20;->l:I

    return v0
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->o:Lcom/android/tools/r8/internal/E20;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/E20;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/E20;-><init>(Lcom/android/tools/r8/internal/M20;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/M20;->o:Lcom/android/tools/r8/internal/E20;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/M20;->o:Lcom/android/tools/r8/internal/E20;

    return-object v0
.end method
