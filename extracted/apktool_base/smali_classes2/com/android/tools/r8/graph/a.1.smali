.class public final Lcom/android/tools/r8/graph/a;
.super Lcom/android/tools/r8/graph/d;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/graph/d;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/graph/d;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/m80;)V
    .locals 0

    if-eq p2, p0, :cond_0

    .line 2
    iget-object p0, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 3
    iget-object p1, p3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/m80;)V
    .locals 2

    .line 46
    sget-object v0, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    .line 47
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 48
    new-instance v1, Lcom/android/tools/r8/internal/l80;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/l80;-><init>(I)V

    .line 49
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/Vn;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/m80;)V
    .locals 0

    .line 7
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/m80;
    .locals 0

    .line 6
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/Map;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/m80;)V
    .locals 1

    .line 32
    new-instance v0, Lcom/android/tools/r8/graph/rc;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/rc;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/m80;

    .line 33
    iget-object p0, p0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 34
    iget-object p1, p2, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/m80;
    .locals 0

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/m80;
    .locals 0

    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/a;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/graph/d;
    .locals 6

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/m80;

    .line 52
    iget-object v2, v1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 53
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    .line 54
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    .line 56
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/O5;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 58
    iget-object v5, p1, Lcom/android/tools/r8/graph/O5;->c:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_2

    .line 59
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v3

    .line 60
    :cond_2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/graph/uc;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/graph/uc;-><init>(Lcom/android/tools/r8/internal/m80;)V

    invoke-virtual {p1, v4, v5}, Lcom/android/tools/r8/graph/O5;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_0

    .line 61
    iget-object v1, v1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    iget-object v2, v3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/d;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/a;->b(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/d;)Lcom/android/tools/r8/graph/d;
    .locals 3

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 40
    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/graph/c;

    if-eqz v0, :cond_1

    return-object p1

    .line 41
    :cond_1
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 42
    iget-object v1, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    new-instance v2, Lcom/android/tools/r8/graph/sc;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/graph/sc;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 43
    new-instance v1, Lcom/android/tools/r8/graph/tc;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/tc;-><init>(Ljava/util/Map;)V

    .line 44
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/d;->a()Lcom/android/tools/r8/graph/a;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 45
    new-instance p1, Lcom/android/tools/r8/graph/a;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/graph/a;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 18
    new-instance v1, Lcom/android/tools/r8/graph/xc;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/xc;-><init>()V

    .line 19
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/m80;

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    new-instance v2, Lcom/android/tools/r8/graph/yc;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/graph/yc;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/m80;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 22
    iget-object v1, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 23
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/graph/a;->b:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 5

    .line 9
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 11
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/m80;

    .line 12
    iget-object v2, v2, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 13
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 14
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H5;

    .line 15
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 16
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Lcom/android/tools/r8/graph/wc;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/graph/wc;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/m80;

    .line 32
    iget-object v1, v1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 33
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 34
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H5;

    .line 35
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    if-eq v2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/graph/vc;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/vc;-><init>()V

    .line 37
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/m80;

    .line 38
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/util/function/Predicate;)Z
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/m80;

    .line 27
    iget-object v1, v1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 28
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 29
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H5;

    .line 30
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/m80;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    .line 5
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Should only be querying the number of access contexts after flattening"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/a;
    .locals 8

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/l1;

    .line 14
    invoke-virtual {p2, v1, v4}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v5

    .line 15
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/m80;

    .line 16
    invoke-virtual {v3, p1, p2}, Lcom/android/tools/r8/internal/m80;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/m80;

    move-result-object v6

    if-ne v5, v4, :cond_1

    if-ne v6, v3, :cond_1

    if-nez v2, :cond_2

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 17
    new-instance v2, Ljava/util/IdentityHashMap;

    iget-object v3, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 18
    iget-object v3, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    .line 19
    new-instance v7, Lcom/android/tools/r8/graph/zc;

    invoke-direct {v7, v2}, Lcom/android/tools/r8/graph/zc;-><init>(Ljava/util/Map;)V

    .line 20
    invoke-static {v3, v7, v4}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Map;Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    .line 21
    :cond_2
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/m80;

    if-eqz v3, :cond_0

    .line 22
    iget-object v4, v3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    .line 23
    iget-object v7, v6, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 24
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-gt v4, v7, :cond_3

    .line 25
    iget-object v4, v6, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 26
    :cond_3
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v3, v3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    iget-object v4, v6, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 28
    iget-object p1, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    .line 29
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    .line 30
    invoke-static {v2, p1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/IdentityHashMap;I)Ljava/util/Map;

    move-result-object p1

    .line 31
    new-instance p2, Lcom/android/tools/r8/graph/a;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/graph/a;-><init>(Ljava/util/Map;)V

    return-object p2

    :cond_5
    return-object p0
.end method

.method public final b(Ljava/util/function/Predicate;)Z
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/m80;

    .line 8
    iget-object v1, v1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 9
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 10
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H5;

    .line 11
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
