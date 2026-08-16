.class public final Lcom/android/tools/r8/internal/Fw0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/fB;

.field public final c:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Fw0;->c:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Fw0;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Fw0;->b:Lcom/android/tools/r8/internal/fB;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/internal/U6;)Lcom/android/tools/r8/internal/xw0;
    .locals 7

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/Dw0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Dw0;-><init>()V

    .line 10
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 12
    sget-boolean v2, Lcom/android/tools/r8/internal/Fw0;->d:Z

    if-nez v2, :cond_2

    .line 13
    iget-object v2, v0, Lcom/android/tools/r8/internal/Dw0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/Fw0;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ew0;

    if-eqz v2, :cond_4

    .line 16
    sget-object v3, Lcom/android/tools/r8/internal/Ew0;->b:Lcom/android/tools/r8/internal/Ew0;

    if-ne v2, v3, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/Fw0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Dw0;)V

    return-object v1

    .line 18
    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 19
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/Fw0;->b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Dw0;)V

    .line 20
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/Fw0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Dw0;)V

    return-object v1

    .line 21
    :cond_5
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 23
    iget-object v5, p0, Lcom/android/tools/r8/internal/Fw0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v6, p0, Lcom/android/tools/r8/internal/Fw0;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v4, v5, v6}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/E;

    move-result-object v5

    .line 24
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    instance-of v6, v5, Lcom/android/tools/r8/ir/optimize/C;

    if-eqz v6, :cond_7

    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/Fw0;->b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Dw0;)V

    .line 27
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/Fw0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Dw0;)V

    return-object v1

    .line 28
    :cond_7
    instance-of v6, v5, Lcom/android/tools/r8/ir/optimize/D;

    if-eqz v6, :cond_8

    .line 29
    invoke-virtual {v5}, Lcom/android/tools/r8/ir/optimize/E;->a()Ljava/lang/Iterable;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/XE0;

    invoke-direct {v6, v2}, Lcom/android/tools/r8/internal/XE0;-><init>(Ljava/util/Set;)V

    invoke-interface {v5, v6}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 30
    :cond_8
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 31
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 32
    :cond_9
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 33
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 35
    iget-object v5, p0, Lcom/android/tools/r8/internal/Fw0;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/android/tools/r8/internal/Ew0;->c:Lcom/android/tools/r8/internal/Ew0;

    if-ne v5, v6, :cond_a

    .line 36
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/Fw0;->b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Dw0;)V

    .line 37
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/Fw0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Dw0;)V

    return-object v1

    .line 38
    :cond_a
    sget-boolean v5, Lcom/android/tools/r8/internal/Fw0;->d:Z

    if-nez v5, :cond_c

    .line 39
    iget-object v5, p0, Lcom/android/tools/r8/internal/Fw0;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v6, :cond_b

    goto :goto_4

    .line 40
    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    :goto_4
    if-eq v4, v1, :cond_d

    .line 41
    iget-object v5, p0, Lcom/android/tools/r8/internal/Fw0;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v4}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_3

    .line 42
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 43
    :cond_e
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 44
    new-instance v2, Lcom/android/tools/r8/internal/Yx0;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 45
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 46
    :cond_f
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 48
    iget-object v3, p0, Lcom/android/tools/r8/internal/Fw0;->c:Ljava/util/IdentityHashMap;

    sget-object v4, Lcom/android/tools/r8/internal/Ew0;->b:Lcom/android/tools/r8/internal/Ew0;

    invoke-virtual {v3, v1, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ew0;

    .line 49
    sget-boolean v5, Lcom/android/tools/r8/internal/Fw0;->d:Z

    if-nez v5, :cond_11

    if-eqz v3, :cond_11

    if-ne v3, v4, :cond_10

    goto :goto_5

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 50
    :cond_11
    :goto_5
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Dw0;->b(Lcom/android/tools/r8/internal/xw0;)V

    .line 51
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Dw0;->a(Lcom/android/tools/r8/internal/xw0;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 52
    iget-object v4, v0, Lcom/android/tools/r8/internal/Dw0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 53
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_6

    .line 54
    :cond_13
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 55
    invoke-virtual {v0, v1, v4}, Lcom/android/tools/r8/internal/Dw0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 56
    iget-object v5, p1, Lcom/android/tools/r8/internal/Yx0;->b:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 57
    invoke-virtual {p2, v4}, Lcom/android/tools/r8/internal/U6;->b(Z)V

    goto :goto_7

    .line 58
    :cond_14
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto/16 :goto_0

    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Dw0;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 5
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Dw0;->a(Lcom/android/tools/r8/internal/xw0;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 6
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/Fw0;->b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Dw0;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;)Z
    .locals 1

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/ZE0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/ZE0;-><init>(Lcom/android/tools/r8/internal/Fw0;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 4

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->P()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 60
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 61
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 62
    new-instance p1, Lcom/android/tools/r8/internal/U6;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/U6;-><init>()V

    .line 63
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Fw0;->a(Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/internal/U6;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 64
    invoke-static {v1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v1, :cond_5

    .line 65
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/U6;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 66
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->a()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 67
    iget-object v1, p0, Lcom/android/tools/r8/internal/Fw0;->c:Ljava/util/IdentityHashMap;

    sget-object v3, Lcom/android/tools/r8/internal/Ew0;->b:Lcom/android/tools/r8/internal/Ew0;

    invoke-virtual {v1, v0, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Ew0;

    .line 68
    sget-boolean v1, Lcom/android/tools/r8/internal/Fw0;->d:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 69
    :cond_3
    sget-boolean p1, Lcom/android/tools/r8/internal/Fw0;->d:Z

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->a()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/YE0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/YE0;-><init>(Lcom/android/tools/r8/internal/Fw0;)V

    .line 70
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 71
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    return v2
.end method

.method public final b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Dw0;)V
    .locals 1

    .line 2
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Dw0;->b(Lcom/android/tools/r8/internal/xw0;)V

    .line 3
    iget-object p2, p0, Lcom/android/tools/r8/internal/Fw0;->c:Ljava/util/IdentityHashMap;

    sget-object v0, Lcom/android/tools/r8/internal/Ew0;->c:Lcom/android/tools/r8/internal/Ew0;

    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ew0;

    .line 4
    sget-boolean p2, Lcom/android/tools/r8/internal/Fw0;->d:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fw0;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/android/tools/r8/internal/Ew0;->b:Lcom/android/tools/r8/internal/Ew0;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
