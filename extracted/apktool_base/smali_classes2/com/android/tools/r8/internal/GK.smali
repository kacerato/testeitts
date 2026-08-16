.class public final Lcom/android/tools/r8/internal/GK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:Ljava/util/Iterator;

.field public c:Ljava/util/Iterator;

.field public d:Ljava/util/Iterator;

.field public e:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/FK;->e:Lcom/android/tools/r8/internal/FK;

    iput-object v0, p0, Lcom/android/tools/r8/internal/GK;->c:Ljava/util/Iterator;

    iput-object p1, p0, Lcom/android/tools/r8/internal/GK;->d:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/GK;->c:Ljava/util/Iterator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/GK;->d:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/GK;->d:Ljava/util/Iterator;

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/GK;->e:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/GK;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/android/tools/r8/internal/GK;->d:Ljava/util/Iterator;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/android/tools/r8/internal/GK;->d:Ljava/util/Iterator;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/android/tools/r8/internal/GK;->c:Ljava/util/Iterator;

    instance-of v1, v0, Lcom/android/tools/r8/internal/GK;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/tools/r8/internal/GK;

    iget-object v1, v0, Lcom/android/tools/r8/internal/GK;->c:Ljava/util/Iterator;

    iput-object v1, p0, Lcom/android/tools/r8/internal/GK;->c:Ljava/util/Iterator;

    iget-object v1, p0, Lcom/android/tools/r8/internal/GK;->e:Ljava/util/ArrayDeque;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/GK;->e:Ljava/util/ArrayDeque;

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/GK;->e:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/android/tools/r8/internal/GK;->d:Ljava/util/Iterator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/tools/r8/internal/GK;->e:Ljava/util/ArrayDeque;

    if-eqz v1, :cond_6

    :goto_4
    iget-object v1, v0, Lcom/android/tools/r8/internal/GK;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/tools/r8/internal/GK;->e:Ljava/util/ArrayDeque;

    iget-object v2, v0, Lcom/android/tools/r8/internal/GK;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Iterator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    iget-object v0, v0, Lcom/android/tools/r8/internal/GK;->d:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/android/tools/r8/internal/GK;->d:Ljava/util/Iterator;

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/GK;->c:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/android/tools/r8/internal/GK;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/GK;->b:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/GK;->b:Ljava/util/Iterator;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
