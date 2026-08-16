.class public final Lcom/android/tools/r8/internal/D0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:Ljava/util/Map$Entry;

.field public final synthetic c:Ljava/util/Iterator;

.field public final synthetic d:Lcom/android/tools/r8/internal/F0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/F0;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/D0;->d:Lcom/android/tools/r8/internal/F0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/D0;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/D0;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/D0;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/android/tools/r8/internal/D0;->b:Ljava/util/Map$Entry;

    new-instance v1, Lcom/android/tools/r8/internal/C0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/C0;-><init>(Lcom/android/tools/r8/internal/D0;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public final remove()V
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/D0;->b:Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/D0;->d:Lcom/android/tools/r8/internal/F0;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ki;

    iget v3, v0, Lcom/android/tools/r8/internal/ki;->b:I

    iput v1, v0, Lcom/android/tools/r8/internal/ki;->b:I

    int-to-long v0, v3

    iget-wide v3, v2, Lcom/android/tools/r8/internal/F0;->e:J

    sub-long/2addr v3, v0

    iput-wide v3, v2, Lcom/android/tools/r8/internal/F0;->e:J

    iget-object v0, p0, Lcom/android/tools/r8/internal/D0;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/D0;->b:Ljava/util/Map$Entry;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
