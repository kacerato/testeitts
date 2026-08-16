.class public final Lcom/android/tools/r8/internal/FH;
.super Lcom/android/tools/r8/internal/c0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient b:[I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/c0;-><init>()V

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/GH;->a:[I

    iput-object v0, p0, Lcom/android/tools/r8/internal/FH;->b:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/c0;-><init>()V

    .line 4
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/tools/r8/internal/FH;->b:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nI;)V
    .locals 1

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/c0;-><init>()V

    .line 7
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/tools/r8/internal/FH;->b:[I

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W;->a(Lcom/android/tools/r8/internal/JH;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1

    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/c0;-><init>()V

    .line 11
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/tools/r8/internal/FH;->b:[I

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>([II)V
    .locals 3

    .line 13
    invoke-direct {p0}, Lcom/android/tools/r8/internal/c0;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/tools/r8/internal/FH;->b:[I

    .line 15
    iput p2, p0, Lcom/android/tools/r8/internal/FH;->c:I

    .line 16
    array-length v0, p1

    if-gt p2, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string v1, "The provided size ("

    const-string v2, ") is larger than or equal to the array size ("

    invoke-static {p2, v1, v2}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 18
    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(I)Z
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/FH;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/FH;->b:[I

    aget v0, v0, v1

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
    iget v0, p0, Lcom/android/tools/r8/internal/FH;->c:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/FH;->b:[I

    array-length v1, v1

    if-ne v0, v1, :cond_5

    if-nez v0, :cond_3

    const/4 v1, 0x2

    goto :goto_2

    :cond_3
    mul-int/lit8 v1, v0, 0x2

    :goto_2
    new-array v1, v1, [I

    :goto_3
    add-int/lit8 v2, v0, -0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/FH;->b:[I

    aget v0, v0, v2

    aput v0, v1, v2

    move v0, v2

    goto :goto_3

    :cond_4
    iput-object v1, p0, Lcom/android/tools/r8/internal/FH;->b:[I

    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/FH;->b:[I

    iget v1, p0, Lcom/android/tools/r8/internal/FH;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/FH;->c:I

    aput p1, v0, v1

    const/4 p1, 0x1

    return p1
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/FH;->c:I

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/FH;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/FH;->b:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/android/tools/r8/internal/FH;->b:[I

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final h(I)Z
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/FH;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/FH;->b:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    if-eq v1, v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/FH;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/PH;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/EH;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/EH;-><init>(Lcom/android/tools/r8/internal/FH;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/EH;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/EH;-><init>(Lcom/android/tools/r8/internal/FH;)V

    return-object v0
.end method

.method public final remove(I)Z
    .locals 6

    iget v0, p0, Lcom/android/tools/r8/internal/FH;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/FH;->b:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    const/4 p1, 0x0

    if-ne v1, v2, :cond_2

    return p1

    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/FH;->c:I

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_2
    if-ge p1, v0, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/FH;->b:[I

    add-int v4, v1, p1

    add-int/lit8 v5, v4, 0x1

    aget v5, v3, v5

    aput v5, v3, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/android/tools/r8/internal/FH;->c:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/android/tools/r8/internal/FH;->c:I

    return v2
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/FH;->c:I

    return v0
.end method
