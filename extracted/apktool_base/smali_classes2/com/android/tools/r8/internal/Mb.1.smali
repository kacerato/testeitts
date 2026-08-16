.class public final Lcom/android/tools/r8/internal/Mb;
.super Lcom/android/tools/r8/internal/n;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient b:[C

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/n;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/tools/r8/internal/Mb;->b:[C

    return-void
.end method


# virtual methods
.method public final a(C)Z
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/Mb;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mb;->b:[C

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    if-eq v1, v2, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/Mb;->c:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mb;->b:[C

    array-length v1, v1

    if-ne v0, v1, :cond_5

    if-nez v0, :cond_3

    const/4 v1, 0x2

    goto :goto_2

    :cond_3
    mul-int/lit8 v1, v0, 0x2

    :goto_2
    new-array v1, v1, [C

    :goto_3
    add-int/lit8 v2, v0, -0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mb;->b:[C

    aget-char v0, v0, v2

    aput-char v0, v1, v2

    move v0, v2

    goto :goto_3

    :cond_4
    iput-object v1, p0, Lcom/android/tools/r8/internal/Mb;->b:[C

    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Mb;->b:[C

    iget v1, p0, Lcom/android/tools/r8/internal/Mb;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/Mb;->c:I

    aput-char p1, v0, v1

    const/4 p1, 0x1

    return p1
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/Mb;->c:I

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Mb;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mb;->b:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lcom/android/tools/r8/internal/Mb;->b:[C

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Mb;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Lb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Lb;-><init>(Lcom/android/tools/r8/internal/Mb;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Mb;->c:I

    return v0
.end method
