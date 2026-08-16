.class public final Lcom/android/tools/r8/internal/eF;
.super Lcom/android/tools/r8/internal/h1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/hF;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/hF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/eF;->b:Lcom/android/tools/r8/internal/hF;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/h1;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/eF;->b:Lcom/android/tools/r8/internal/hF;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hF;->clear()V

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

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/eF;->b:Lcom/android/tools/r8/internal/hF;

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/hF;->f:Z

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/tools/r8/internal/hF;->d:[I

    iget v0, v0, Lcom/android/tools/r8/internal/hF;->g:I

    aget v0, v3, v0

    if-ne v0, p1, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/eF;->b:Lcom/android/tools/r8/internal/hF;

    iget-object v3, v3, Lcom/android/tools/r8/internal/hF;->c:[I

    invoke-static {v0}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/eF;->b:Lcom/android/tools/r8/internal/hF;

    iget v6, v5, Lcom/android/tools/r8/internal/hF;->e:I

    and-int/2addr v4, v6

    aget v6, v3, v4

    if-nez v6, :cond_5

    return v1

    :cond_5
    if-ne v0, v6, :cond_7

    iget-object v0, v5, Lcom/android/tools/r8/internal/hF;->d:[I

    aget v0, v0, v4

    if-ne v0, p1, :cond_6

    return v2

    :cond_6
    return v1

    :cond_7
    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/tools/r8/internal/eF;->b:Lcom/android/tools/r8/internal/hF;

    iget v6, v5, Lcom/android/tools/r8/internal/hF;->e:I

    and-int/2addr v4, v6

    aget v6, v3, v4

    if-nez v6, :cond_8

    return v1

    :cond_8
    if-ne v0, v6, :cond_7

    iget-object v0, v5, Lcom/android/tools/r8/internal/hF;->d:[I

    aget v0, v0, v4

    if-ne v0, p1, :cond_9

    return v2

    :cond_9
    :goto_0
    return v1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/aF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/eF;->b:Lcom/android/tools/r8/internal/hF;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/aF;-><init>(Lcom/android/tools/r8/internal/hF;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/aF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/eF;->b:Lcom/android/tools/r8/internal/hF;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/aF;-><init>(Lcom/android/tools/r8/internal/hF;)V

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

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/eF;->b:Lcom/android/tools/r8/internal/hF;

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/hF;->f:Z

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/tools/r8/internal/hF;->d:[I

    iget v4, v0, Lcom/android/tools/r8/internal/hF;->g:I

    aget v3, v3, v4

    if-ne v3, p1, :cond_4

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/hF;->f:Z

    iget p1, v0, Lcom/android/tools/r8/internal/hF;->i:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/android/tools/r8/internal/hF;->i:I

    iget v1, v0, Lcom/android/tools/r8/internal/hF;->h:I

    div-int/lit8 v1, v1, 0x4

    if-ge p1, v1, :cond_3

    const/16 p1, 0x10

    if-le v4, p1, :cond_3

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/hF;->e(I)V

    :cond_3
    return v2

    :cond_4
    return v1

    :cond_5
    iget-object v3, p0, Lcom/android/tools/r8/internal/eF;->b:Lcom/android/tools/r8/internal/hF;

    iget-object v3, v3, Lcom/android/tools/r8/internal/hF;->c:[I

    invoke-static {v0}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/eF;->b:Lcom/android/tools/r8/internal/hF;

    iget v6, v5, Lcom/android/tools/r8/internal/hF;->e:I

    and-int/2addr v4, v6

    aget v6, v3, v4

    if-nez v6, :cond_6

    return v1

    :cond_6
    if-ne v6, v0, :cond_8

    iget-object v0, v5, Lcom/android/tools/r8/internal/hF;->d:[I

    aget v0, v0, v4

    if-ne v0, p1, :cond_7

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/hF;->f(I)I

    return v2

    :cond_7
    return v1

    :cond_8
    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/tools/r8/internal/eF;->b:Lcom/android/tools/r8/internal/hF;

    iget v6, v5, Lcom/android/tools/r8/internal/hF;->e:I

    and-int/2addr v4, v6

    aget v6, v3, v4

    if-nez v6, :cond_9

    return v1

    :cond_9
    if-ne v6, v0, :cond_8

    iget-object v6, v5, Lcom/android/tools/r8/internal/hF;->d:[I

    aget v6, v6, v4

    if-ne v6, p1, :cond_8

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/hF;->f(I)I

    return v2

    :cond_a
    :goto_0
    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/eF;->b:Lcom/android/tools/r8/internal/hF;

    iget v0, v0, Lcom/android/tools/r8/internal/hF;->i:I

    return v0
.end method
