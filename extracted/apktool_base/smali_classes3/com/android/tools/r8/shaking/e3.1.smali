.class public final Lcom/android/tools/r8/shaking/e3;
.super Lcom/android/tools/r8/shaking/c3;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/hC;

.field public b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/c3;-><init>()V

    invoke-static {p1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/e3;->a:Lcom/android/tools/r8/internal/hC;

    sget-boolean p1, Lcom/android/tools/r8/shaking/e3;->c:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/e3;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/e3;->c()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/shaking/i4;)Lcom/android/tools/r8/shaking/i4;
    .locals 0

    .line 9
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Lcom/android/tools/r8/shaking/i4;)Ljava/lang/Iterable;
    .locals 0

    .line 8
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/i4;->a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/i4;)Z
    .locals 0

    .line 5
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/i4;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/shaking/i4;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p0, Lcom/android/tools/r8/shaking/i4$b;

    if-nez v0, :cond_1

    .line 3
    instance-of p0, p0, Lcom/android/tools/r8/shaking/n4;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/c3;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/e3;->b(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/e3;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/shaking/e3;->a:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/shaking/ec;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/ec;-><init>(Ljava/util/function/Predicate;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/e3;->a:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i4;

    if-nez v1, :cond_0

    const/16 v1, 0x2c

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/shaking/e3;->a:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/hC;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/shaking/e3;->a:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/shaking/gc;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/gc;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/e3;
    .locals 3

    .line 4
    new-instance v0, Lcom/android/tools/r8/shaking/e3;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/e3;->a:Lcom/android/tools/r8/internal/hC;

    .line 5
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/shaking/fc;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/shaking/fc;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 6
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 7
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/e3;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/e3;->b:Ljava/util/Set;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/shaking/e3;->a:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/shaking/hc;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/hc;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/e3;->b:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/e3;->a:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lcom/android/tools/r8/shaking/i4$b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/shaking/e3;->b:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/i4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-boolean v2, Lcom/android/tools/r8/shaking/e3;->c:Z

    if-nez v2, :cond_2

    instance-of v2, v1, Lcom/android/tools/r8/shaking/n4;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/shaking/e3;->b:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/i4;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/e3;->b:Ljava/util/Set;

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/shaking/e3;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/shaking/e3;->b:Ljava/util/Set;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/shaking/e3;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/shaking/e3;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/e3;->a:Lcom/android/tools/r8/internal/hC;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/e3;->a:Lcom/android/tools/r8/internal/hC;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/e3;->c()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/e3;->a:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/e3;->a:Lcom/android/tools/r8/internal/hC;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
