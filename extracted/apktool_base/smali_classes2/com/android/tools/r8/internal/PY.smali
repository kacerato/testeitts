.class public final Lcom/android/tools/r8/internal/PY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Dg;

.field public final c:Ljava/util/Iterator;

.field public d:Lcom/android/tools/r8/internal/MY;

.field public e:I

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Dg;Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/PY;->b:Lcom/android/tools/r8/internal/Dg;

    iput-object p2, p0, Lcom/android/tools/r8/internal/PY;->c:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/PY;->e:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/PY;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PY;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/PY;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/PY;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/MY;

    iput-object v0, p0, Lcom/android/tools/r8/internal/PY;->d:Lcom/android/tools/r8/internal/MY;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/MY;->a()I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/internal/PY;->e:I

    iput v0, p0, Lcom/android/tools/r8/internal/PY;->f:I

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/PY;->e:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/PY;->e:I

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/PY;->g:Z

    iget-object v0, p0, Lcom/android/tools/r8/internal/PY;->d:Lcom/android/tools/r8/internal/MY;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/PY;->g:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/PY;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/PY;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/PY;->b:Lcom/android/tools/r8/internal/Dg;

    iget-object v2, p0, Lcom/android/tools/r8/internal/PY;->d:Lcom/android/tools/r8/internal/MY;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/V0;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/PY;->f:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/PY;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/PY;->g:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
