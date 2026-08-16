.class public final Lcom/android/tools/r8/internal/Kd0;
.super Lcom/android/tools/r8/internal/g1;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public final synthetic d:Lcom/android/tools/r8/internal/Ld0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ld0;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Kd0;->d:Lcom/android/tools/r8/internal/Ld0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/g1;-><init>()V

    iput p2, p0, Lcom/android/tools/r8/internal/Kd0;->b:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/Kd0;->c:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kd0;->d:Lcom/android/tools/r8/internal/Ld0;

    iget v1, p0, Lcom/android/tools/r8/internal/Kd0;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/Kd0;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Ld0;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/Kd0;->c:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/Kd0;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/Kd0;->d:Lcom/android/tools/r8/internal/Ld0;

    iget v1, v1, Lcom/android/tools/r8/internal/Ld0;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Kd0;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Kd0;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kd0;->d:Lcom/android/tools/r8/internal/Ld0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/Kd0;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/Kd0;->b:I

    iput v1, p0, Lcom/android/tools/r8/internal/Kd0;->c:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Kd0;->b:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Kd0;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kd0;->d:Lcom/android/tools/r8/internal/Ld0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/Kd0;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/Kd0;->b:I

    iput v1, p0, Lcom/android/tools/r8/internal/Kd0;->c:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Kd0;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/Kd0;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Kd0;->d:Lcom/android/tools/r8/internal/Ld0;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Ld0;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lcom/android/tools/r8/internal/Kd0;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/Kd0;->b:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/tools/r8/internal/Kd0;->b:I

    :cond_0
    iput v1, p0, Lcom/android/tools/r8/internal/Kd0;->c:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/Kd0;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Kd0;->d:Lcom/android/tools/r8/internal/Ld0;

    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/internal/Ld0;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
