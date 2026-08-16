.class public abstract Lcom/android/tools/r8/internal/OF;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Lcom/android/tools/r8/internal/CH;

.field public final synthetic g:Lcom/android/tools/r8/internal/QF;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/QF;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/OF;->g:Lcom/android/tools/r8/internal/QF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/tools/r8/internal/QF;->f:I

    iput v0, p0, Lcom/android/tools/r8/internal/OF;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/OF;->c:I

    iget v0, p1, Lcom/android/tools/r8/internal/QF;->h:I

    iput v0, p0, Lcom/android/tools/r8/internal/OF;->d:I

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/QF;->e:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/OF;->e:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OF;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/tools/r8/internal/OF;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/OF;->d:I

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/OF;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/OF;->e:Z

    iget-object v0, p0, Lcom/android/tools/r8/internal/OF;->g:Lcom/android/tools/r8/internal/QF;

    iget v0, v0, Lcom/android/tools/r8/internal/QF;->f:I

    iput v0, p0, Lcom/android/tools/r8/internal/OF;->c:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/OF;->g:Lcom/android/tools/r8/internal/QF;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QF;->b:[I

    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/OF;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/OF;->b:I

    if-gez v1, :cond_3

    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/tools/r8/internal/OF;->c:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/OF;->f:Lcom/android/tools/r8/internal/CH;

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/OF;->g:Lcom/android/tools/r8/internal/QF;

    iget v3, v3, Lcom/android/tools/r8/internal/QF;->d:I

    :goto_0
    and-int/2addr v2, v3

    aget v3, v0, v2

    if-eq v1, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/tools/r8/internal/OF;->g:Lcom/android/tools/r8/internal/QF;

    iget v3, v3, Lcom/android/tools/r8/internal/QF;->d:I

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    aget v2, v0, v1

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/android/tools/r8/internal/OF;->c:I

    return v1

    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/OF;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 9

    iget v0, p0, Lcom/android/tools/r8/internal/OF;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget-object v2, p0, Lcom/android/tools/r8/internal/OF;->g:Lcom/android/tools/r8/internal/QF;

    iget v3, v2, Lcom/android/tools/r8/internal/QF;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne v0, v3, :cond_0

    iput-boolean v5, v2, Lcom/android/tools/r8/internal/QF;->e:Z

    iget-object v0, v2, Lcom/android/tools/r8/internal/QF;->c:[Ljava/lang/Object;

    aput-object v4, v0, v3

    goto :goto_2

    :cond_0
    iget v3, p0, Lcom/android/tools/r8/internal/OF;->b:I

    if-ltz v3, :cond_7

    iget-object v6, v2, Lcom/android/tools/r8/internal/QF;->b:[I

    :goto_0
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/tools/r8/internal/OF;->g:Lcom/android/tools/r8/internal/QF;

    iget v3, v3, Lcom/android/tools/r8/internal/QF;->d:I

    and-int/2addr v2, v3

    :goto_1
    aget v3, v6, v2

    if-nez v3, :cond_1

    aput v5, v6, v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/OF;->g:Lcom/android/tools/r8/internal/QF;

    iget-object v2, v2, Lcom/android/tools/r8/internal/QF;->c:[Ljava/lang/Object;

    aput-object v4, v2, v0

    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/OF;->g:Lcom/android/tools/r8/internal/QF;

    iget v2, v0, Lcom/android/tools/r8/internal/QF;->h:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/tools/r8/internal/QF;->h:I

    iput v1, p0, Lcom/android/tools/r8/internal/OF;->c:I

    return-void

    :cond_1
    invoke-static {v3}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/tools/r8/internal/OF;->g:Lcom/android/tools/r8/internal/QF;

    iget v8, v8, Lcom/android/tools/r8/internal/QF;->d:I

    and-int/2addr v7, v8

    if-gt v0, v2, :cond_2

    if-ge v0, v7, :cond_3

    if-le v7, v2, :cond_6

    goto :goto_3

    :cond_2
    if-lt v0, v7, :cond_6

    if-le v7, v2, :cond_6

    :cond_3
    :goto_3
    if-ge v2, v0, :cond_5

    iget-object v7, p0, Lcom/android/tools/r8/internal/OF;->f:Lcom/android/tools/r8/internal/CH;

    if-nez v7, :cond_4

    new-instance v7, Lcom/android/tools/r8/internal/CH;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    iput-object v7, p0, Lcom/android/tools/r8/internal/OF;->f:Lcom/android/tools/r8/internal/CH;

    :cond_4
    iget-object v7, p0, Lcom/android/tools/r8/internal/OF;->f:Lcom/android/tools/r8/internal/CH;

    aget v8, v6, v2

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    :cond_5
    aput v3, v6, v0

    iget-object v3, p0, Lcom/android/tools/r8/internal/OF;->g:Lcom/android/tools/r8/internal/QF;

    iget-object v3, v3, Lcom/android/tools/r8/internal/QF;->c:[Ljava/lang/Object;

    aget-object v7, v3, v2

    aput-object v7, v3, v0

    move v0, v2

    goto :goto_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v8

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/OF;->f:Lcom/android/tools/r8/internal/CH;

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/QF;->remove(I)Ljava/lang/Object;

    iput v1, p0, Lcom/android/tools/r8/internal/OF;->c:I

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
