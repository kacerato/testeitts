.class public final Lcom/android/tools/r8/internal/s30;
.super Lcom/android/tools/r8/internal/h1;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient b:[Ljava/lang/Object;

.field public c:I


# direct methods
.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/internal/h1;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/s30;->b:[Ljava/lang/Object;

    iput p1, p0, Lcom/android/tools/r8/internal/s30;->c:I

    array-length v0, p2

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provided size ("

    const-string v2, ") is larger than or equal to the array size ("

    invoke-static {p1, v1, v2}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/s30;->c(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/s30;->c:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/s30;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_3

    if-nez v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, v0, 0x2

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/s30;->b:[Ljava/lang/Object;

    aget-object v0, v0, v2

    aput-object v0, v1, v2

    move v0, v2

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lcom/android/tools/r8/internal/s30;->b:[Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/s30;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/s30;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/s30;->c:I

    aput-object p1, v0, v1

    const/4 p1, 0x1

    return p1
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/s30;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/s30;->b:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final clear()V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/s30;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/s30;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v3, p0, Lcom/android/tools/r8/internal/s30;->c:I

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/s30;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/s30;->b:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/tools/r8/internal/s30;->b:[Ljava/lang/Object;

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/s30;->c(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/s30;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/r30;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/r30;-><init>(Lcom/android/tools/r8/internal/s30;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/r30;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/r30;-><init>(Lcom/android/tools/r8/internal/s30;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/s30;->c(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/s30;->c:I

    sub-int/2addr v0, p1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/tools/r8/internal/s30;->b:[Ljava/lang/Object;

    add-int v4, p1, v1

    add-int/lit8 v5, v4, 0x1

    aget-object v5, v3, v5

    aput-object v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/tools/r8/internal/s30;->c:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/android/tools/r8/internal/s30;->c:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/s30;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    return v2
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/s30;->c:I

    return v0
.end method
