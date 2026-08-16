.class public Lcom/android/tools/r8/internal/iI;
.super Lcom/android/tools/r8/internal/b0;
.source "SourceFile"


# instance fields
.field public b:Lcom/android/tools/r8/internal/hI;

.field public c:Lcom/android/tools/r8/internal/hI;

.field public d:Lcom/android/tools/r8/internal/hI;

.field public e:I

.field public final synthetic f:Lcom/android/tools/r8/internal/lI;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/lI;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/iI;->f:Lcom/android/tools/r8/internal/lI;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/b0;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/iI;->e:I

    iget-object p1, p1, Lcom/android/tools/r8/internal/lI;->d:Lcom/android/tools/r8/internal/hI;

    iput-object p1, p0, Lcom/android/tools/r8/internal/iI;->c:Lcom/android/tools/r8/internal/hI;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iI;->c:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->b()Lcom/android/tools/r8/internal/hI;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/iI;->c:Lcom/android/tools/r8/internal/hI;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iI;->b:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hI;->d()Lcom/android/tools/r8/internal/hI;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/iI;->b:Lcom/android/tools/r8/internal/hI;

    return-void
.end method

.method public final c()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iI;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/iI;->b:Lcom/android/tools/r8/internal/hI;

    iput-object v0, p0, Lcom/android/tools/r8/internal/iI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object v0, p0, Lcom/android/tools/r8/internal/iI;->d:Lcom/android/tools/r8/internal/hI;

    iget v0, p0, Lcom/android/tools/r8/internal/iI;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/iI;->e:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iI;->b()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/iI;->d:Lcom/android/tools/r8/internal/hI;

    iget v0, v0, Lcom/android/tools/r8/internal/hI;->b:I

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iI;->c:Lcom/android/tools/r8/internal/hI;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iI;->b:Lcom/android/tools/r8/internal/hI;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/iI;->e:I

    return v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/iI;->e:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final r()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iI;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/iI;->c:Lcom/android/tools/r8/internal/hI;

    iput-object v0, p0, Lcom/android/tools/r8/internal/iI;->b:Lcom/android/tools/r8/internal/hI;

    iput-object v0, p0, Lcom/android/tools/r8/internal/iI;->d:Lcom/android/tools/r8/internal/hI;

    iget v0, p0, Lcom/android/tools/r8/internal/iI;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/iI;->e:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iI;->a()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/iI;->d:Lcom/android/tools/r8/internal/hI;

    iget v0, v0, Lcom/android/tools/r8/internal/hI;->b:I

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/iI;->d:Lcom/android/tools/r8/internal/hI;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/iI;->b:Lcom/android/tools/r8/internal/hI;

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/tools/r8/internal/iI;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/iI;->e:I

    :cond_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/iI;->b:Lcom/android/tools/r8/internal/hI;

    iput-object v0, p0, Lcom/android/tools/r8/internal/iI;->c:Lcom/android/tools/r8/internal/hI;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iI;->b()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iI;->a()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/iI;->f:Lcom/android/tools/r8/internal/lI;

    iget-object v1, p0, Lcom/android/tools/r8/internal/iI;->d:Lcom/android/tools/r8/internal/hI;

    iget v1, v1, Lcom/android/tools/r8/internal/hI;->b:I

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/iI;->d:Lcom/android/tools/r8/internal/hI;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
