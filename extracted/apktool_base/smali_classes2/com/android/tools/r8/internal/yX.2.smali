.class public abstract Lcom/android/tools/r8/internal/yX;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/util/AbstractMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/AbstractMap;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/yX;->b:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/tA1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/tA1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/yX;->a:Ljava/util/AbstractMap;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/internal/wX;Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/wX;)Lcom/android/tools/r8/internal/wX;
    .locals 0

    if-nez p5, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->a()Lcom/android/tools/r8/internal/wX;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/yX;->b(Ljava/lang/Object;)Lcom/android/tools/r8/graph/F2;

    move-result-object p3

    sget-object p4, Lcom/android/tools/r8/internal/Bo0;->a:Lcom/android/tools/r8/internal/zo0;

    .line 6
    invoke-interface {p5, p2, p3, p1, p4}, Lcom/android/tools/r8/internal/wX;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/wX;Lcom/android/tools/r8/internal/Bo0;)Lcom/android/tools/r8/internal/wX;

    move-result-object p1

    .line 7
    :goto_0
    sget-boolean p2, Lcom/android/tools/r8/internal/yX;->b:Z

    if-nez p2, :cond_2

    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->g()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/wX;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/yX;->a:Ljava/util/AbstractMap;

    sget-object v1, Lcom/android/tools/r8/internal/s7;->a:Lcom/android/tools/r8/internal/s7;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/wX;

    return-object p1
.end method

.method public final synthetic a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/wX;)Lcom/android/tools/r8/internal/wX;
    .locals 1

    if-nez p6, :cond_1

    .line 9
    sget-object p2, Lcom/android/tools/r8/internal/s7;->a:Lcom/android/tools/r8/internal/s7;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/wX;

    .line 10
    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1

    .line 11
    :cond_1
    sget-boolean p5, Lcom/android/tools/r8/internal/yX;->b:Z

    if-nez p5, :cond_3

    invoke-interface {p6}, Lcom/android/tools/r8/internal/wX;->g()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_3
    :goto_0
    const-string v0, "Join temporary method state"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 13
    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/yX;->b(Ljava/lang/Object;)Lcom/android/tools/r8/graph/F2;

    move-result-object p4

    .line 14
    invoke-interface {p6, p3, p4, p1}, Lcom/android/tools/r8/internal/wX;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/wX;

    move-result-object p1

    if-nez p5, :cond_5

    .line 15
    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->g()Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_5
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H5;)Ljava/lang/Object;
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;)V
    .locals 1

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/H5;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    invoke-interface {p2}, Lcom/android/tools/r8/internal/wX;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object p2, p0, Lcom/android/tools/r8/internal/yX;->a:Ljava/util/AbstractMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/yX;->a:Ljava/util/AbstractMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/A2;Ljava/util/function/Function;Lcom/android/tools/r8/internal/ns0;)V
    .locals 8

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/yX;->a:Ljava/util/AbstractMap;

    new-instance v7, Lcom/android/tools/r8/internal/wA1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/wA1;-><init>(Lcom/android/tools/r8/internal/yX;Ljava/util/function/Function;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/y;Ljava/lang/Object;)V

    invoke-interface {v0, p2, v7}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/AX;)V
    .locals 1

    .line 17
    iget-object p2, p2, Lcom/android/tools/r8/internal/yX;->a:Ljava/util/AbstractMap;

    new-instance v0, Lcom/android/tools/r8/internal/uA1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/uA1;-><init>(Lcom/android/tools/r8/internal/yX;Lcom/android/tools/r8/graph/y;)V

    invoke-interface {p2, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Lcom/android/tools/r8/internal/wX;)V
    .locals 2

    .line 1
    invoke-interface {p3}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/internal/yX;->a:Ljava/util/AbstractMap;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/yX;->a:Ljava/util/AbstractMap;

    new-instance v1, Lcom/android/tools/r8/internal/vA1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/tools/r8/internal/vA1;-><init>(Lcom/android/tools/r8/internal/yX;Lcom/android/tools/r8/internal/wX;Lcom/android/tools/r8/graph/y;Ljava/lang/Object;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/function/BiConsumer;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/yX;->a:Ljava/util/AbstractMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public abstract b(Ljava/lang/Object;)Lcom/android/tools/r8/graph/F2;
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Lcom/android/tools/r8/internal/wX;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Lcom/android/tools/r8/internal/wX;)V

    return-void
.end method
