.class public final Lcom/android/tools/r8/internal/Ag;
.super Lcom/android/tools/r8/internal/e0;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Dg;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/e0;-><init>()V

    iget-object p1, p1, Lcom/android/tools/r8/internal/Dg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ag;->d:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ag;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/tools/r8/internal/e0;->b:I

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ag;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/OY;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/internal/OY;-><init>(ILjava/lang/Object;)V

    return-object v2
.end method
