.class public final Lcom/android/tools/r8/internal/X10;
.super Lcom/android/tools/r8/internal/h1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Y10;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Y10;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/X10;->b:Lcom/android/tools/r8/internal/Y10;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/h1;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/X10;->b:Lcom/android/tools/r8/internal/Y10;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Y10;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/X10;->b:Lcom/android/tools/r8/internal/Y10;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Y10;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/W10;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/W10;-><init>(Lcom/android/tools/r8/internal/X10;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/W10;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/W10;-><init>(Lcom/android/tools/r8/internal/X10;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v2, p0, Lcom/android/tools/r8/internal/X10;->b:Lcom/android/tools/r8/internal/Y10;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Y10;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/X10;->b:Lcom/android/tools/r8/internal/Y10;

    iget-object v3, v2, Lcom/android/tools/r8/internal/Y10;->c:[Z

    aget-boolean v3, v3, v0

    if-eq p1, v3, :cond_2

    goto :goto_0

    :cond_2
    iget p1, v2, Lcom/android/tools/r8/internal/Y10;->d:I

    sub-int/2addr p1, v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    iget-object v2, v2, Lcom/android/tools/r8/internal/Y10;->b:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/X10;->b:Lcom/android/tools/r8/internal/Y10;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Y10;->c:[Z

    invoke-static {v2, v3, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/X10;->b:Lcom/android/tools/r8/internal/Y10;

    iget v0, p1, Lcom/android/tools/r8/internal/Y10;->d:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/tools/r8/internal/Y10;->d:I

    iget-object p1, p1, Lcom/android/tools/r8/internal/Y10;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, p1, v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/X10;->b:Lcom/android/tools/r8/internal/Y10;

    iget v0, v0, Lcom/android/tools/r8/internal/Y10;->d:I

    return v0
.end method
