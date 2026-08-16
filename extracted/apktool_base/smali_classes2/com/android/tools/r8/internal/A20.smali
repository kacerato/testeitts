.class public final Lcom/android/tools/r8/internal/A20;
.super Lcom/android/tools/r8/internal/h1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/D20;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/D20;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/A20;->b:Lcom/android/tools/r8/internal/D20;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/h1;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/A20;->b:Lcom/android/tools/r8/internal/D20;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/D20;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/A20;->b:Lcom/android/tools/r8/internal/D20;

    iget-boolean v4, v0, Lcom/android/tools/r8/internal/D20;->e:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/tools/r8/internal/D20;->c:[J

    iget v0, v0, Lcom/android/tools/r8/internal/D20;->f:I

    aget-wide v5, v4, v0

    cmp-long v0, v5, v2

    if-nez v0, :cond_2

    return p1

    :cond_2
    return v1

    :cond_3
    iget-object v4, p0, Lcom/android/tools/r8/internal/A20;->b:Lcom/android/tools/r8/internal/D20;

    iget-object v4, v4, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/tools/r8/internal/A20;->b:Lcom/android/tools/r8/internal/D20;

    iget v6, v6, Lcom/android/tools/r8/internal/D20;->d:I

    and-int/2addr v5, v6

    aget-object v6, v4, v5

    if-nez v6, :cond_4

    return v1

    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/A20;->b:Lcom/android/tools/r8/internal/D20;

    iget-object v0, v0, Lcom/android/tools/r8/internal/D20;->c:[J

    aget-wide v4, v0, v5

    cmp-long v0, v4, v2

    if-nez v0, :cond_5

    return p1

    :cond_5
    return v1

    :cond_6
    add-int/2addr v5, p1

    iget-object v6, p0, Lcom/android/tools/r8/internal/A20;->b:Lcom/android/tools/r8/internal/D20;

    iget v6, v6, Lcom/android/tools/r8/internal/D20;->d:I

    and-int/2addr v5, v6

    aget-object v6, v4, v5

    if-nez v6, :cond_7

    return v1

    :cond_7
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/A20;->b:Lcom/android/tools/r8/internal/D20;

    iget-object v0, v0, Lcom/android/tools/r8/internal/D20;->c:[J

    aget-wide v4, v0, v5

    cmp-long v0, v4, v2

    if-nez v0, :cond_8

    return p1

    :cond_8
    :goto_0
    return v1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/w20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/A20;->b:Lcom/android/tools/r8/internal/D20;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/w20;-><init>(Lcom/android/tools/r8/internal/D20;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/w20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/A20;->b:Lcom/android/tools/r8/internal/D20;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/w20;-><init>(Lcom/android/tools/r8/internal/D20;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 10

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/A20;->b:Lcom/android/tools/r8/internal/D20;

    iget-boolean v4, v0, Lcom/android/tools/r8/internal/D20;->e:Z

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/android/tools/r8/internal/D20;->c:[J

    iget v5, v0, Lcom/android/tools/r8/internal/D20;->f:I

    aget-wide v6, v4, v5

    cmp-long v2, v6, v2

    if-nez v2, :cond_3

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/D20;->e:Z

    iget-object v1, v0, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v5

    iget v1, v0, Lcom/android/tools/r8/internal/D20;->h:I

    sub-int/2addr v1, p1

    iput v1, v0, Lcom/android/tools/r8/internal/D20;->h:I

    iget v2, v0, Lcom/android/tools/r8/internal/D20;->g:I

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_2

    const/16 v1, 0x10

    if-le v5, v1, :cond_2

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/D20;->d(I)V

    :cond_2
    return p1

    :cond_3
    return v1

    :cond_4
    iget-object v4, p0, Lcom/android/tools/r8/internal/A20;->b:Lcom/android/tools/r8/internal/D20;

    iget-object v4, v4, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/tools/r8/internal/A20;->b:Lcom/android/tools/r8/internal/D20;

    iget v6, v6, Lcom/android/tools/r8/internal/D20;->d:I

    and-int/2addr v5, v6

    aget-object v6, v4, v5

    if-nez v6, :cond_5

    return v1

    :cond_5
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/A20;->b:Lcom/android/tools/r8/internal/D20;

    iget-object v4, v0, Lcom/android/tools/r8/internal/D20;->c:[J

    aget-wide v6, v4, v5

    cmp-long v2, v6, v2

    if-nez v2, :cond_6

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/D20;->e(I)J

    return p1

    :cond_6
    return v1

    :cond_7
    add-int/2addr v5, p1

    iget-object v6, p0, Lcom/android/tools/r8/internal/A20;->b:Lcom/android/tools/r8/internal/D20;

    iget v6, v6, Lcom/android/tools/r8/internal/D20;->d:I

    and-int/2addr v5, v6

    aget-object v6, v4, v5

    if-nez v6, :cond_8

    return v1

    :cond_8
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/tools/r8/internal/A20;->b:Lcom/android/tools/r8/internal/D20;

    iget-object v7, v6, Lcom/android/tools/r8/internal/D20;->c:[J

    aget-wide v8, v7, v5

    cmp-long v7, v8, v2

    if-nez v7, :cond_7

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/D20;->e(I)J

    return p1

    :cond_9
    :goto_0
    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/A20;->b:Lcom/android/tools/r8/internal/D20;

    iget v0, v0, Lcom/android/tools/r8/internal/D20;->h:I

    return v0
.end method
