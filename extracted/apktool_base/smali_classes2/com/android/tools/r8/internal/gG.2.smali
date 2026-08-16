.class public abstract Lcom/android/tools/r8/internal/gG;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public b:Lcom/android/tools/r8/internal/UF;

.field public c:Lcom/android/tools/r8/internal/UF;

.field public d:Lcom/android/tools/r8/internal/UF;

.field public e:I

.field public final synthetic f:Lcom/android/tools/r8/internal/iG;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/iG;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/gG;->f:Lcom/android/tools/r8/internal/iG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/gG;->e:I

    iget-object p1, p1, Lcom/android/tools/r8/internal/iG;->d:Lcom/android/tools/r8/internal/UF;

    iput-object p1, p0, Lcom/android/tools/r8/internal/gG;->c:Lcom/android/tools/r8/internal/UF;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/UF;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gG;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/gG;->c:Lcom/android/tools/r8/internal/UF;

    iput-object v0, p0, Lcom/android/tools/r8/internal/gG;->b:Lcom/android/tools/r8/internal/UF;

    iput-object v0, p0, Lcom/android/tools/r8/internal/gG;->d:Lcom/android/tools/r8/internal/UF;

    iget v0, p0, Lcom/android/tools/r8/internal/gG;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/gG;->e:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gG;->d()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/gG;->d:Lcom/android/tools/r8/internal/UF;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final b()Lcom/android/tools/r8/internal/UF;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gG;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/gG;->b:Lcom/android/tools/r8/internal/UF;

    iput-object v0, p0, Lcom/android/tools/r8/internal/gG;->c:Lcom/android/tools/r8/internal/UF;

    iput-object v0, p0, Lcom/android/tools/r8/internal/gG;->d:Lcom/android/tools/r8/internal/UF;

    iget v0, p0, Lcom/android/tools/r8/internal/gG;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/gG;->e:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gG;->e()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/gG;->d:Lcom/android/tools/r8/internal/UF;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gG;->c:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/UF;->c()Lcom/android/tools/r8/internal/UF;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/gG;->c:Lcom/android/tools/r8/internal/UF;

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gG;->b:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/UF;->e()Lcom/android/tools/r8/internal/UF;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/gG;->b:Lcom/android/tools/r8/internal/UF;

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gG;->c:Lcom/android/tools/r8/internal/UF;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gG;->b:Lcom/android/tools/r8/internal/UF;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gG;->a()Lcom/android/tools/r8/internal/UF;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/gG;->e:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gG;->b()Lcom/android/tools/r8/internal/UF;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/gG;->e:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/gG;->d:Lcom/android/tools/r8/internal/UF;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/gG;->b:Lcom/android/tools/r8/internal/UF;

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/tools/r8/internal/gG;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/gG;->e:I

    :cond_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/gG;->b:Lcom/android/tools/r8/internal/UF;

    iput-object v0, p0, Lcom/android/tools/r8/internal/gG;->c:Lcom/android/tools/r8/internal/UF;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gG;->e()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gG;->d()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/gG;->f:Lcom/android/tools/r8/internal/iG;

    iget-object v1, p0, Lcom/android/tools/r8/internal/gG;->d:Lcom/android/tools/r8/internal/UF;

    iget v1, v1, Lcom/android/tools/r8/internal/M;->b:I

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/iG;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/gG;->d:Lcom/android/tools/r8/internal/UF;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
