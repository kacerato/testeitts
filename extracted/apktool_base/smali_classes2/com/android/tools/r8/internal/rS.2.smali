.class public final Lcom/android/tools/r8/internal/rS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:Ljava/util/HashSet;

.field public c:Lcom/android/tools/r8/internal/tS;

.field public d:Lcom/android/tools/r8/internal/tS;

.field public e:I

.field public final synthetic f:Lcom/android/tools/r8/internal/wS;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/wS;)V
    .locals 2

    iput-object p1, p0, Lcom/android/tools/r8/internal/rS;->f:Lcom/android/tools/r8/internal/wS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/S0;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/android/tools/r8/internal/tV;->a(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/rS;->b:Ljava/util/HashSet;

    iget-object v0, p1, Lcom/android/tools/r8/internal/wS;->f:Lcom/android/tools/r8/internal/tS;

    iput-object v0, p0, Lcom/android/tools/r8/internal/rS;->c:Lcom/android/tools/r8/internal/tS;

    iget p1, p1, Lcom/android/tools/r8/internal/wS;->j:I

    iput p1, p0, Lcom/android/tools/r8/internal/rS;->e:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/rS;->f:Lcom/android/tools/r8/internal/wS;

    iget v0, v0, Lcom/android/tools/r8/internal/wS;->j:I

    iget v1, p0, Lcom/android/tools/r8/internal/rS;->e:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/rS;->c:Lcom/android/tools/r8/internal/tS;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/rS;->f:Lcom/android/tools/r8/internal/wS;

    iget v0, v0, Lcom/android/tools/r8/internal/wS;->j:I

    iget v1, p0, Lcom/android/tools/r8/internal/rS;->e:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/rS;->c:Lcom/android/tools/r8/internal/tS;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/android/tools/r8/internal/rS;->d:Lcom/android/tools/r8/internal/tS;

    iget-object v1, p0, Lcom/android/tools/r8/internal/rS;->b:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/android/tools/r8/internal/tS;->b:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/rS;->c:Lcom/android/tools/r8/internal/tS;

    iget-object v0, v0, Lcom/android/tools/r8/internal/tS;->d:Lcom/android/tools/r8/internal/tS;

    iput-object v0, p0, Lcom/android/tools/r8/internal/rS;->c:Lcom/android/tools/r8/internal/tS;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/rS;->b:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/android/tools/r8/internal/tS;->b:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/rS;->d:Lcom/android/tools/r8/internal/tS;

    iget-object v0, v0, Lcom/android/tools/r8/internal/tS;->b:Ljava/lang/Object;

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/rS;->f:Lcom/android/tools/r8/internal/wS;

    iget v1, v0, Lcom/android/tools/r8/internal/wS;->j:I

    iget v2, p0, Lcom/android/tools/r8/internal/rS;->e:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/rS;->d:Lcom/android/tools/r8/internal/tS;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/android/tools/r8/internal/tS;->b:Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/vS;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/vS;-><init>(Lcom/android/tools/r8/internal/wS;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/vS;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/vS;->next()Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/vS;->remove()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/rS;->d:Lcom/android/tools/r8/internal/tS;

    iget-object v0, p0, Lcom/android/tools/r8/internal/rS;->f:Lcom/android/tools/r8/internal/wS;

    iget v0, v0, Lcom/android/tools/r8/internal/wS;->j:I

    iput v0, p0, Lcom/android/tools/r8/internal/rS;->e:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
