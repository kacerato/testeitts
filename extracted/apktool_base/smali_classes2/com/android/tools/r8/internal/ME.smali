.class public final Lcom/android/tools/r8/internal/ME;
.super Lcom/android/tools/r8/internal/K;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public transient c:[I

.field public transient d:[I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/K;-><init>()V

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/GH;->a:[I

    iput-object v0, p0, Lcom/android/tools/r8/internal/ME;->c:[I

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/ME;->d:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/internal/K;-><init>()V

    .line 5
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/tools/r8/internal/ME;->c:[I

    .line 6
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/tools/r8/internal/ME;->d:[I

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ME;->e(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(II)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ME;->e(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/ME;->d:[I

    aget v1, p1, v0

    aput p2, p1, v0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/ME;->e:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/ME;->c:[I

    array-length v1, v1

    if-ne v0, v1, :cond_4

    const/4 v1, 0x2

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    mul-int/lit8 v2, v0, 0x2

    :goto_0
    new-array v2, v2, [I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 v1, v0, 0x2

    :goto_1
    new-array v1, v1, [I

    :goto_2
    add-int/lit8 v3, v0, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ME;->c:[I

    aget v0, v0, v3

    aput v0, v2, v3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ME;->d:[I

    aget v0, v0, v3

    aput v0, v1, v3

    move v0, v3

    goto :goto_2

    :cond_3
    iput-object v2, p0, Lcom/android/tools/r8/internal/ME;->c:[I

    iput-object v1, p0, Lcom/android/tools/r8/internal/ME;->d:[I

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/ME;->c:[I

    iget v1, p0, Lcom/android/tools/r8/internal/ME;->e:I

    aput p1, v0, v1

    iget-object p1, p0, Lcom/android/tools/r8/internal/ME;->d:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/ME;->e:I

    iget p1, p0, Lcom/android/tools/r8/internal/K;->b:I

    return p1
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/ME;->e:I

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ME;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/ME;->c:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/android/tools/r8/internal/ME;->c:[I

    iget-object v1, p0, Lcom/android/tools/r8/internal/ME;->d:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/android/tools/r8/internal/ME;->d:[I

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final d(I)Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/ME;->e:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ME;->d:[I

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

.method public final e(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ME;->c:[I

    iget v1, p0, Lcom/android/tools/r8/internal/ME;->e:I

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

.method public final get(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ME;->c:[I

    iget v1, p0, Lcom/android/tools/r8/internal/ME;->e:I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_1

    aget v1, v0, v2

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/ME;->d:[I

    aget p1, p1, v2

    return p1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/tools/r8/internal/K;->b:I

    return p1
.end method

.method public final h()Lcom/android/tools/r8/internal/I30;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/LE;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/LE;-><init>(Lcom/android/tools/r8/internal/ME;)V

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/ME;->e:I

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

    iget-object v1, p0, Lcom/android/tools/r8/internal/ME;->c:[I

    iget v2, p0, Lcom/android/tools/r8/internal/ME;->e:I

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/FH;-><init>([II)V

    return-object v0
.end method

.method public final remove(I)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ME;->e(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/tools/r8/internal/K;->b:I

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ME;->d:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/android/tools/r8/internal/ME;->e:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/tools/r8/internal/ME;->c:[I

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/ME;->d:[I

    invoke-static {v2, v3, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/android/tools/r8/internal/ME;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/ME;->e:I

    return v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/ME;->e:I

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/FH;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ME;->d:[I

    iget v2, p0, Lcom/android/tools/r8/internal/ME;->e:I

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/FH;-><init>([II)V

    new-instance v1, Lcom/android/tools/r8/internal/LH;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/LH;-><init>(Lcom/android/tools/r8/internal/FH;)V

    return-object v1
.end method
