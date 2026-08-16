.class public final Lcom/android/tools/r8/internal/YW;
.super Lcom/android/tools/r8/internal/Wj;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/IdentityHashMap;

.field public final g:Lcom/android/tools/r8/internal/m80;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/m80;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Wj;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/YW;->f:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/YW;->g:Lcom/android/tools/r8/internal/m80;

    new-instance p1, Lcom/android/tools/r8/internal/q31;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/q31;-><init>(Lcom/android/tools/r8/internal/YW;)V

    invoke-interface {p3, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    new-instance p1, Lcom/android/tools/r8/internal/q31;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/q31;-><init>(Lcom/android/tools/r8/internal/YW;)V

    invoke-interface {p4, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/YW;->f:Ljava/util/IdentityHashMap;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/X11;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/X11;-><init>()V

    invoke-static {v2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Dq;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Dq;->a(Lcom/android/tools/r8/graph/A2;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/YW;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Dq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object p2, p2, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object v0

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/tools/r8/internal/YW;->g:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    :cond_0
    return-void
.end method

.method public final j(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/YW;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final l(Lcom/android/tools/r8/graph/H2;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/YW;->f:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/X11;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/X11;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Dq;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wj;->b:Lcom/android/tools/r8/graph/c4;

    new-instance v2, Lcom/android/tools/r8/internal/r31;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/r31;-><init>(Lcom/android/tools/r8/internal/YW;Lcom/android/tools/r8/internal/Dq;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v1, v3, v2, p1}, Lcom/android/tools/r8/graph/c4;->a(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    new-instance v1, Lcom/android/tools/r8/internal/s31;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/s31;-><init>(Lcom/android/tools/r8/internal/YW;Lcom/android/tools/r8/internal/Dq;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    return-void
.end method
