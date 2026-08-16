.class public final Lcom/android/tools/r8/internal/eU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/android/tools/r8/internal/xy;
.implements Ljava/io/Serializable;
.implements Ljava/util/Map;


# instance fields
.field public transient b:[J

.field public transient c:[Ljava/lang/Object;

.field public transient d:I

.field public transient e:Z

.field public transient f:I

.field public transient g:I

.field public h:I

.field public transient i:Lcom/android/tools/r8/internal/bU;

.field public transient j:Lcom/android/tools/r8/internal/ZT;

.field public transient k:Lcom/android/tools/r8/internal/WT;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/jA;->a(IF)I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/internal/eU;->f:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/android/tools/r8/internal/eU;->d:I

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/jA;->b(IF)I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/internal/eU;->g:I

    iget v0, p0, Lcom/android/tools/r8/internal/eU;->f:I

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/tools/r8/internal/eU;->b:[J

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 13
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/eU;->e:Z

    if-eqz v0, :cond_0

    iget p2, p0, Lcom/android/tools/r8/internal/eU;->f:I

    goto :goto_2

    .line 14
    :cond_0
    iput-boolean v3, p0, Lcom/android/tools/r8/internal/eU;->e:Z

    .line 15
    iget v0, p0, Lcom/android/tools/r8/internal/eU;->f:I

    goto :goto_1

    .line 16
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/eU;->b:[J

    .line 17
    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/jA;->a(J)J

    move-result-wide v4

    long-to-int v4, v4

    iget v5, p0, Lcom/android/tools/r8/internal/eU;->d:I

    and-int/2addr v4, v5

    aget-wide v5, v2, v4

    cmp-long v7, v5, v0

    if-eqz v7, :cond_3

    cmp-long v5, v5, p2

    if-nez v5, :cond_2

    :goto_0
    move p2, v4

    goto :goto_2

    :cond_2
    add-int/2addr v4, v3

    .line 18
    iget v5, p0, Lcom/android/tools/r8/internal/eU;->d:I

    and-int/2addr v4, v5

    aget-wide v5, v2, v4

    cmp-long v7, v5, v0

    if-eqz v7, :cond_3

    cmp-long v5, v5, p2

    if-nez v5, :cond_2

    goto :goto_0

    :cond_3
    move v0, v4

    .line 19
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/eU;->b:[J

    aput-wide p2, v1, v0

    .line 20
    iget-object p2, p0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    aput-object p1, p2, v0

    .line 21
    iget p2, p0, Lcom/android/tools/r8/internal/eU;->h:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/tools/r8/internal/eU;->h:I

    iget p3, p0, Lcom/android/tools/r8/internal/eU;->g:I

    if-lt p2, p3, :cond_4

    add-int/lit8 p2, p2, 0x2

    const/high16 p3, 0x3f400000    # 0.75f

    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/jA;->a(IF)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/eU;->d(I)V

    :cond_4
    const/4 p2, -0x1

    :goto_2
    if-gez p2, :cond_5

    const/4 p1, 0x0

    return-object p1

    .line 22
    :cond_5
    iget-object p3, p0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    aget-object v0, p3, p2

    .line 23
    aput-object p1, p3, p2

    return-object v0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    instance-of p1, p1, Lcom/android/tools/r8/internal/eU;

    if-eqz p1, :cond_0

    :goto_0
    add-int/lit8 p1, v0, -0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/aU;

    .line 5
    iget-object v2, v0, Lcom/android/tools/r8/internal/aU;->c:Lcom/android/tools/r8/internal/eU;

    iget-object v3, v2, Lcom/android/tools/r8/internal/eU;->b:[J

    iget v0, v0, Lcom/android/tools/r8/internal/aU;->b:I

    aget-wide v4, v3, v0

    .line 6
    iget-object v2, v2, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    aget-object v0, v2, v0

    .line 7
    invoke-virtual {p0, v0, v4, v5}, Lcom/android/tools/r8/internal/eU;->a(Ljava/lang/Object;J)Ljava/lang/Object;

    move v0, p1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 10
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 11
    invoke-virtual {p0, v2, v3}, Lcom/android/tools/r8/internal/eU;->a(J)Z

    .line 12
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/tools/r8/internal/eU;->a(Ljava/lang/Object;J)Ljava/lang/Object;

    move v0, p1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(J)Z
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 24
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/eU;->e:Z

    return p1

    .line 25
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/eU;->b:[J

    .line 26
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/jA;->a(J)J

    move-result-wide v3

    long-to-int v3, v3

    iget v4, p0, Lcom/android/tools/r8/internal/eU;->d:I

    and-int/2addr v3, v4

    aget-wide v4, v2, v3

    cmp-long v6, v4, v0

    const/4 v7, 0x0

    if-nez v6, :cond_1

    return v7

    :cond_1
    cmp-long v4, p1, v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    return v5

    :cond_2
    add-int/2addr v3, v5

    .line 27
    iget v4, p0, Lcom/android/tools/r8/internal/eU;->d:I

    and-int/2addr v3, v4

    aget-wide v8, v2, v3

    cmp-long v4, v8, v0

    if-nez v4, :cond_3

    return v7

    :cond_3
    cmp-long v4, p1, v8

    if-nez v4, :cond_2

    return v5
.end method

.method public final b(J)Ljava/lang/Object;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/eU;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    iget p2, p0, Lcom/android/tools/r8/internal/eU;->f:I

    aget-object p1, p1, p2

    return-object p1

    :cond_0
    return-object v3

    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/eU;->b:[J

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/jA;->a(J)J

    move-result-wide v4

    long-to-int v4, v4

    iget v5, p0, Lcom/android/tools/r8/internal/eU;->d:I

    and-int/2addr v4, v5

    aget-wide v5, v2, v4

    cmp-long v7, v5, v0

    if-nez v7, :cond_2

    return-object v3

    :cond_2
    cmp-long v5, p1, v5

    if-nez v5, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    aget-object p1, p1, v4

    return-object p1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/android/tools/r8/internal/eU;->d:I

    and-int/2addr v4, v5

    aget-wide v5, v2, v4

    cmp-long v7, v5, v0

    if-nez v7, :cond_4

    return-object v3

    :cond_4
    cmp-long v5, p1, v5

    if-nez v5, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    aget-object p1, p1, v4

    return-object p1
.end method

.method public final c(J)Ljava/lang/Object;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/eU;->e:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/eU;->e:Z

    iget-object p1, p0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    iget p2, p0, Lcom/android/tools/r8/internal/eU;->f:I

    aget-object v0, p1, p2

    aput-object v3, p1, p2

    iget p1, p0, Lcom/android/tools/r8/internal/eU;->h:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/eU;->h:I

    iget v1, p0, Lcom/android/tools/r8/internal/eU;->g:I

    div-int/lit8 v1, v1, 0x4

    if-ge p1, v1, :cond_0

    const/16 p1, 0x10

    if-le p2, p1, :cond_0

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/eU;->d(I)V

    :cond_0
    return-object v0

    :cond_1
    return-object v3

    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/eU;->b:[J

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/jA;->a(J)J

    move-result-wide v4

    long-to-int v4, v4

    iget v5, p0, Lcom/android/tools/r8/internal/eU;->d:I

    and-int/2addr v4, v5

    aget-wide v5, v2, v4

    cmp-long v7, v5, v0

    if-nez v7, :cond_3

    return-object v3

    :cond_3
    cmp-long v5, p1, v5

    if-nez v5, :cond_4

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/eU;->e(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/android/tools/r8/internal/eU;->d:I

    and-int/2addr v4, v5

    aget-wide v5, v2, v4

    cmp-long v7, v5, v0

    if-nez v7, :cond_5

    return-object v3

    :cond_5
    cmp-long v5, p1, v5

    if-nez v5, :cond_4

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/eU;->e(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final clear()V
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/eU;->h:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/eU;->h:I

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/eU;->e:Z

    iget-object v0, p0, Lcom/android/tools/r8/internal/eU;->b:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/eU;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/tools/r8/internal/eU;->j:Lcom/android/tools/r8/internal/ZT;

    iput-object v1, v0, Lcom/android/tools/r8/internal/eU;->k:Lcom/android/tools/r8/internal/WT;

    iput-object v1, v0, Lcom/android/tools/r8/internal/eU;->i:Lcom/android/tools/r8/internal/bU;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/eU;->e:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/eU;->e:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/eU;->b:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/android/tools/r8/internal/eU;->b:[J

    iget-object v1, p0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/eU;->a(J)Z

    move-result p1

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/eU;->b:[J

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/eU;->e:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/tools/r8/internal/eU;->f:I

    aget-object v2, v0, v2

    if-ne v2, p1, :cond_0

    return v3

    :cond_0
    iget v2, p0, Lcom/android/tools/r8/internal/eU;->f:I

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-eqz v2, :cond_2

    aget-wide v5, v1, v4

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

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
    .locals 12

    iget-object v0, p0, Lcom/android/tools/r8/internal/eU;->b:[J

    iget-object v1, p0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    add-int/lit8 v2, p1, -0x1

    add-int/lit8 v3, p1, 0x1

    new-array v4, v3, [J

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/tools/r8/internal/eU;->f:I

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/eU;->e:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/tools/r8/internal/eU;->h:I

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/android/tools/r8/internal/eU;->h:I

    :goto_0
    add-int/lit8 v7, v6, -0x1

    if-eqz v6, :cond_3

    :goto_1
    add-int/lit8 v5, v5, -0x1

    aget-wide v8, v0, v5

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v8, v9}, Lcom/android/tools/r8/internal/jA;->a(J)J

    move-result-wide v8

    long-to-int v6, v8

    and-int/2addr v6, v2

    aget-wide v8, v4, v6

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    :goto_2
    add-int/lit8 v6, v6, 0x1

    and-int/2addr v6, v2

    aget-wide v8, v4, v6

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    aget-wide v8, v0, v5

    aput-wide v8, v4, v6

    aget-object v8, v1, v5

    aput-object v8, v3, v6

    move v6, v7

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/eU;->f:I

    aget-object v0, v1, v0

    aput-object v0, v3, p1

    iput p1, p0, Lcom/android/tools/r8/internal/eU;->f:I

    iput v2, p0, Lcom/android/tools/r8/internal/eU;->d:I

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->b(IF)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/eU;->g:I

    iput-object v4, p0, Lcom/android/tools/r8/internal/eU;->b:[J

    iput-object v3, p0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    return-void
.end method

.method public final e(I)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    aget-object v1, v0, p1

    const/4 v2, 0x0

    aput-object v2, v0, p1

    iget v0, p0, Lcom/android/tools/r8/internal/eU;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/eU;->h:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/eU;->b:[J

    :goto_0
    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/tools/r8/internal/eU;->d:I

    and-int/2addr v3, v4

    :goto_1
    aget-wide v4, v0, v3

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    aput-wide v6, v0, p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    aput-object v2, v0, p1

    iget p1, p0, Lcom/android/tools/r8/internal/eU;->h:I

    iget v0, p0, Lcom/android/tools/r8/internal/eU;->g:I

    div-int/lit8 v0, v0, 0x4

    if-ge p1, v0, :cond_0

    iget p1, p0, Lcom/android/tools/r8/internal/eU;->f:I

    const/16 v0, 0x10

    if-le p1, v0, :cond_0

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/eU;->d(I)V

    :cond_0
    return-object v1

    :cond_1
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/jA;->a(J)J

    move-result-wide v6

    long-to-int v6, v6

    iget v7, p0, Lcom/android/tools/r8/internal/eU;->d:I

    and-int/2addr v6, v7

    if-gt p1, v3, :cond_2

    if-ge p1, v6, :cond_3

    if-le v6, v3, :cond_4

    goto :goto_2

    :cond_2
    if-lt p1, v6, :cond_4

    if-le v6, v3, :cond_4

    :cond_3
    :goto_2
    aput-wide v4, v0, p1

    iget-object v4, p0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    aget-object v5, v4, v3

    aput-object v5, v4, p1

    move p1, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v7

    goto :goto_1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/eU;->i:Lcom/android/tools/r8/internal/bU;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/bU;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/bU;-><init>(Lcom/android/tools/r8/internal/eU;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/eU;->i:Lcom/android/tools/r8/internal/bU;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/eU;->i:Lcom/android/tools/r8/internal/bU;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    iget v2, p0, Lcom/android/tools/r8/internal/eU;->h:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/eU;->i:Lcom/android/tools/r8/internal/bU;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/tools/r8/internal/bU;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/bU;-><init>(Lcom/android/tools/r8/internal/eU;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/eU;->i:Lcom/android/tools/r8/internal/bU;

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/eU;->i:Lcom/android/tools/r8/internal/bU;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/eU;->a(J)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/eU;->b(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final hashCode()I
    .locals 9

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/eU;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/eU;->h:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/eU;->h:I

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-eqz v0, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/eU;->b:[J

    aget-wide v5, v0, v2

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const/16 v0, 0x20

    ushr-long v7, v5, v0

    xor-long/2addr v5, v7

    long-to-int v0, v5

    iget-object v5, p0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

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
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/eU;->e:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/eU;->f:I

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

    iget v0, p0, Lcom/android/tools/r8/internal/eU;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/eU;->j:Lcom/android/tools/r8/internal/ZT;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/ZT;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/ZT;-><init>(Lcom/android/tools/r8/internal/eU;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/eU;->j:Lcom/android/tools/r8/internal/ZT;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/eU;->j:Lcom/android/tools/r8/internal/ZT;

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/eU;->a(J)Z

    move-result p1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/tools/r8/internal/eU;->a(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
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

    iget v1, p0, Lcom/android/tools/r8/internal/eU;->f:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/eU;->d(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/eU;->h:I

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

    iget v1, p0, Lcom/android/tools/r8/internal/eU;->f:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/eU;->d(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/eU;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/eU;->a(J)Z

    move-result p1

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/eU;->c(J)Ljava/lang/Object;

    move-result-object v1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/eU;->h:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/eU;->i:Lcom/android/tools/r8/internal/bU;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/bU;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/bU;-><init>(Lcom/android/tools/r8/internal/eU;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/eU;->i:Lcom/android/tools/r8/internal/bU;

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/eU;->i:Lcom/android/tools/r8/internal/bU;

    new-instance v2, Lcom/android/tools/r8/internal/XT;

    iget-object v1, v1, Lcom/android/tools/r8/internal/bU;->b:Lcom/android/tools/r8/internal/eU;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/XT;-><init>(Lcom/android/tools/r8/internal/eU;)V

    iget v1, p0, Lcom/android/tools/r8/internal/eU;->h:I

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-eqz v1, :cond_3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    move v3, v1

    goto :goto_1

    :cond_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/XT;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/aU;

    iget-object v5, v1, Lcom/android/tools/r8/internal/aU;->c:Lcom/android/tools/r8/internal/eU;

    iget-object v5, v5, Lcom/android/tools/r8/internal/eU;->b:[J

    iget v6, v1, Lcom/android/tools/r8/internal/aU;->b:I

    aget-wide v6, v5, v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/tools/r8/internal/aU;->c:Lcom/android/tools/r8/internal/eU;

    iget-object v5, v5, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    iget v1, v1, Lcom/android/tools/r8/internal/aU;->b:I

    aget-object v1, v5, v1

    if-ne p0, v1, :cond_2

    const-string v1, "(this map)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v1, v4

    goto :goto_0

    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/eU;->k:Lcom/android/tools/r8/internal/WT;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/WT;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/WT;-><init>(Lcom/android/tools/r8/internal/eU;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/eU;->k:Lcom/android/tools/r8/internal/WT;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/eU;->k:Lcom/android/tools/r8/internal/WT;

    return-object v0
.end method
