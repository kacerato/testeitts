.class public final Lcom/android/tools/r8/internal/E0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:Ljava/util/Iterator;

.field public c:Ljava/util/Map$Entry;

.field public d:I

.field public e:Z

.field public final synthetic f:Lcom/android/tools/r8/internal/F0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/F0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/E0;->f:Lcom/android/tools/r8/internal/F0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/tools/r8/internal/F0;->d:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/E0;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/E0;->d:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/E0;->b:Ljava/util/Iterator;

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

    iget v0, p0, Lcom/android/tools/r8/internal/E0;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/E0;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/android/tools/r8/internal/E0;->c:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ki;

    iget v0, v0, Lcom/android/tools/r8/internal/ki;->b:I

    iput v0, p0, Lcom/android/tools/r8/internal/E0;->d:I

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/E0;->d:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/E0;->d:I

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/E0;->e:Z

    iget-object v0, p0, Lcom/android/tools/r8/internal/E0;->c:Ljava/util/Map$Entry;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/E0;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/E0;->c:Ljava/util/Map$Entry;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ki;

    iget v0, v0, Lcom/android/tools/r8/internal/ki;->b:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/E0;->c:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ki;

    iget v1, v0, Lcom/android/tools/r8/internal/ki;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/tools/r8/internal/ki;->b:I

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/E0;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/E0;->f:Lcom/android/tools/r8/internal/F0;

    iget-wide v1, v0, Lcom/android/tools/r8/internal/F0;->e:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/tools/r8/internal/F0;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/E0;->e:Z

    return-void

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
