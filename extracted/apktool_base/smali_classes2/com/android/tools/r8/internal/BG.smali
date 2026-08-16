.class public abstract Lcom/android/tools/r8/internal/BG;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public b:Lcom/android/tools/r8/internal/pG;

.field public c:Lcom/android/tools/r8/internal/pG;

.field public d:Lcom/android/tools/r8/internal/pG;

.field public e:I

.field public final synthetic f:Lcom/android/tools/r8/internal/DG;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/DG;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/BG;->f:Lcom/android/tools/r8/internal/DG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/BG;->e:I

    iget-object p1, p1, Lcom/android/tools/r8/internal/DG;->d:Lcom/android/tools/r8/internal/pG;

    iput-object p1, p0, Lcom/android/tools/r8/internal/BG;->c:Lcom/android/tools/r8/internal/pG;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/pG;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/BG;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/BG;->c:Lcom/android/tools/r8/internal/pG;

    iput-object v0, p0, Lcom/android/tools/r8/internal/BG;->b:Lcom/android/tools/r8/internal/pG;

    iput-object v0, p0, Lcom/android/tools/r8/internal/BG;->d:Lcom/android/tools/r8/internal/pG;

    iget v0, p0, Lcom/android/tools/r8/internal/BG;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/BG;->e:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/BG;->d()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/BG;->d:Lcom/android/tools/r8/internal/pG;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final b()Lcom/android/tools/r8/internal/pG;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/BG;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/BG;->b:Lcom/android/tools/r8/internal/pG;

    iput-object v0, p0, Lcom/android/tools/r8/internal/BG;->c:Lcom/android/tools/r8/internal/pG;

    iput-object v0, p0, Lcom/android/tools/r8/internal/BG;->d:Lcom/android/tools/r8/internal/pG;

    iget v0, p0, Lcom/android/tools/r8/internal/BG;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/BG;->e:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/BG;->e()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/BG;->d:Lcom/android/tools/r8/internal/pG;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/BG;->c:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pG;->b()Lcom/android/tools/r8/internal/pG;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/BG;->c:Lcom/android/tools/r8/internal/pG;

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/BG;->b:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pG;->d()Lcom/android/tools/r8/internal/pG;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/BG;->b:Lcom/android/tools/r8/internal/pG;

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/BG;->c:Lcom/android/tools/r8/internal/pG;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/BG;->b:Lcom/android/tools/r8/internal/pG;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/BG;->a()Lcom/android/tools/r8/internal/pG;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/BG;->e:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/BG;->b()Lcom/android/tools/r8/internal/pG;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/BG;->e:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/BG;->d:Lcom/android/tools/r8/internal/pG;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/BG;->b:Lcom/android/tools/r8/internal/pG;

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/tools/r8/internal/BG;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/BG;->e:I

    :cond_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/BG;->b:Lcom/android/tools/r8/internal/pG;

    iput-object v0, p0, Lcom/android/tools/r8/internal/BG;->c:Lcom/android/tools/r8/internal/pG;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/BG;->e()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/BG;->d()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/BG;->f:Lcom/android/tools/r8/internal/DG;

    iget-object v1, p0, Lcom/android/tools/r8/internal/BG;->d:Lcom/android/tools/r8/internal/pG;

    iget v1, v1, Lcom/android/tools/r8/internal/S;->b:I

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/DG;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/BG;->d:Lcom/android/tools/r8/internal/pG;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
