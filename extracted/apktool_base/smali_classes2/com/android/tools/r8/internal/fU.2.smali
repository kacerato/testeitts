.class public final Lcom/android/tools/r8/internal/fU;
.super Lcom/android/tools/r8/internal/n0;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public final synthetic d:Lcom/android/tools/r8/internal/gU;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/gU;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/fU;->d:Lcom/android/tools/r8/internal/gU;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/n0;-><init>()V

    iput p2, p0, Lcom/android/tools/r8/internal/fU;->b:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/fU;->c:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fU;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/fU;->d:Lcom/android/tools/r8/internal/gU;

    iget-object v0, v0, Lcom/android/tools/r8/internal/gU;->b:[J

    iget v1, p0, Lcom/android/tools/r8/internal/fU;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/fU;->b:I

    iput v1, p0, Lcom/android/tools/r8/internal/fU;->c:I

    aget-wide v1, v0, v1

    return-wide v1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final a(J)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/fU;->d:Lcom/android/tools/r8/internal/gU;

    iget v1, p0, Lcom/android/tools/r8/internal/fU;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/fU;->b:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/gU;->a(IJ)V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/android/tools/r8/internal/fU;->c:I

    return-void
.end method

.method public final b(J)V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/fU;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/fU;->d:Lcom/android/tools/r8/internal/gU;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/tools/r8/internal/gU;->b(IJ)J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/fU;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/fU;->d:Lcom/android/tools/r8/internal/gU;

    iget v1, v1, Lcom/android/tools/r8/internal/gU;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/fU;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()J
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fU;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/fU;->d:Lcom/android/tools/r8/internal/gU;

    iget-object v0, v0, Lcom/android/tools/r8/internal/gU;->b:[J

    iget v1, p0, Lcom/android/tools/r8/internal/fU;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/fU;->b:I

    iput v1, p0, Lcom/android/tools/r8/internal/fU;->c:I

    aget-wide v1, v0, v1

    return-wide v1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/fU;->b:I

    return v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/fU;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/fU;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/fU;->d:Lcom/android/tools/r8/internal/gU;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/gU;->f(I)J

    iget v0, p0, Lcom/android/tools/r8/internal/fU;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/fU;->b:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/tools/r8/internal/fU;->b:I

    :cond_0
    iput v1, p0, Lcom/android/tools/r8/internal/fU;->c:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
