.class public abstract Lcom/android/tools/r8/internal/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:Ljava/util/Iterator;

.field public c:Ljava/lang/Object;

.field public d:Ljava/util/Collection;

.field public e:Ljava/util/Iterator;

.field public final synthetic f:Lcom/android/tools/r8/internal/A0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/A0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/s0;->f:Lcom/android/tools/r8/internal/A0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/tools/r8/internal/A0;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/s0;->b:Ljava/util/Iterator;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/internal/s0;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/tools/r8/internal/s0;->d:Ljava/util/Collection;

    sget-object p1, Lcom/android/tools/r8/internal/HK;->b:Lcom/android/tools/r8/internal/HK;

    iput-object p1, p0, Lcom/android/tools/r8/internal/s0;->e:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/s0;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/s0;->e:Ljava/util/Iterator;

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
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/s0;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/s0;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/s0;->c:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/android/tools/r8/internal/s0;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/s0;->e:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/s0;->c:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/s0;->e:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/ZB;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/ZB;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/s0;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/s0;->d:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/s0;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/s0;->f:Lcom/android/tools/r8/internal/A0;

    iget v1, v0, Lcom/android/tools/r8/internal/A0;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/tools/r8/internal/A0;->g:I

    return-void
.end method
