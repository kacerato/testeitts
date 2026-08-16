.class public abstract Lcom/android/tools/r8/internal/cU;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Lcom/android/tools/r8/internal/gU;

.field public final synthetic g:Lcom/android/tools/r8/internal/eU;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/eU;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/cU;->g:Lcom/android/tools/r8/internal/eU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/tools/r8/internal/eU;->f:I

    iput v0, p0, Lcom/android/tools/r8/internal/cU;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/cU;->c:I

    iget v0, p1, Lcom/android/tools/r8/internal/eU;->h:I

    iput v0, p0, Lcom/android/tools/r8/internal/cU;->d:I

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/eU;->e:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/cU;->e:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 6

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cU;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/tools/r8/internal/cU;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/cU;->d:I

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cU;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cU;->e:Z

    iget-object v0, p0, Lcom/android/tools/r8/internal/cU;->g:Lcom/android/tools/r8/internal/eU;

    iget v0, v0, Lcom/android/tools/r8/internal/eU;->f:I

    iput v0, p0, Lcom/android/tools/r8/internal/cU;->c:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/cU;->g:Lcom/android/tools/r8/internal/eU;

    iget-object v0, v0, Lcom/android/tools/r8/internal/eU;->b:[J

    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/cU;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/cU;->b:I

    if-gez v1, :cond_3

    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/tools/r8/internal/cU;->c:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/cU;->f:Lcom/android/tools/r8/internal/gU;

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/gU;->d(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/jA;->a(J)J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/cU;->g:Lcom/android/tools/r8/internal/eU;

    iget v4, v4, Lcom/android/tools/r8/internal/eU;->d:I

    :goto_0
    and-int/2addr v3, v4

    aget-wide v4, v0, v3

    cmp-long v4, v1, v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/tools/r8/internal/cU;->g:Lcom/android/tools/r8/internal/eU;

    iget v4, v4, Lcom/android/tools/r8/internal/eU;->d:I

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/android/tools/r8/internal/cU;->c:I

    return v1

    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/cU;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 10

    iget v0, p0, Lcom/android/tools/r8/internal/cU;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget-object v2, p0, Lcom/android/tools/r8/internal/cU;->g:Lcom/android/tools/r8/internal/eU;

    iget v3, v2, Lcom/android/tools/r8/internal/eU;->f:I

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/tools/r8/internal/eU;->e:Z

    iget-object v0, v2, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    aput-object v4, v0, v3

    goto :goto_2

    :cond_0
    iget v3, p0, Lcom/android/tools/r8/internal/cU;->b:I

    if-ltz v3, :cond_7

    iget-object v5, v2, Lcom/android/tools/r8/internal/eU;->b:[J

    :goto_0
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/tools/r8/internal/cU;->g:Lcom/android/tools/r8/internal/eU;

    iget v3, v3, Lcom/android/tools/r8/internal/eU;->d:I

    and-int/2addr v2, v3

    :goto_1
    aget-wide v6, v5, v2

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    aput-wide v8, v5, v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/cU;->g:Lcom/android/tools/r8/internal/eU;

    iget-object v2, v2, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    aput-object v4, v2, v0

    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/cU;->g:Lcom/android/tools/r8/internal/eU;

    iget v2, v0, Lcom/android/tools/r8/internal/eU;->h:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/tools/r8/internal/eU;->h:I

    iput v1, p0, Lcom/android/tools/r8/internal/cU;->c:I

    return-void

    :cond_1
    invoke-static {v6, v7}, Lcom/android/tools/r8/internal/jA;->a(J)J

    move-result-wide v8

    long-to-int v3, v8

    iget-object v8, p0, Lcom/android/tools/r8/internal/cU;->g:Lcom/android/tools/r8/internal/eU;

    iget v8, v8, Lcom/android/tools/r8/internal/eU;->d:I

    and-int/2addr v3, v8

    if-gt v0, v2, :cond_2

    if-ge v0, v3, :cond_3

    if-le v3, v2, :cond_6

    goto :goto_3

    :cond_2
    if-lt v0, v3, :cond_6

    if-le v3, v2, :cond_6

    :cond_3
    :goto_3
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/internal/cU;->f:Lcom/android/tools/r8/internal/gU;

    if-nez v3, :cond_4

    new-instance v3, Lcom/android/tools/r8/internal/gU;

    const/4 v8, 0x2

    invoke-direct {v3, v8}, Lcom/android/tools/r8/internal/gU;-><init>(I)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/cU;->f:Lcom/android/tools/r8/internal/gU;

    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/cU;->f:Lcom/android/tools/r8/internal/gU;

    aget-wide v8, v5, v2

    invoke-virtual {v3, v8, v9}, Lcom/android/tools/r8/internal/gU;->a(J)Z

    :cond_5
    aput-wide v6, v5, v0

    iget-object v3, p0, Lcom/android/tools/r8/internal/cU;->g:Lcom/android/tools/r8/internal/eU;

    iget-object v3, v3, Lcom/android/tools/r8/internal/eU;->c:[Ljava/lang/Object;

    aget-object v6, v3, v2

    aput-object v6, v3, v0

    move v0, v2

    goto :goto_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v8

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/cU;->f:Lcom/android/tools/r8/internal/gU;

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/gU;->d(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/internal/eU;->c(J)Ljava/lang/Object;

    iput v1, p0, Lcom/android/tools/r8/internal/cU;->c:I

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
