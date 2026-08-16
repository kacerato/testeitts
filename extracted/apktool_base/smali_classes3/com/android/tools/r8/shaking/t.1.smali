.class public Lcom/android/tools/r8/shaking/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;


# instance fields
.field public final a:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

.field public final b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/t;->b:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/t;->a:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;)Ljava/util/Map;
    .locals 0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;)Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/experimental/graphinfo/GraphNode;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/experimental/graphinfo/GraphNode;",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/internal/Dz;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/t;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/experimental/graphinfo/GraphNode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/t;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final acceptEdge(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/t;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/af;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/af;-><init>()V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/shaking/bf;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/bf;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/tools/r8/shaking/t;->a:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;->acceptEdge(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz;)V

    :cond_0
    return-void
.end method
