.class public abstract Lcom/android/tools/r8/internal/d30;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public b:Lcom/android/tools/r8/internal/R20;

.field public c:Lcom/android/tools/r8/internal/R20;

.field public d:Lcom/android/tools/r8/internal/R20;

.field public e:I

.field public final synthetic f:Lcom/android/tools/r8/internal/f30;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/f30;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/d30;->f:Lcom/android/tools/r8/internal/f30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/d30;->e:I

    iget-object p1, p1, Lcom/android/tools/r8/internal/f30;->d:Lcom/android/tools/r8/internal/R20;

    iput-object p1, p0, Lcom/android/tools/r8/internal/d30;->c:Lcom/android/tools/r8/internal/R20;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/R20;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/d30;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/d30;->c:Lcom/android/tools/r8/internal/R20;

    iput-object v0, p0, Lcom/android/tools/r8/internal/d30;->b:Lcom/android/tools/r8/internal/R20;

    iput-object v0, p0, Lcom/android/tools/r8/internal/d30;->d:Lcom/android/tools/r8/internal/R20;

    iget v0, p0, Lcom/android/tools/r8/internal/d30;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/d30;->e:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/d30;->d()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/d30;->d:Lcom/android/tools/r8/internal/R20;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final b()Lcom/android/tools/r8/internal/R20;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/d30;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/d30;->b:Lcom/android/tools/r8/internal/R20;

    iput-object v0, p0, Lcom/android/tools/r8/internal/d30;->c:Lcom/android/tools/r8/internal/R20;

    iput-object v0, p0, Lcom/android/tools/r8/internal/d30;->d:Lcom/android/tools/r8/internal/R20;

    iget v0, p0, Lcom/android/tools/r8/internal/d30;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/d30;->e:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/d30;->e()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/d30;->d:Lcom/android/tools/r8/internal/R20;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/d30;->c:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/R20;->c()Lcom/android/tools/r8/internal/R20;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/d30;->c:Lcom/android/tools/r8/internal/R20;

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/d30;->b:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/R20;->e()Lcom/android/tools/r8/internal/R20;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/d30;->b:Lcom/android/tools/r8/internal/R20;

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/d30;->c:Lcom/android/tools/r8/internal/R20;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/d30;->b:Lcom/android/tools/r8/internal/R20;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/d30;->a()Lcom/android/tools/r8/internal/R20;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/d30;->e:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/d30;->b()Lcom/android/tools/r8/internal/R20;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/d30;->e:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/d30;->d:Lcom/android/tools/r8/internal/R20;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/d30;->b:Lcom/android/tools/r8/internal/R20;

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/tools/r8/internal/d30;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/d30;->e:I

    :cond_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/d30;->b:Lcom/android/tools/r8/internal/R20;

    iput-object v0, p0, Lcom/android/tools/r8/internal/d30;->c:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/d30;->e()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/d30;->d()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/d30;->f:Lcom/android/tools/r8/internal/f30;

    iget-object v1, p0, Lcom/android/tools/r8/internal/d30;->d:Lcom/android/tools/r8/internal/R20;

    iget-object v1, v1, Lcom/android/tools/r8/internal/R20;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/f30;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/d30;->d:Lcom/android/tools/r8/internal/R20;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
