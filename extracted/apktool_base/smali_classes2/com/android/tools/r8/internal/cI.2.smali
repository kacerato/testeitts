.class public final Lcom/android/tools/r8/internal/cI;
.super Lcom/android/tools/r8/internal/X;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Lcom/android/tools/r8/internal/CH;

.field public final synthetic g:Lcom/android/tools/r8/internal/dI;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/dI;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/cI;->g:Lcom/android/tools/r8/internal/dI;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/X;-><init>()V

    iget v0, p1, Lcom/android/tools/r8/internal/dI;->e:I

    iput v0, p0, Lcom/android/tools/r8/internal/cI;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/cI;->c:I

    iget v0, p1, Lcom/android/tools/r8/internal/dI;->g:I

    iput v0, p0, Lcom/android/tools/r8/internal/cI;->d:I

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/dI;->d:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/cI;->e:Z

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/cI;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cI;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/tools/r8/internal/cI;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/cI;->d:I

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cI;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cI;->e:Z

    iget-object v0, p0, Lcom/android/tools/r8/internal/cI;->g:Lcom/android/tools/r8/internal/dI;

    iget v1, v0, Lcom/android/tools/r8/internal/dI;->e:I

    iput v1, p0, Lcom/android/tools/r8/internal/cI;->c:I

    iget-object v0, v0, Lcom/android/tools/r8/internal/dI;->b:[I

    aget v0, v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/cI;->g:Lcom/android/tools/r8/internal/dI;

    iget-object v0, v0, Lcom/android/tools/r8/internal/dI;->b:[I

    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/cI;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/cI;->b:I

    if-gez v1, :cond_2

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/tools/r8/internal/cI;->c:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/cI;->f:Lcom/android/tools/r8/internal/CH;

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v0

    return v0

    :cond_2
    aget v2, v0, v1

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/android/tools/r8/internal/cI;->c:I

    return v2

    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 8

    iget v0, p0, Lcom/android/tools/r8/internal/cI;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget-object v2, p0, Lcom/android/tools/r8/internal/cI;->g:Lcom/android/tools/r8/internal/dI;

    iget v3, v2, Lcom/android/tools/r8/internal/dI;->e:I

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    iput-boolean v4, v2, Lcom/android/tools/r8/internal/dI;->d:Z

    iget-object v0, v2, Lcom/android/tools/r8/internal/dI;->b:[I

    aput v4, v0, v3

    goto :goto_2

    :cond_0
    iget v3, p0, Lcom/android/tools/r8/internal/cI;->b:I

    if-ltz v3, :cond_7

    iget-object v5, v2, Lcom/android/tools/r8/internal/dI;->b:[I

    :goto_0
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/tools/r8/internal/cI;->g:Lcom/android/tools/r8/internal/dI;

    iget v3, v3, Lcom/android/tools/r8/internal/dI;->c:I

    and-int/2addr v2, v3

    :goto_1
    aget v3, v5, v2

    if-nez v3, :cond_1

    aput v4, v5, v0

    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/cI;->g:Lcom/android/tools/r8/internal/dI;

    iget v2, v0, Lcom/android/tools/r8/internal/dI;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/tools/r8/internal/dI;->g:I

    iput v1, p0, Lcom/android/tools/r8/internal/cI;->c:I

    return-void

    :cond_1
    invoke-static {v3}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/tools/r8/internal/cI;->g:Lcom/android/tools/r8/internal/dI;

    iget v7, v7, Lcom/android/tools/r8/internal/dI;->c:I

    and-int/2addr v6, v7

    if-gt v0, v2, :cond_2

    if-ge v0, v6, :cond_3

    if-le v6, v2, :cond_6

    goto :goto_3

    :cond_2
    if-lt v0, v6, :cond_6

    if-le v6, v2, :cond_6

    :cond_3
    :goto_3
    if-ge v2, v0, :cond_5

    iget-object v6, p0, Lcom/android/tools/r8/internal/cI;->f:Lcom/android/tools/r8/internal/CH;

    if-nez v6, :cond_4

    new-instance v6, Lcom/android/tools/r8/internal/CH;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    iput-object v6, p0, Lcom/android/tools/r8/internal/cI;->f:Lcom/android/tools/r8/internal/CH;

    :cond_4
    iget-object v6, p0, Lcom/android/tools/r8/internal/cI;->f:Lcom/android/tools/r8/internal/CH;

    aget v7, v5, v2

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    :cond_5
    aput v3, v5, v0

    move v0, v2

    goto :goto_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v7

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/cI;->f:Lcom/android/tools/r8/internal/CH;

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/dI;->remove(I)Z

    iput v1, p0, Lcom/android/tools/r8/internal/cI;->c:I

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
