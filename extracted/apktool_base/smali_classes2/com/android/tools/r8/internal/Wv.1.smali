.class public final Lcom/android/tools/r8/internal/Wv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public final b:Lcom/android/tools/r8/internal/qd0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Wv;->a:Ljava/util/IdentityHashMap;

    new-instance v0, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Wv;->b:Lcom/android/tools/r8/internal/qd0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j1;)Ljava/util/List;
    .locals 0

    .line 7
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;)V
    .locals 4

    .line 4
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/internal/Wv;->a:Ljava/util/IdentityHashMap;

    new-instance v3, Lcom/android/tools/r8/internal/G11;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/G11;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wv;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i;

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/F11;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/F11;-><init>(Lcom/android/tools/r8/internal/Wv;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/t5;->a(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wv;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_1

    .line 9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/Wv;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/qd0;->c(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_0

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/internal/Wv;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
