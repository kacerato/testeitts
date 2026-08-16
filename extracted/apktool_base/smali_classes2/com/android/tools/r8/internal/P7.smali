.class public final Lcom/android/tools/r8/internal/P7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Cq;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/Cq;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Cq;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/P7;->a:Lcom/android/tools/r8/internal/Cq;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/P7;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/P7;->a:Lcom/android/tools/r8/internal/Cq;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p1, Lcom/android/tools/r8/internal/P7;->a:Lcom/android/tools/r8/internal/Cq;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/P7;->a:Lcom/android/tools/r8/internal/Cq;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/F2;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/F2;

    iget-object v4, p1, Lcom/android/tools/r8/internal/P7;->a:Lcom/android/tools/r8/internal/Cq;

    iget-object v4, v4, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/F2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
