.class public Lcom/android/tools/r8/internal/x8;
.super Lcom/android/tools/r8/internal/y8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/y8<",
        "Lcom/android/tools/r8/internal/D00;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/y8;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/D00;)Lcom/android/tools/r8/graph/A2;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/E00;->a()Lcom/android/tools/r8/graph/H5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/A2;

    return-object p0
.end method

.method public static a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/x8;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/internal/D00;",
            ">;)",
            "Lcom/android/tools/r8/internal/x8;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/x8;

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/tools/r8/internal/py1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/py1;-><init>()V

    .line 3
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    .line 4
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 5
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/x8;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/D00;)V
    .locals 0

    .line 8
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/D00;->f()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/m80;
    .locals 2

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/qy1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qy1;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/ry1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/ry1;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/x8;->a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/m80;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/m80;
    .locals 5

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/internal/nJ;->e2:Z

    if-eqz v0, :cond_0

    .line 11
    sget v0, Lcom/android/tools/r8/internal/mn0;->f:I

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/ln0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ln0;-><init>()V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    .line 14
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/internal/y8;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 16
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/D00;

    .line 18
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 19
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/E00;->a()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 21
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_2
    invoke-interface {v1, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 23
    sget-boolean p1, Lcom/android/tools/r8/internal/x8;->b:Z

    if-nez p1, :cond_4

    .line 24
    iget-object p1, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 25
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 26
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public c()Lcom/android/tools/r8/internal/m80;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/qy1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qy1;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/sy1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/sy1;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/x8;->a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/android/tools/r8/internal/m80;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/ty1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ty1;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/uy1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/uy1;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/x8;->a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    return-object v0
.end method
