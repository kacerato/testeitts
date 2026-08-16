.class public abstract Lcom/android/tools/r8/internal/K20;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public final synthetic f:Lcom/android/tools/r8/internal/M20;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/M20;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/K20;->f:Lcom/android/tools/r8/internal/M20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/K20;->b:I

    iput v0, p0, Lcom/android/tools/r8/internal/K20;->c:I

    iput v0, p0, Lcom/android/tools/r8/internal/K20;->d:I

    iput v0, p0, Lcom/android/tools/r8/internal/K20;->e:I

    iget p1, p1, Lcom/android/tools/r8/internal/M20;->g:I

    iput p1, p0, Lcom/android/tools/r8/internal/K20;->c:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/tools/r8/internal/K20;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/K20;->e:I

    if-ltz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/K20;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/K20;->e:I

    return-void

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/K20;->c:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/K20;->f:Lcom/android/tools/r8/internal/M20;

    iget v0, v0, Lcom/android/tools/r8/internal/M20;->l:I

    iput v0, p0, Lcom/android/tools/r8/internal/K20;->e:I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/K20;->f:Lcom/android/tools/r8/internal/M20;

    iget v0, v0, Lcom/android/tools/r8/internal/M20;->g:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/K20;->e:I

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/K20;->b:I

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/K20;->f:Lcom/android/tools/r8/internal/M20;

    iget-object v2, v2, Lcom/android/tools/r8/internal/M20;->i:[J

    aget-wide v3, v2, v0

    long-to-int v0, v3

    iget v2, p0, Lcom/android/tools/r8/internal/K20;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/tools/r8/internal/K20;->e:I

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final b()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/K20;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/K20;->c:I

    iput v0, p0, Lcom/android/tools/r8/internal/K20;->d:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/K20;->f:Lcom/android/tools/r8/internal/M20;

    iget-object v1, v1, Lcom/android/tools/r8/internal/M20;->i:[J

    aget-wide v2, v1, v0

    long-to-int v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/K20;->c:I

    iput v0, p0, Lcom/android/tools/r8/internal/K20;->b:I

    iget v1, p0, Lcom/android/tools/r8/internal/K20;->e:I

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/K20;->e:I

    :cond_0
    return v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final d()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/K20;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/K20;->b:I

    iput v0, p0, Lcom/android/tools/r8/internal/K20;->d:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/K20;->f:Lcom/android/tools/r8/internal/M20;

    iget-object v1, v1, Lcom/android/tools/r8/internal/M20;->i:[J

    aget-wide v2, v1, v0

    const/16 v1, 0x20

    ushr-long v1, v2, v1

    long-to-int v1, v1

    iput v1, p0, Lcom/android/tools/r8/internal/K20;->b:I

    iput v0, p0, Lcom/android/tools/r8/internal/K20;->c:I

    iget v1, p0, Lcom/android/tools/r8/internal/K20;->e:I

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/K20;->e:I

    :cond_0
    return v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/K20;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/K20;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/K20;->a()V

    iget v0, p0, Lcom/android/tools/r8/internal/K20;->e:I

    return v0
.end method

.method public final previousIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/K20;->a()V

    iget v0, p0, Lcom/android/tools/r8/internal/K20;->e:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/K20;->a()V

    iget v0, p0, Lcom/android/tools/r8/internal/K20;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    iget v2, p0, Lcom/android/tools/r8/internal/K20;->b:I

    const/16 v3, 0x20

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/android/tools/r8/internal/K20;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/tools/r8/internal/K20;->e:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/K20;->f:Lcom/android/tools/r8/internal/M20;

    iget-object v2, v2, Lcom/android/tools/r8/internal/M20;->i:[J

    aget-wide v4, v2, v0

    ushr-long/2addr v4, v3

    long-to-int v2, v4

    iput v2, p0, Lcom/android/tools/r8/internal/K20;->b:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/K20;->f:Lcom/android/tools/r8/internal/M20;

    iget-object v2, v2, Lcom/android/tools/r8/internal/M20;->i:[J

    aget-wide v4, v2, v0

    long-to-int v2, v4

    iput v2, p0, Lcom/android/tools/r8/internal/K20;->c:I

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/K20;->f:Lcom/android/tools/r8/internal/M20;

    iget v4, v2, Lcom/android/tools/r8/internal/M20;->l:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Lcom/android/tools/r8/internal/M20;->l:I

    iget v4, p0, Lcom/android/tools/r8/internal/K20;->b:I

    const-wide v5, 0xffffffffL

    if-ne v4, v1, :cond_1

    iget v7, p0, Lcom/android/tools/r8/internal/K20;->c:I

    iput v7, v2, Lcom/android/tools/r8/internal/M20;->g:I

    goto :goto_1

    :cond_1
    iget-object v7, v2, Lcom/android/tools/r8/internal/M20;->i:[J

    aget-wide v8, v7, v4

    iget v10, p0, Lcom/android/tools/r8/internal/K20;->c:I

    int-to-long v10, v10

    and-long/2addr v10, v5

    xor-long/2addr v10, v8

    and-long/2addr v10, v5

    xor-long/2addr v8, v10

    aput-wide v8, v7, v4

    :goto_1
    iget v7, p0, Lcom/android/tools/r8/internal/K20;->c:I

    if-ne v7, v1, :cond_2

    iput v4, v2, Lcom/android/tools/r8/internal/M20;->h:I

    goto :goto_2

    :cond_2
    iget-object v8, v2, Lcom/android/tools/r8/internal/M20;->i:[J

    aget-wide v9, v8, v7

    int-to-long v11, v4

    and-long v4, v11, v5

    shl-long v3, v4, v3

    xor-long/2addr v3, v9

    const-wide v5, -0x100000000L

    and-long/2addr v3, v5

    xor-long/2addr v3, v9

    aput-wide v3, v8, v7

    :goto_2
    iput v1, p0, Lcom/android/tools/r8/internal/K20;->d:I

    iget v1, v2, Lcom/android/tools/r8/internal/M20;->j:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/tools/r8/internal/M20;->e:Z

    iget-object v0, v2, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    aput-object v3, v0, v1

    iget-object v0, v2, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    aput-object v3, v0, v1

    return-void

    :cond_3
    iget-object v1, v2, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    :goto_3
    add-int/lit8 v2, v0, 0x1

    iget-object v4, p0, Lcom/android/tools/r8/internal/K20;->f:Lcom/android/tools/r8/internal/M20;

    iget v4, v4, Lcom/android/tools/r8/internal/M20;->d:I

    and-int/2addr v2, v4

    :goto_4
    aget-object v4, v1, v2

    if-nez v4, :cond_4

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/K20;->f:Lcom/android/tools/r8/internal/M20;

    iget-object v1, v1, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    aput-object v3, v1, v0

    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/tools/r8/internal/K20;->f:Lcom/android/tools/r8/internal/M20;

    iget-object v5, v5, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v5, v4}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/tools/r8/internal/K20;->f:Lcom/android/tools/r8/internal/M20;

    iget v7, v6, Lcom/android/tools/r8/internal/M20;->d:I

    and-int/2addr v5, v7

    if-gt v0, v2, :cond_5

    if-ge v0, v5, :cond_6

    if-le v5, v2, :cond_9

    goto :goto_5

    :cond_5
    if-lt v0, v5, :cond_9

    if-le v5, v2, :cond_9

    :cond_6
    :goto_5
    aput-object v4, v1, v0

    iget-object v4, v6, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    aget-object v5, v4, v2

    aput-object v5, v4, v0

    iget v4, p0, Lcom/android/tools/r8/internal/K20;->c:I

    if-ne v4, v2, :cond_7

    iput v0, p0, Lcom/android/tools/r8/internal/K20;->c:I

    :cond_7
    iget v4, p0, Lcom/android/tools/r8/internal/K20;->b:I

    if-ne v4, v2, :cond_8

    iput v0, p0, Lcom/android/tools/r8/internal/K20;->b:I

    :cond_8
    invoke-virtual {v6, v2, v0}, Lcom/android/tools/r8/internal/M20;->c(II)V

    move v0, v2

    goto :goto_3

    :cond_9
    add-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v7

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
