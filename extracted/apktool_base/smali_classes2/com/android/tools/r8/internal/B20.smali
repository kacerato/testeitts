.class public abstract Lcom/android/tools/r8/internal/B20;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Lcom/android/tools/r8/internal/q30;

.field public final synthetic g:Lcom/android/tools/r8/internal/D20;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/D20;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/B20;->g:Lcom/android/tools/r8/internal/D20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/tools/r8/internal/D20;->f:I

    iput v0, p0, Lcom/android/tools/r8/internal/B20;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/B20;->c:I

    iget v0, p1, Lcom/android/tools/r8/internal/D20;->h:I

    iput v0, p0, Lcom/android/tools/r8/internal/B20;->d:I

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/D20;->e:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/B20;->e:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B20;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/tools/r8/internal/B20;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/B20;->d:I

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/B20;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/B20;->e:Z

    iget-object v0, p0, Lcom/android/tools/r8/internal/B20;->g:Lcom/android/tools/r8/internal/D20;

    iget v0, v0, Lcom/android/tools/r8/internal/D20;->f:I

    iput v0, p0, Lcom/android/tools/r8/internal/B20;->c:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/B20;->g:Lcom/android/tools/r8/internal/D20;

    iget-object v0, v0, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/B20;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/B20;->b:I

    if-gez v1, :cond_3

    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/tools/r8/internal/B20;->c:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/B20;->f:Lcom/android/tools/r8/internal/q30;

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/q30;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/B20;->g:Lcom/android/tools/r8/internal/D20;

    iget v3, v3, Lcom/android/tools/r8/internal/D20;->d:I

    :goto_0
    and-int/2addr v2, v3

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/tools/r8/internal/B20;->g:Lcom/android/tools/r8/internal/D20;

    iget v3, v3, Lcom/android/tools/r8/internal/D20;->d:I

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/android/tools/r8/internal/B20;->c:I

    return v1

    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/B20;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 8

    iget v0, p0, Lcom/android/tools/r8/internal/B20;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget-object v2, p0, Lcom/android/tools/r8/internal/B20;->g:Lcom/android/tools/r8/internal/D20;

    iget v3, v2, Lcom/android/tools/r8/internal/D20;->f:I

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/tools/r8/internal/D20;->e:Z

    iget-object v0, v2, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    aput-object v4, v0, v3

    goto :goto_2

    :cond_0
    iget v3, p0, Lcom/android/tools/r8/internal/B20;->b:I

    if-ltz v3, :cond_7

    iget-object v5, v2, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    :goto_0
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/tools/r8/internal/B20;->g:Lcom/android/tools/r8/internal/D20;

    iget v3, v3, Lcom/android/tools/r8/internal/D20;->d:I

    and-int/2addr v2, v3

    :goto_1
    aget-object v3, v5, v2

    if-nez v3, :cond_1

    aput-object v4, v5, v0

    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/B20;->g:Lcom/android/tools/r8/internal/D20;

    iget v2, v0, Lcom/android/tools/r8/internal/D20;->h:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/tools/r8/internal/D20;->h:I

    iput v1, p0, Lcom/android/tools/r8/internal/B20;->c:I

    return-void

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/tools/r8/internal/B20;->g:Lcom/android/tools/r8/internal/D20;

    iget v7, v7, Lcom/android/tools/r8/internal/D20;->d:I

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

    iget-object v6, p0, Lcom/android/tools/r8/internal/B20;->f:Lcom/android/tools/r8/internal/q30;

    if-nez v6, :cond_4

    new-instance v6, Lcom/android/tools/r8/internal/q30;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/android/tools/r8/internal/q30;-><init>(I)V

    iput-object v6, p0, Lcom/android/tools/r8/internal/B20;->f:Lcom/android/tools/r8/internal/q30;

    :cond_4
    iget-object v6, p0, Lcom/android/tools/r8/internal/B20;->f:Lcom/android/tools/r8/internal/q30;

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/q30;->add(Ljava/lang/Object;)Z

    :cond_5
    aput-object v3, v5, v0

    iget-object v3, p0, Lcom/android/tools/r8/internal/B20;->g:Lcom/android/tools/r8/internal/D20;

    iget-object v3, v3, Lcom/android/tools/r8/internal/D20;->c:[J

    aget-wide v6, v3, v2

    aput-wide v6, v3, v0

    move v0, v2

    goto :goto_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v7

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/B20;->f:Lcom/android/tools/r8/internal/q30;

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/tools/r8/internal/q30;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/D20;->b(Ljava/lang/Object;)J

    iput v1, p0, Lcom/android/tools/r8/internal/B20;->c:I

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
