.class public final Lcom/android/tools/r8/internal/Gx;
.super Lcom/android/tools/r8/internal/i6;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Qx;


# instance fields
.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/i6;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/Gx;->b:Ljava/util/LinkedHashMap;

    .line 3
    iput-object p2, p0, Lcom/android/tools/r8/internal/Gx;->c:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashSet;)V
    .locals 4

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/internal/i6;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/Gx;->b:Ljava/util/LinkedHashMap;

    .line 7
    iput-object v1, p0, Lcom/android/tools/r8/internal/Gx;->c:Ljava/util/LinkedHashMap;

    .line 8
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Jx;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    instance-of v1, v0, Lcom/android/tools/r8/internal/Ix;

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Jx;->a()Lcom/android/tools/r8/internal/Ix;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/Gx;->b:Ljava/util/LinkedHashMap;

    .line 13
    iget-object v2, v0, Lcom/android/tools/r8/internal/Ix;->e:Lcom/android/tools/r8/graph/F5;

    .line 14
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Jx;->b()Lcom/android/tools/r8/internal/Kx;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/internal/Gx;->c:Ljava/util/LinkedHashMap;

    .line 17
    iget-object v2, v0, Lcom/android/tools/r8/internal/Kx;->e:Lcom/android/tools/r8/graph/H5;

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    new-instance v3, Lcom/android/tools/r8/internal/bG0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/bG0;-><init>()V

    invoke-static {v3}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v3

    .line 19
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/SG;

    .line 20
    iget v2, v0, Lcom/android/tools/r8/internal/Kx;->g:I

    .line 21
    invoke-interface {v1, v2, v0}, Lcom/android/tools/r8/internal/HG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/SG;)V
    .locals 0

    .line 12
    invoke-interface {p1}, Lcom/android/tools/r8/internal/SG;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/SG;)V
    .locals 0

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/internal/SG;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/Iw0;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gx;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ix;

    .line 14
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ix;->f:Lcom/android/tools/r8/internal/Iw0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/aX;Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/Iw0;
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gx;->c:Ljava/util/LinkedHashMap;

    .line 16
    iget-object v1, p1, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    .line 17
    sget-object v2, Lcom/android/tools/r8/internal/UG;->a:Lcom/android/tools/r8/internal/TG;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/SG;

    .line 18
    iget p1, p1, Lcom/android/tools/r8/internal/aX;->b:I

    .line 19
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Kx;

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Kx;->d()Lcom/android/tools/r8/internal/Iw0;

    move-result-object p1

    return-object p1

    .line 21
    :cond_0
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Iw0;

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/Jx;

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Yx0;-><init>(Ljava/util/Set;)V

    .line 4
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/i6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/Yx0;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gx;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gx;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/cG0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/cG0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 1

    .line 5
    check-cast p2, Lcom/android/tools/r8/internal/Jx;

    .line 6
    iget-object v0, p2, Lcom/android/tools/r8/internal/Jx;->a:Ljava/util/LinkedHashSet;

    .line 7
    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 8
    iget-object p2, p2, Lcom/android/tools/r8/internal/Jx;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 9
    invoke-interface {p2, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gx;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final c(Ljava/util/function/Consumer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gx;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/aG0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/aG0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
