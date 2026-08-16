.class public final Lcom/android/tools/r8/internal/wa0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Lcom/android/tools/r8/internal/Dq;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/internal/Dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/tools/r8/internal/wa0;->a(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wa0;->a:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/tools/r8/internal/wa0;->b:Lcom/android/tools/r8/internal/Dq;

    return-void
.end method

.method public static a(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/HashMap;
    .locals 2

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    new-instance v1, Lcom/android/tools/r8/internal/Nx1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Nx1;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/O2;Ljava/util/Set;)V
    .locals 3

    .line 10
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/O2;

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/O2;

    .line 14
    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result v2

    if-gez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 15
    :cond_1
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/D2;)Lcom/android/tools/r8/graph/O2;
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/graph/D2;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, [Lcom/android/tools/r8/graph/M2;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/M2;

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcom/android/tools/r8/graph/O2;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    move-object p1, v0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/wa0;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/O2;

    return-object p1
.end method
