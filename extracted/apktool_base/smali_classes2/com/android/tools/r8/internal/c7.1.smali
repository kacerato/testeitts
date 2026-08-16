.class public final Lcom/android/tools/r8/internal/c7;
.super Lcom/android/tools/r8/internal/j;
.source "SourceFile"


# instance fields
.field public final b:Z

.field public c:I


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/j;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/c7;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/c7;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/c7;->c:I

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/c7;->b:Z

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/c7;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/c7;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/c7;->c:I

    return v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/c7;->c:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final q()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/c7;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/c7;->c:I

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/c7;->b:Z

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
