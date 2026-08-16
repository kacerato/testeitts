.class public abstract Lcom/android/tools/r8/internal/tH;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public b:Lcom/android/tools/r8/internal/hH;

.field public c:Lcom/android/tools/r8/internal/hH;

.field public d:Lcom/android/tools/r8/internal/hH;

.field public e:I

.field public final synthetic f:Lcom/android/tools/r8/internal/vH;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/vH;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/tH;->f:Lcom/android/tools/r8/internal/vH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/tH;->e:I

    iget-object p1, p1, Lcom/android/tools/r8/internal/vH;->d:Lcom/android/tools/r8/internal/hH;

    iput-object p1, p0, Lcom/android/tools/r8/internal/tH;->c:Lcom/android/tools/r8/internal/hH;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/hH;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tH;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/tH;->c:Lcom/android/tools/r8/internal/hH;

    iput-object v0, p0, Lcom/android/tools/r8/internal/tH;->b:Lcom/android/tools/r8/internal/hH;

    iput-object v0, p0, Lcom/android/tools/r8/internal/tH;->d:Lcom/android/tools/r8/internal/hH;

    iget v0, p0, Lcom/android/tools/r8/internal/tH;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/tH;->e:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tH;->d()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/tH;->d:Lcom/android/tools/r8/internal/hH;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final b()Lcom/android/tools/r8/internal/hH;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tH;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/tH;->b:Lcom/android/tools/r8/internal/hH;

    iput-object v0, p0, Lcom/android/tools/r8/internal/tH;->c:Lcom/android/tools/r8/internal/hH;

    iput-object v0, p0, Lcom/android/tools/r8/internal/tH;->d:Lcom/android/tools/r8/internal/hH;

    iget v0, p0, Lcom/android/tools/r8/internal/tH;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/tH;->e:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tH;->e()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/tH;->d:Lcom/android/tools/r8/internal/hH;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/tH;->c:Lcom/android/tools/r8/internal/hH;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hH;->c()Lcom/android/tools/r8/internal/hH;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/tH;->c:Lcom/android/tools/r8/internal/hH;

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/tH;->b:Lcom/android/tools/r8/internal/hH;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hH;->e()Lcom/android/tools/r8/internal/hH;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/tH;->b:Lcom/android/tools/r8/internal/hH;

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/tH;->c:Lcom/android/tools/r8/internal/hH;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/tH;->b:Lcom/android/tools/r8/internal/hH;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tH;->a()Lcom/android/tools/r8/internal/hH;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/tH;->e:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tH;->b()Lcom/android/tools/r8/internal/hH;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/tH;->e:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/tH;->d:Lcom/android/tools/r8/internal/hH;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/tH;->b:Lcom/android/tools/r8/internal/hH;

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/tools/r8/internal/tH;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/tH;->e:I

    :cond_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/tH;->b:Lcom/android/tools/r8/internal/hH;

    iput-object v0, p0, Lcom/android/tools/r8/internal/tH;->c:Lcom/android/tools/r8/internal/hH;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tH;->e()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tH;->d()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/tH;->f:Lcom/android/tools/r8/internal/vH;

    iget-object v1, p0, Lcom/android/tools/r8/internal/tH;->d:Lcom/android/tools/r8/internal/hH;

    iget v1, v1, Lcom/android/tools/r8/internal/S;->b:I

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/vH;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/tH;->d:Lcom/android/tools/r8/internal/hH;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
