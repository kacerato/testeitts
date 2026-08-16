.class public final Lcom/android/tools/r8/internal/b20;
.super Lcom/android/tools/r8/internal/Y0;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public transient c:[Ljava/lang/Object;

.field public transient d:[I

.field public e:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Y0;-><init>()V

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/tools/r8/internal/b20;->c:[Ljava/lang/Object;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/tools/r8/internal/b20;->d:[I

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Y0;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final b(ILjava/lang/Object;)I
    .locals 4

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/b20;->d(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5
    iget-object p2, p0, Lcom/android/tools/r8/internal/b20;->d:[I

    aget v1, p2, v0

    .line 6
    aput p1, p2, v0

    return v1

    .line 7
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/b20;->e:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/b20;->c:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_4

    const/4 v1, 0x2

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    mul-int/lit8 v2, v0, 0x2

    .line 8
    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 v1, v0, 0x2

    .line 9
    :goto_1
    new-array v1, v1, [I

    :goto_2
    add-int/lit8 v3, v0, -0x1

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/b20;->c:[Ljava/lang/Object;

    aget-object v0, v0, v3

    aput-object v0, v2, v3

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/b20;->d:[I

    aget v0, v0, v3

    aput v0, v1, v3

    move v0, v3

    goto :goto_2

    .line 12
    :cond_3
    iput-object v2, p0, Lcom/android/tools/r8/internal/b20;->c:[Ljava/lang/Object;

    .line 13
    iput-object v1, p0, Lcom/android/tools/r8/internal/b20;->d:[I

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/b20;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/b20;->e:I

    aput-object p2, v0, v1

    .line 15
    iget-object p2, p0, Lcom/android/tools/r8/internal/b20;->d:[I

    aput p1, p2, v1

    add-int/lit8 v1, v1, 0x1

    .line 16
    iput v1, p0, Lcom/android/tools/r8/internal/b20;->e:I

    .line 17
    iget p1, p0, Lcom/android/tools/r8/internal/Y0;->b:I

    return p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/b20;->c:[Ljava/lang/Object;

    .line 2
    iget v1, p0, Lcom/android/tools/r8/internal/b20;->e:I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_2

    aget-object v1, v0, v2

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/b20;->d:[I

    aget p1, p1, v2

    return p1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 3
    :cond_2
    iget p1, p0, Lcom/android/tools/r8/internal/Y0;->b:I

    return p1
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/b20;->d(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/tools/r8/internal/Y0;->b:I

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/b20;->d:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/android/tools/r8/internal/b20;->e:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/tools/r8/internal/b20;->c:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/b20;->d:[I

    invoke-static {v2, v3, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/android/tools/r8/internal/b20;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/b20;->e:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/b20;->c:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    return v0
.end method

.method public final clear()V
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/b20;->e:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/b20;->c:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/b20;->e:I

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/b20;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/b20;->c:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/tools/r8/internal/b20;->c:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/b20;->d:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/android/tools/r8/internal/b20;->d:[I

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/b20;->d(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/b20;->c:[Ljava/lang/Object;

    .line 2
    iget v1, p0, Lcom/android/tools/r8/internal/b20;->e:I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_2

    aget-object v1, v0, v2

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return v2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final d(I)Z
    .locals 2

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/b20;->e:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/b20;->d:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final i()Lcom/android/tools/r8/internal/I30;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/a20;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/a20;-><init>(Lcom/android/tools/r8/internal/b20;)V

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/b20;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/s30;

    iget-object v1, p0, Lcom/android/tools/r8/internal/b20;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/b20;->e:I

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/s30;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/b20;->e:I

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/FH;

    iget-object v1, p0, Lcom/android/tools/r8/internal/b20;->d:[I

    iget v2, p0, Lcom/android/tools/r8/internal/b20;->e:I

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/FH;-><init>([II)V

    new-instance v1, Lcom/android/tools/r8/internal/LH;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/LH;-><init>(Lcom/android/tools/r8/internal/FH;)V

    return-object v1
.end method
