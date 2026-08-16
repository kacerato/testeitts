.class public final Lcom/android/tools/r8/internal/Gd0;
.super Lcom/android/tools/r8/internal/h1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Jd0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Jd0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Gd0;->b:Lcom/android/tools/r8/internal/Jd0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/h1;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gd0;->b:Lcom/android/tools/r8/internal/Jd0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Jd0;->clear()V

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

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gd0;->b:Lcom/android/tools/r8/internal/Jd0;

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/Jd0;->e:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/tools/r8/internal/Jd0;->c:[Ljava/lang/Object;

    iget v0, v0, Lcom/android/tools/r8/internal/Jd0;->f:I

    aget-object v0, v3, v0

    if-ne v0, p1, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/Gd0;->b:Lcom/android/tools/r8/internal/Jd0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Jd0;->b:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/Gd0;->b:Lcom/android/tools/r8/internal/Jd0;

    iget v6, v5, Lcom/android/tools/r8/internal/Jd0;->d:I

    and-int/2addr v4, v6

    aget-object v6, v3, v4

    if-nez v6, :cond_3

    return v1

    :cond_3
    if-ne v0, v6, :cond_5

    iget-object v0, v5, Lcom/android/tools/r8/internal/Jd0;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    if-ne v0, p1, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/tools/r8/internal/Gd0;->b:Lcom/android/tools/r8/internal/Jd0;

    iget v6, v5, Lcom/android/tools/r8/internal/Jd0;->d:I

    and-int/2addr v4, v6

    aget-object v6, v3, v4

    if-nez v6, :cond_6

    return v1

    :cond_6
    if-ne v0, v6, :cond_5

    iget-object v0, v5, Lcom/android/tools/r8/internal/Jd0;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    if-ne v0, p1, :cond_7

    return v2

    :cond_7
    return v1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Cd0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Gd0;->b:Lcom/android/tools/r8/internal/Jd0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Cd0;-><init>(Lcom/android/tools/r8/internal/Jd0;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Cd0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Gd0;->b:Lcom/android/tools/r8/internal/Jd0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Cd0;-><init>(Lcom/android/tools/r8/internal/Jd0;)V

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

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gd0;->b:Lcom/android/tools/r8/internal/Jd0;

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/Jd0;->e:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/tools/r8/internal/Jd0;->c:[Ljava/lang/Object;

    iget v4, v0, Lcom/android/tools/r8/internal/Jd0;->f:I

    aget-object v5, v3, v4

    if-ne v5, p1, :cond_2

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/Jd0;->e:Z

    iget-object p1, v0, Lcom/android/tools/r8/internal/Jd0;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, p1, v4

    aget-object p1, v3, v4

    aput-object v1, v3, v4

    iget p1, v0, Lcom/android/tools/r8/internal/Jd0;->h:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/android/tools/r8/internal/Jd0;->h:I

    iget v1, v0, Lcom/android/tools/r8/internal/Jd0;->g:I

    div-int/lit8 v1, v1, 0x4

    if-ge p1, v1, :cond_1

    const/16 p1, 0x10

    if-le v4, p1, :cond_1

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/Jd0;->d(I)V

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    iget-object v3, p0, Lcom/android/tools/r8/internal/Gd0;->b:Lcom/android/tools/r8/internal/Jd0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Jd0;->b:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/Gd0;->b:Lcom/android/tools/r8/internal/Jd0;

    iget v6, v5, Lcom/android/tools/r8/internal/Jd0;->d:I

    and-int/2addr v4, v6

    aget-object v6, v3, v4

    if-nez v6, :cond_4

    return v1

    :cond_4
    if-ne v6, v0, :cond_6

    iget-object v0, v5, Lcom/android/tools/r8/internal/Jd0;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    if-ne v0, p1, :cond_5

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/Jd0;->e(I)Ljava/lang/Object;

    return v2

    :cond_5
    return v1

    :cond_6
    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/tools/r8/internal/Gd0;->b:Lcom/android/tools/r8/internal/Jd0;

    iget v6, v5, Lcom/android/tools/r8/internal/Jd0;->d:I

    and-int/2addr v4, v6

    aget-object v6, v3, v4

    if-nez v6, :cond_7

    return v1

    :cond_7
    if-ne v6, v0, :cond_6

    iget-object v6, v5, Lcom/android/tools/r8/internal/Jd0;->c:[Ljava/lang/Object;

    aget-object v6, v6, v4

    if-ne v6, p1, :cond_6

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/Jd0;->e(I)Ljava/lang/Object;

    return v2
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gd0;->b:Lcom/android/tools/r8/internal/Jd0;

    iget v0, v0, Lcom/android/tools/r8/internal/Jd0;->h:I

    return v0
.end method
