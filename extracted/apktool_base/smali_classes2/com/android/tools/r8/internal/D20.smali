.class public final Lcom/android/tools/r8/internal/D20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/android/tools/r8/internal/xy;
.implements Ljava/io/Serializable;
.implements Ljava/util/Map;


# instance fields
.field public transient b:[Ljava/lang/Object;

.field public transient c:[J

.field public transient d:I

.field public transient e:Z

.field public transient f:I

.field public transient g:I

.field public h:I

.field public transient i:Lcom/android/tools/r8/internal/A20;

.field public transient j:Lcom/android/tools/r8/internal/y20;

.field public transient k:Lcom/android/tools/r8/internal/v20;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/jA;->a(IF)I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/internal/D20;->f:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/android/tools/r8/internal/D20;->d:I

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/jA;->b(IF)I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/internal/D20;->g:I

    iget v0, p0, Lcom/android/tools/r8/internal/D20;->f:I

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/tools/r8/internal/D20;->c:[J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)J
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 12
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/D20;->e:Z

    if-eqz v1, :cond_0

    iget p1, p0, Lcom/android/tools/r8/internal/D20;->f:I

    goto :goto_2

    .line 13
    :cond_0
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/D20;->e:Z

    .line 14
    iget v0, p0, Lcom/android/tools/r8/internal/D20;->f:I

    goto :goto_1

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v2

    iget v3, p0, Lcom/android/tools/r8/internal/D20;->d:I

    and-int/2addr v2, v3

    aget-object v3, v1, v2

    if-eqz v3, :cond_3

    .line 17
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    move p1, v2

    goto :goto_2

    :cond_2
    add-int/2addr v2, v0

    .line 18
    iget v3, p0, Lcom/android/tools/r8/internal/D20;->d:I

    and-int/2addr v2, v3

    aget-object v3, v1, v2

    if-eqz v3, :cond_3

    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move v0, v2

    .line 20
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 21
    iget-object p1, p0, Lcom/android/tools/r8/internal/D20;->c:[J

    aput-wide p2, p1, v0

    .line 22
    iget p1, p0, Lcom/android/tools/r8/internal/D20;->h:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/D20;->h:I

    iget v0, p0, Lcom/android/tools/r8/internal/D20;->g:I

    if-lt p1, v0, :cond_4

    add-int/lit8 p1, p1, 0x2

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->a(IF)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/D20;->d(I)V

    :cond_4
    const/4 p1, -0x1

    :goto_2
    if-gez p1, :cond_5

    const-wide/16 p1, 0x0

    return-wide p1

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/D20;->c:[J

    aget-wide v1, v0, p1

    .line 24
    aput-wide p2, v0, p1

    return-wide v1
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
    instance-of p1, p1, Lcom/android/tools/r8/internal/D20;

    if-eqz p1, :cond_0

    :goto_0
    add-int/lit8 p1, v0, -0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/z20;

    .line 5
    iget-object v2, v0, Lcom/android/tools/r8/internal/z20;->c:Lcom/android/tools/r8/internal/D20;

    iget-object v3, v2, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    iget v0, v0, Lcom/android/tools/r8/internal/z20;->b:I

    aget-object v3, v3, v0

    .line 6
    iget-object v2, v2, Lcom/android/tools/r8/internal/D20;->c:[J

    aget-wide v4, v2, v0

    .line 7
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/tools/r8/internal/D20;->a(Ljava/lang/Object;J)J

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 10
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/D20;->containsKey(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/tools/r8/internal/D20;->a(Ljava/lang/Object;J)J

    move v0, p1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(J)Z
    .locals 7

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/D20;->c:[J

    .line 26
    iget-object v1, p0, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    .line 27
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/D20;->e:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/tools/r8/internal/D20;->f:I

    aget-wide v4, v0, v2

    cmp-long v2, v4, p1

    if-nez v2, :cond_0

    return v3

    .line 28
    :cond_0
    iget v2, p0, Lcom/android/tools/r8/internal/D20;->f:I

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-eqz v2, :cond_2

    aget-object v2, v1, v4

    if-eqz v2, :cond_1

    aget-wide v5, v0, v4

    cmp-long v2, v5, p1

    if-nez v2, :cond_1

    return v3

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/Object;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/D20;->e:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/D20;->e:Z

    iget-object p1, p0, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    iget v0, p0, Lcom/android/tools/r8/internal/D20;->f:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    iget-object p1, p0, Lcom/android/tools/r8/internal/D20;->c:[J

    aget-wide v1, p1, v0

    iget p1, p0, Lcom/android/tools/r8/internal/D20;->h:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/D20;->h:I

    iget v3, p0, Lcom/android/tools/r8/internal/D20;->g:I

    div-int/lit8 v3, v3, 0x4

    if-ge p1, v3, :cond_0

    const/16 p1, 0x10

    if-le v0, p1, :cond_0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/D20;->d(I)V

    :cond_0
    return-wide v1

    :cond_1
    return-wide v0

    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v3

    iget v4, p0, Lcom/android/tools/r8/internal/D20;->d:I

    and-int/2addr v3, v4

    aget-object v4, v2, v3

    if-nez v4, :cond_3

    return-wide v0

    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/D20;->e(I)J

    move-result-wide v0

    return-wide v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/android/tools/r8/internal/D20;->d:I

    and-int/2addr v3, v4

    aget-object v4, v2, v3

    if-nez v4, :cond_5

    return-wide v0

    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/D20;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final clear()V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/D20;->h:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/D20;->h:I

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/D20;->e:Z

    iget-object v0, p0, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/D20;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/tools/r8/internal/D20;->j:Lcom/android/tools/r8/internal/y20;

    iput-object v1, v0, Lcom/android/tools/r8/internal/D20;->k:Lcom/android/tools/r8/internal/v20;

    iput-object v1, v0, Lcom/android/tools/r8/internal/D20;->i:Lcom/android/tools/r8/internal/A20;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/D20;->e:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/D20;->e:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/D20;->c:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/android/tools/r8/internal/D20;->c:[J

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 5

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/D20;->e:Z

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v1

    iget v2, p0, Lcom/android/tools/r8/internal/D20;->d:I

    and-int/2addr v1, v2

    aget-object v2, v0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    return v4

    :cond_2
    add-int/2addr v1, v4

    iget v2, p0, Lcom/android/tools/r8/internal/D20;->d:I

    and-int/2addr v1, v2

    aget-object v2, v0, v1

    if-nez v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v4
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/D20;->a(J)Z

    move-result p1

    return p1
.end method

.method public final d(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/D20;->c:[J

    add-int/lit8 v2, p1, -0x1

    add-int/lit8 v3, p1, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-array v3, v3, [J

    iget v5, p0, Lcom/android/tools/r8/internal/D20;->f:I

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/D20;->e:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/tools/r8/internal/D20;->h:I

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/android/tools/r8/internal/D20;->h:I

    :goto_0
    add-int/lit8 v7, v6, -0x1

    if-eqz v6, :cond_3

    :goto_1
    add-int/lit8 v5, v5, -0x1

    aget-object v6, v0, v5

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v6

    and-int/2addr v6, v2

    aget-object v8, v4, v6

    if-eqz v8, :cond_2

    :goto_2
    add-int/lit8 v6, v6, 0x1

    and-int/2addr v6, v2

    aget-object v8, v4, v6

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    aget-object v8, v0, v5

    aput-object v8, v4, v6

    aget-wide v8, v1, v5

    aput-wide v8, v3, v6

    move v6, v7

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/D20;->f:I

    aget-wide v0, v1, v0

    aput-wide v0, v3, p1

    iput p1, p0, Lcom/android/tools/r8/internal/D20;->f:I

    iput v2, p0, Lcom/android/tools/r8/internal/D20;->d:I

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->b(IF)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/D20;->g:I

    iput-object v4, p0, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/tools/r8/internal/D20;->c:[J

    return-void
.end method

.method public final e(I)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/D20;->c:[J

    aget-wide v1, v0, p1

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/D20;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/D20;->h:I

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    :goto_0
    add-int/lit8 v3, p1, 0x1

    .line 4
    iget v4, p0, Lcom/android/tools/r8/internal/D20;->d:I

    and-int/2addr v3, v4

    .line 5
    :goto_1
    aget-object v4, v0, v3

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 6
    aput-object v3, v0, p1

    .line 7
    iget p1, p0, Lcom/android/tools/r8/internal/D20;->h:I

    iget v0, p0, Lcom/android/tools/r8/internal/D20;->g:I

    div-int/lit8 v0, v0, 0x4

    if-ge p1, v0, :cond_0

    iget p1, p0, Lcom/android/tools/r8/internal/D20;->f:I

    const/16 v0, 0x10

    if-le p1, v0, :cond_0

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/D20;->d(I)V

    :cond_0
    return-wide v1

    .line 8
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v5

    iget v6, p0, Lcom/android/tools/r8/internal/D20;->d:I

    and-int/2addr v5, v6

    if-gt p1, v3, :cond_2

    if-ge p1, v5, :cond_3

    if-le v5, v3, :cond_4

    goto :goto_2

    :cond_2
    if-lt p1, v5, :cond_4

    if-le v5, v3, :cond_4

    .line 9
    :cond_3
    :goto_2
    aput-object v4, v0, p1

    .line 10
    iget-object v4, p0, Lcom/android/tools/r8/internal/D20;->c:[J

    aget-wide v5, v4, v3

    aput-wide v5, v4, p1

    move p1, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v6

    goto :goto_1
.end method

.method public final e()Lcom/android/tools/r8/internal/A20;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/D20;->i:Lcom/android/tools/r8/internal/A20;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/A20;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/A20;-><init>(Lcom/android/tools/r8/internal/D20;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/D20;->i:Lcom/android/tools/r8/internal/A20;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/D20;->i:Lcom/android/tools/r8/internal/A20;

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D20;->e()Lcom/android/tools/r8/internal/A20;

    move-result-object v0

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

    iget v2, p0, Lcom/android/tools/r8/internal/D20;->h:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D20;->e()Lcom/android/tools/r8/internal/A20;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/D20;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/D20;->e:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/D20;->c:[J

    iget v0, p0, Lcom/android/tools/r8/internal/D20;->f:I

    aget-wide v0, p1, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v1

    iget v2, p0, Lcom/android/tools/r8/internal/D20;->d:I

    and-int/2addr v1, v2

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/internal/D20;->c:[J

    aget-wide v0, p1, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/tools/r8/internal/D20;->d:I

    and-int/2addr v1, v2

    aget-object v2, v0, v1

    if-nez v2, :cond_4

    :cond_3
    :goto_0
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/internal/D20;->c:[J

    aget-wide v0, p1, v1

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public final hashCode()I
    .locals 10

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/D20;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/D20;->h:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/D20;->h:I

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1
    add-int/lit8 v4, v0, -0x1

    const/16 v5, 0x20

    if-eqz v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    if-eq p0, v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/D20;->c:[J

    aget-wide v6, v0, v1

    ushr-long v8, v6, v5

    xor-long v5, v6, v8

    long-to-int v0, v5

    xor-int/2addr v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    move v0, v4

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/D20;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/D20;->c:[J

    iget v1, p0, Lcom/android/tools/r8/internal/D20;->f:I

    aget-wide v3, v0, v1

    ushr-long v0, v3, v5

    xor-long/2addr v0, v3

    long-to-int v0, v0

    add-int/2addr v2, v0

    :cond_4
    return v2
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/D20;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/D20;->j:Lcom/android/tools/r8/internal/y20;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/y20;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/y20;-><init>(Lcom/android/tools/r8/internal/D20;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/D20;->j:Lcom/android/tools/r8/internal/y20;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/D20;->j:Lcom/android/tools/r8/internal/y20;

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/D20;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/tools/r8/internal/D20;->a(Ljava/lang/Object;J)J

    move-result-wide p1

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

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

    iget v1, p0, Lcom/android/tools/r8/internal/D20;->f:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/D20;->d(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/D20;->h:I

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

    iget v1, p0, Lcom/android/tools/r8/internal/D20;->f:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/D20;->d(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/D20;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/D20;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/D20;->b(Ljava/lang/Object;)J

    move-result-wide v1

    if-eqz v0, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/D20;->h:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D20;->e()Lcom/android/tools/r8/internal/A20;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/w20;

    iget-object v1, v1, Lcom/android/tools/r8/internal/A20;->b:Lcom/android/tools/r8/internal/D20;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/w20;-><init>(Lcom/android/tools/r8/internal/D20;)V

    iget v1, p0, Lcom/android/tools/r8/internal/D20;->h:I

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-eqz v1, :cond_2

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    move v3, v1

    goto :goto_1

    :cond_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/w20;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/z20;

    iget-object v5, v1, Lcom/android/tools/r8/internal/z20;->c:Lcom/android/tools/r8/internal/D20;

    iget-object v5, v5, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    iget v6, v1, Lcom/android/tools/r8/internal/z20;->b:I

    aget-object v5, v5, v6

    if-ne p0, v5, :cond_1

    const-string v5, "(this map)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v5, "=>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/tools/r8/internal/z20;->c:Lcom/android/tools/r8/internal/D20;

    iget-object v5, v5, Lcom/android/tools/r8/internal/D20;->c:[J

    iget v1, v1, Lcom/android/tools/r8/internal/z20;->b:I

    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v4

    goto :goto_0

    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/D20;->k:Lcom/android/tools/r8/internal/v20;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/v20;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/v20;-><init>(Lcom/android/tools/r8/internal/D20;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/D20;->k:Lcom/android/tools/r8/internal/v20;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/D20;->k:Lcom/android/tools/r8/internal/v20;

    return-object v0
.end method
