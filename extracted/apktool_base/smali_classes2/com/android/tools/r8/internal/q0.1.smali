.class public final Lcom/android/tools/r8/internal/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:Ljava/util/Iterator;

.field public c:Ljava/util/Collection;

.field public final synthetic d:Lcom/android/tools/r8/internal/r0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/r0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/q0;->d:Lcom/android/tools/r8/internal/r0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/tools/r8/internal/r0;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/q0;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/q0;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/q0;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/android/tools/r8/internal/q0;->c:Ljava/util/Collection;

    iget-object v1, p0, Lcom/android/tools/r8/internal/q0;->d:Lcom/android/tools/r8/internal/r0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/r0;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/q0;->c:Ljava/util/Collection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/q0;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/q0;->d:Lcom/android/tools/r8/internal/r0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/r0;->e:Lcom/android/tools/r8/internal/A0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/q0;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget v2, v0, Lcom/android/tools/r8/internal/A0;->g:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/android/tools/r8/internal/A0;->g:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/q0;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/q0;->c:Ljava/util/Collection;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
