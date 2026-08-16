.class public final Lcom/android/tools/r8/internal/CF;
.super Lcom/android/tools/r8/internal/N;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public transient b:[I

.field public transient c:[Ljava/lang/Object;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/N;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/GH;->a:[I

    iput-object v0, p0, Lcom/android/tools/r8/internal/CF;->b:[I

    sget-object v0, Lcom/android/tools/r8/internal/t30;->a:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/tools/r8/internal/CF;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/CF;->d(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/internal/CF;->c:[Ljava/lang/Object;

    aget-object v1, p1, v0

    .line 4
    aput-object p2, p1, v0

    return-object v1

    .line 5
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/CF;->d:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/CF;->b:[I

    array-length v1, v1

    if-ne v0, v1, :cond_4

    const/4 v1, 0x2

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    mul-int/lit8 v2, v0, 0x2

    .line 6
    :goto_0
    new-array v2, v2, [I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 v1, v0, 0x2

    .line 7
    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    :goto_2
    add-int/lit8 v3, v0, -0x1

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/CF;->b:[I

    aget v0, v0, v3

    aput v0, v2, v3

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/CF;->c:[Ljava/lang/Object;

    aget-object v0, v0, v3

    aput-object v0, v1, v3

    move v0, v3

    goto :goto_2

    .line 10
    :cond_3
    iput-object v2, p0, Lcom/android/tools/r8/internal/CF;->b:[I

    .line 11
    iput-object v1, p0, Lcom/android/tools/r8/internal/CF;->c:[Ljava/lang/Object;

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/CF;->b:[I

    iget v1, p0, Lcom/android/tools/r8/internal/CF;->d:I

    aput p1, v0, v1

    .line 13
    iget-object p1, p0, Lcom/android/tools/r8/internal/CF;->c:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 14
    iput v1, p0, Lcom/android/tools/r8/internal/CF;->d:I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/CF;->d(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Lcom/android/tools/r8/internal/I30;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/BF;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/BF;-><init>(Lcom/android/tools/r8/internal/CF;)V

    return-object v0
.end method

.method public final clear()V
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/CF;->d:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/CF;->c:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/CF;->d:I

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/CF;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/CF;->b:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/android/tools/r8/internal/CF;->b:[I

    iget-object v1, p0, Lcom/android/tools/r8/internal/CF;->c:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/tools/r8/internal/CF;->c:[Ljava/lang/Object;

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/CF;->d:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/CF;->c:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final d(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/CF;->b:[I

    iget v1, p0, Lcom/android/tools/r8/internal/CF;->d:I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_1

    aget v1, v0, v2

    if-ne v1, p1, :cond_0

    return v2

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/CF;->b:[I

    iget v1, p0, Lcom/android/tools/r8/internal/CF;->d:I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_1

    aget v1, v0, v2

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/CF;->c:[Ljava/lang/Object;

    aget-object p1, p1, v2

    return-object p1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/CF;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/FH;

    iget-object v1, p0, Lcom/android/tools/r8/internal/CF;->b:[I

    iget v2, p0, Lcom/android/tools/r8/internal/CF;->d:I

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/FH;-><init>([II)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/CF;->d(I)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/CF;->c:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget v2, p0, Lcom/android/tools/r8/internal/CF;->d:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/tools/r8/internal/CF;->b:[I

    add-int/lit8 v4, p1, 0x1

    invoke-static {v3, v4, v3, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/android/tools/r8/internal/CF;->c:[Ljava/lang/Object;

    invoke-static {v3, v4, v3, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/android/tools/r8/internal/CF;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/CF;->d:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/CF;->c:[Ljava/lang/Object;

    aput-object v1, v2, p1

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/CF;->d:I

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/s30;

    iget-object v1, p0, Lcom/android/tools/r8/internal/CF;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/CF;->d:I

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/s30;-><init>(I[Ljava/lang/Object;)V

    new-instance v1, Lcom/android/tools/r8/internal/y30;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/y30;-><init>(Lcom/android/tools/r8/internal/s30;)V

    return-object v1
.end method
