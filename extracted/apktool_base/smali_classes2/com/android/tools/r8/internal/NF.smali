.class public final Lcom/android/tools/r8/internal/NF;
.super Lcom/android/tools/r8/internal/h1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/QF;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/QF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/h1;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/QF;->clear()V

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

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/QF;->e:Z

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/tools/r8/internal/QF;->c:[Ljava/lang/Object;

    iget v0, v0, Lcom/android/tools/r8/internal/QF;->f:I

    aget-object v0, v3, v0

    if-nez v0, :cond_2

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    return v2

    :cond_3
    return v1

    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    iget-object v3, v3, Lcom/android/tools/r8/internal/QF;->b:[I

    invoke-static {v0}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    iget v6, v5, Lcom/android/tools/r8/internal/QF;->d:I

    and-int/2addr v4, v6

    aget v6, v3, v4

    if-nez v6, :cond_5

    return v1

    :cond_5
    if-ne v0, v6, :cond_8

    iget-object v0, v5, Lcom/android/tools/r8/internal/QF;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    if-nez v0, :cond_7

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v1

    :cond_7
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_8
    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    iget v6, v5, Lcom/android/tools/r8/internal/QF;->d:I

    and-int/2addr v4, v6

    aget v6, v3, v4

    if-nez v6, :cond_9

    return v1

    :cond_9
    if-ne v0, v6, :cond_8

    iget-object v0, v5, Lcom/android/tools/r8/internal/QF;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    if-nez v0, :cond_b

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v1

    :cond_b
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_c
    :goto_1
    return v1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/JF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/JF;-><init>(Lcom/android/tools/r8/internal/QF;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/JF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/JF;-><init>(Lcom/android/tools/r8/internal/QF;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/QF;->e:Z

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/tools/r8/internal/QF;->c:[Ljava/lang/Object;

    iget v0, v0, Lcom/android/tools/r8/internal/QF;->f:I

    aget-object v0, v3, v0

    if-nez v0, :cond_2

    if-nez p1, :cond_4

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    iput-boolean v1, p1, Lcom/android/tools/r8/internal/QF;->e:Z

    iget-object v0, p1, Lcom/android/tools/r8/internal/QF;->c:[Ljava/lang/Object;

    iget v1, p1, Lcom/android/tools/r8/internal/QF;->f:I

    aget-object v3, v0, v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    iget v0, p1, Lcom/android/tools/r8/internal/QF;->h:I

    sub-int/2addr v0, v2

    iput v0, p1, Lcom/android/tools/r8/internal/QF;->h:I

    iget v3, p1, Lcom/android/tools/r8/internal/QF;->g:I

    div-int/lit8 v3, v3, 0x4

    if-ge v0, v3, :cond_3

    const/16 v0, 0x10

    if-le v1, v0, :cond_3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/QF;->d(I)V

    :cond_3
    return v2

    :cond_4
    return v1

    :cond_5
    iget-object v3, p0, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    iget-object v3, v3, Lcom/android/tools/r8/internal/QF;->b:[I

    invoke-static {v0}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    iget v6, v5, Lcom/android/tools/r8/internal/QF;->d:I

    and-int/2addr v4, v6

    aget v6, v3, v4

    if-nez v6, :cond_6

    return v1

    :cond_6
    if-ne v6, v0, :cond_9

    iget-object v0, v5, Lcom/android/tools/r8/internal/QF;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    if-nez v0, :cond_7

    if-nez p1, :cond_8

    goto :goto_1

    :cond_7
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/QF;->e(I)Ljava/lang/Object;

    return v2

    :cond_8
    return v1

    :cond_9
    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    iget v6, v5, Lcom/android/tools/r8/internal/QF;->d:I

    and-int/2addr v4, v6

    aget v6, v3, v4

    if-nez v6, :cond_a

    return v1

    :cond_a
    if-ne v6, v0, :cond_9

    iget-object v5, v5, Lcom/android/tools/r8/internal/QF;->c:[Ljava/lang/Object;

    aget-object v5, v5, v4

    if-nez v5, :cond_b

    if-nez p1, :cond_9

    goto :goto_2

    :cond_b
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/QF;->e(I)Ljava/lang/Object;

    return v2

    :cond_c
    :goto_3
    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    iget v0, v0, Lcom/android/tools/r8/internal/QF;->h:I

    return v0
.end method
