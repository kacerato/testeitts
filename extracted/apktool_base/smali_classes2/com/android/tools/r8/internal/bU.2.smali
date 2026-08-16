.class public final Lcom/android/tools/r8/internal/bU;
.super Lcom/android/tools/r8/internal/h1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/eU;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/eU;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/bU;->b:Lcom/android/tools/r8/internal/eU;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/h1;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bU;->b:Lcom/android/tools/r8/internal/eU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eU;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 12

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v6, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/bU;->b:Lcom/android/tools/r8/internal/eU;

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/eU;->e:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    iget v0, v0, Lcom/android/tools/r8/internal/eU;->f:I

    aget-object v0, v2, v0

    if-ne v0, p1, :cond_2

    return v6

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/bU;->b:Lcom/android/tools/r8/internal/eU;

    iget-object v0, v0, Lcom/android/tools/r8/internal/eU;->b:[J

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/jA;->a(J)J

    move-result-wide v7

    long-to-int v7, v7

    iget-object v8, p0, Lcom/android/tools/r8/internal/bU;->b:Lcom/android/tools/r8/internal/eU;

    iget v9, v8, Lcom/android/tools/r8/internal/eU;->d:I

    and-int/2addr v7, v9

    aget-wide v9, v0, v7

    cmp-long v11, v9, v4

    if-nez v11, :cond_4

    return v1

    :cond_4
    cmp-long v9, v2, v9

    if-nez v9, :cond_6

    iget-object v0, v8, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    aget-object v0, v0, v7

    if-ne v0, p1, :cond_5

    return v6

    :cond_5
    return v1

    :cond_6
    add-int/2addr v7, v6

    iget-object v8, p0, Lcom/android/tools/r8/internal/bU;->b:Lcom/android/tools/r8/internal/eU;

    iget v9, v8, Lcom/android/tools/r8/internal/eU;->d:I

    and-int/2addr v7, v9

    aget-wide v9, v0, v7

    cmp-long v11, v9, v4

    if-nez v11, :cond_7

    return v1

    :cond_7
    cmp-long v9, v2, v9

    if-nez v9, :cond_6

    iget-object v0, v8, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    aget-object v0, v0, v7

    if-ne v0, p1, :cond_8

    return v6

    :cond_8
    :goto_0
    return v1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/XT;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bU;->b:Lcom/android/tools/r8/internal/eU;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/XT;-><init>(Lcom/android/tools/r8/internal/eU;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/XT;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bU;->b:Lcom/android/tools/r8/internal/eU;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/XT;-><init>(Lcom/android/tools/r8/internal/eU;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 12

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v6, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/bU;->b:Lcom/android/tools/r8/internal/eU;

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/eU;->e:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    iget v3, v0, Lcom/android/tools/r8/internal/eU;->f:I

    aget-object v4, v2, v3

    if-ne v4, p1, :cond_3

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/eU;->e:Z

    const/4 p1, 0x0

    aput-object p1, v2, v3

    iget p1, v0, Lcom/android/tools/r8/internal/eU;->h:I

    sub-int/2addr p1, v6

    iput p1, v0, Lcom/android/tools/r8/internal/eU;->h:I

    iget v1, v0, Lcom/android/tools/r8/internal/eU;->g:I

    div-int/lit8 v1, v1, 0x4

    if-ge p1, v1, :cond_2

    const/16 p1, 0x10

    if-le v3, p1, :cond_2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/eU;->d(I)V

    :cond_2
    return v6

    :cond_3
    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/bU;->b:Lcom/android/tools/r8/internal/eU;

    iget-object v0, v0, Lcom/android/tools/r8/internal/eU;->b:[J

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/jA;->a(J)J

    move-result-wide v7

    long-to-int v7, v7

    iget-object v8, p0, Lcom/android/tools/r8/internal/bU;->b:Lcom/android/tools/r8/internal/eU;

    iget v9, v8, Lcom/android/tools/r8/internal/eU;->d:I

    and-int/2addr v7, v9

    aget-wide v9, v0, v7

    cmp-long v11, v9, v4

    if-nez v11, :cond_5

    return v1

    :cond_5
    cmp-long v9, v9, v2

    if-nez v9, :cond_7

    iget-object v0, v8, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    aget-object v0, v0, v7

    if-ne v0, p1, :cond_6

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/eU;->e(I)Ljava/lang/Object;

    return v6

    :cond_6
    return v1

    :cond_7
    add-int/2addr v7, v6

    iget-object v8, p0, Lcom/android/tools/r8/internal/bU;->b:Lcom/android/tools/r8/internal/eU;

    iget v9, v8, Lcom/android/tools/r8/internal/eU;->d:I

    and-int/2addr v7, v9

    aget-wide v9, v0, v7

    cmp-long v11, v9, v4

    if-nez v11, :cond_8

    return v1

    :cond_8
    cmp-long v9, v9, v2

    if-nez v9, :cond_7

    iget-object v9, v8, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    aget-object v9, v9, v7

    if-ne v9, p1, :cond_7

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/eU;->e(I)Ljava/lang/Object;

    return v6

    :cond_9
    :goto_0
    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bU;->b:Lcom/android/tools/r8/internal/eU;

    iget v0, v0, Lcom/android/tools/r8/internal/eU;->h:I

    return v0
.end method
