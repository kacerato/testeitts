.class public final Lcom/android/tools/r8/internal/BH;
.super Lcom/android/tools/r8/internal/b0;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public final synthetic d:Lcom/android/tools/r8/internal/CH;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/CH;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/BH;->d:Lcom/android/tools/r8/internal/CH;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/b0;-><init>()V

    iput p2, p0, Lcom/android/tools/r8/internal/BH;->b:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/BH;->c:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/BH;->d:Lcom/android/tools/r8/internal/CH;

    iget v1, p0, Lcom/android/tools/r8/internal/BH;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/BH;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/CH;->b(II)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/BH;->c:I

    return-void
.end method

.method public final b(I)V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/BH;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/BH;->d:Lcom/android/tools/r8/internal/CH;

    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/internal/CH;->c(II)I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final c()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/BH;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/BH;->d:Lcom/android/tools/r8/internal/CH;

    iget-object v0, v0, Lcom/android/tools/r8/internal/CH;->b:[I

    iget v1, p0, Lcom/android/tools/r8/internal/BH;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/BH;->b:I

    iput v1, p0, Lcom/android/tools/r8/internal/BH;->c:I

    aget v0, v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/BH;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/BH;->d:Lcom/android/tools/r8/internal/CH;

    iget v1, v1, Lcom/android/tools/r8/internal/CH;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/BH;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/BH;->b:I

    return v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/BH;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final r()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/BH;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/BH;->d:Lcom/android/tools/r8/internal/CH;

    iget-object v0, v0, Lcom/android/tools/r8/internal/CH;->b:[I

    iget v1, p0, Lcom/android/tools/r8/internal/BH;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/BH;->b:I

    iput v1, p0, Lcom/android/tools/r8/internal/BH;->c:I

    aget v0, v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/BH;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/BH;->d:Lcom/android/tools/r8/internal/CH;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/CH;->i(I)I

    iget v0, p0, Lcom/android/tools/r8/internal/BH;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/BH;->b:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/tools/r8/internal/BH;->b:I

    :cond_0
    iput v1, p0, Lcom/android/tools/r8/internal/BH;->c:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
