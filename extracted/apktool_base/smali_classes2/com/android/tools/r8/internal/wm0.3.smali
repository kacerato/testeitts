.class public final Lcom/android/tools/r8/internal/wm0;
.super Lcom/android/tools/r8/internal/y8;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/y8;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final c()Lcom/android/tools/r8/internal/m80;
    .locals 5

    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/y8;->a()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/vm0;

    iget-object v4, v3, Lcom/android/tools/r8/internal/vm0;->d:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/E00;->a()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/tools/r8/internal/Ux1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Ux1;-><init>()V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method
