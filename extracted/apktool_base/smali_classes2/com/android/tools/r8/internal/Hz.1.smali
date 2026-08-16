.class public abstract Lcom/android/tools/r8/internal/Hz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/iw;)Lcom/android/tools/r8/internal/iw;
    .locals 0

    .line 2
    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/D0;)Lcom/android/tools/r8/internal/m80;
    .locals 0

    .line 59
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/BiFunction;Ljava/util/Map;Lcom/android/tools/r8/graph/J2;Ljava/util/List;)V
    .locals 0

    .line 93
    invoke-interface {p0, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 94
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static g()Lcom/android/tools/r8/internal/Hz;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/BB;->b:Lcom/android/tools/r8/internal/BB;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 2

    .line 15
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/android/tools/r8/internal/LH0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/LH0;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 1

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/UH0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/UH0;-><init>()V

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/J2;
    .locals 3

    .line 21
    new-instance v0, Lcom/android/tools/r8/internal/ZH0;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/ZH0;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    new-instance v1, Lcom/android/tools/r8/internal/aI0;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/internal/aI0;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    new-instance v2, Lcom/android/tools/r8/internal/bI0;

    invoke-direct {v2, p0, p2}, Lcom/android/tools/r8/internal/bI0;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/J2;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/J2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/J2;
    .locals 2

    move-object v0, p0

    .line 17
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hz;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eq v0, p2, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hz;->d()Lcom/android/tools/r8/internal/R00;

    move-result-object v0

    .line 19
    invoke-interface {p3, v0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/J2;

    .line 20
    iget-object v0, v0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;Ljava/util/function/BiFunction;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/J2;
    .locals 3

    .line 27
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    move-object v1, p0

    .line 28
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Hz;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eq v1, p2, :cond_0

    .line 29
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Hz;->d()Lcom/android/tools/r8/internal/R00;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 31
    iget-object v1, v1, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/R00;

    .line 34
    invoke-interface {p3, p2, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/J2;

    .line 35
    invoke-interface {p4, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    :cond_1
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/IH0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IH0;-><init>()V

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;
    .locals 1

    .line 22
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;
    .locals 1

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/cI0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cI0;-><init>()V

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)Lcom/android/tools/r8/internal/NW;
    .locals 6

    const/4 v4, 0x0

    .line 8
    sget-object v5, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Gz;)Lcom/android/tools/r8/internal/NW;
.end method

.method public a()Lcom/android/tools/r8/internal/Nu;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Fz;)Lcom/android/tools/r8/internal/iw;
.end method

.method public final a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;
    .locals 2

    .line 42
    new-instance v0, Lcom/android/tools/r8/internal/kC;

    const/4 v1, 0x4

    .line 43
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 44
    new-instance v1, Lcom/android/tools/r8/internal/MH0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/MH0;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/kC;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final a(Ljava/util/Map;Lcom/android/tools/r8/graph/v0;Lcom/android/tools/r8/internal/ns0;)Ljava/util/IdentityHashMap;
    .locals 3

    .line 46
    const-string v0, "Rewrite call sites"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 47
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 48
    new-instance v1, Lcom/android/tools/r8/internal/RR;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, v2}, Lcom/android/tools/r8/internal/RR;-><init>(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    .line 49
    new-instance v2, Lcom/android/tools/r8/internal/VH0;

    invoke-direct {v2, p0, p2, v1, v0}, Lcom/android/tools/r8/internal/VH0;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/RR;Ljava/util/Map;)V

    invoke-interface {p1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 50
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object v0
.end method

.method public final a(Ljava/util/Map;Ljava/util/function/BiFunction;)Ljava/util/IdentityHashMap;
    .locals 3

    .line 89
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 90
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 91
    new-instance v2, Lcom/android/tools/r8/internal/NH0;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/tools/r8/internal/NH0;-><init>(Lcom/android/tools/r8/internal/Hz;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {p1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 92
    new-instance p1, Lcom/android/tools/r8/internal/OH0;

    invoke-direct {p1, p2, v0}, Lcom/android/tools/r8/internal/OH0;-><init>(Ljava/util/function/BiFunction;Ljava/util/Map;)V

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final a(Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/ds0;->b:Lcom/android/tools/r8/internal/ds0;

    if-ne p1, v0, :cond_0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Al0;->b(I)Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/J2;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/J2;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final a(Ljava/util/Set;Lcom/android/tools/r8/internal/ns0;)Ljava/util/Set;
    .locals 6

    .line 60
    const-string v0, "Rewrite fields"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 61
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    sget-boolean v1, Lcom/android/tools/r8/internal/Hz;->a:Z

    if-nez v1, :cond_8

    .line 64
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    .line 65
    sget-boolean v3, Lcom/android/tools/r8/internal/Hz;->a:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 66
    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    .line 67
    invoke-virtual {p0, v0, v3}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    if-eqz v2, :cond_3

    .line 68
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-ne v4, v3, :cond_4

    goto :goto_1

    .line 69
    :cond_4
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    .line 70
    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5, v2}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v5}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    .line 71
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/KH0;

    invoke-direct {v5, v2}, Lcom/android/tools/r8/internal/KH0;-><init>(Ljava/util/Set;)V

    invoke-static {p1, v5, v3}, Lcom/android/tools/r8/internal/Ye;->a(Ljava/util/Set;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 72
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    goto :goto_2

    .line 73
    :cond_6
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    .line 74
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v0, p1, :cond_7

    .line 75
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result p1

    .line 76
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0, p1}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    .line 77
    invoke-interface {p1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_7
    move-object p1, v2

    .line 78
    :cond_8
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/RR;Ljava/util/Map;Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/internal/m80;)V
    .locals 2

    .line 51
    invoke-virtual {p5, p1, p0}, Lcom/android/tools/r8/internal/m80;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/m80;

    move-result-object p1

    .line 52
    iget-object p1, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 53
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 54
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/graph/H5;

    .line 55
    invoke-virtual {p2, p4, p5}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D0;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/android/tools/r8/internal/SH0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/SH0;-><init>()V

    .line 57
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/m80;

    .line 58
    invoke-virtual {v0, p5}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/w4;)V
    .locals 7

    .line 95
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 97
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v2

    .line 98
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/x0;->d()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 99
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/g1;

    .line 100
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/l1;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    .line 102
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 103
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 104
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    iget-object v4, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 106
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 107
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/g1;

    .line 108
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    .line 109
    :cond_6
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/l1;

    .line 110
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v6

    .line 111
    invoke-virtual {p0, v6, v5}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v5

    .line 112
    sget-boolean v6, Lcom/android/tools/r8/internal/Hz;->a:Z

    if-nez v6, :cond_5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    .line 113
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to map field `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "` back to original program"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 114
    :cond_8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 115
    sget-boolean v4, Lcom/android/tools/r8/internal/Hz;->a:Z

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/graph/l1;Ljava/lang/Object;)V
    .locals 1

    .line 24
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 25
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    .line 26
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/J2;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, p3, v0}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/J2;

    move-result-object p3

    .line 80
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 82
    :cond_0
    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    sget-boolean v1, Lcom/android/tools/r8/internal/AT;->a:Z

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {p1, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;)V
    .locals 1

    .line 37
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 38
    invoke-virtual {p0, v0, p3}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 39
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {p2, p4, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 41
    :cond_0
    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/J2;)Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/android/tools/r8/internal/Hz;->a:Z

    if-nez v0, :cond_1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Hz;)Z
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 1

    .line 6
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 2

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/PH0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/PH0;-><init>()V

    .line 9
    sget-object v1, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;Ljava/util/function/BiFunction;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/J2;
    .locals 3

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/WH0;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/WH0;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    new-instance v1, Lcom/android/tools/r8/internal/XH0;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/internal/XH0;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    new-instance v2, Lcom/android/tools/r8/internal/YH0;

    invoke-direct {v2, p0, p2}, Lcom/android/tools/r8/internal/YH0;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    .line 12
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/J2;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/J2;

    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/J2;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/HH0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/HH0;-><init>()V

    .line 4
    sget-object v1, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;Ljava/util/function/BiFunction;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/android/tools/r8/graph/l1;

    return-object p1
.end method

.method public b()Lcom/android/tools/r8/internal/xA;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b(Lcom/android/tools/r8/graph/M2;)Ljava/lang/Iterable;
.end method

.method public final b(Ljava/util/Map;Ljava/util/function/BiFunction;)Ljava/util/IdentityHashMap;
    .locals 2

    .line 13
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 14
    new-instance v1, Lcom/android/tools/r8/internal/JH0;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/tools/r8/internal/JH0;-><init>(Lcom/android/tools/r8/internal/Hz;Ljava/util/Map;Ljava/util/function/BiFunction;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public abstract b(Lcom/android/tools/r8/internal/Hz;)Z
.end method

.method public final synthetic c(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/J2;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/J2;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/J2;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/android/tools/r8/internal/TV;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic d(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/J2;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic d(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/J2;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/RH0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/RH0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/TH0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/TH0;-><init>()V

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;Ljava/util/function/BiFunction;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public d()Lcom/android/tools/r8/internal/R00;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
.end method

.method public final e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/iw;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 6
    check-cast p1, Lcom/android/tools/r8/graph/l1;

    return-object p1
.end method

.method public final e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/NW;
    .locals 6

    const/4 v3, 0x0

    .line 2
    sget-object v5, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p1

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1
.end method

.method public e()Lcom/android/tools/r8/internal/cx0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;
.end method

.method public final f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/iw;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/QH0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/QH0;-><init>()V

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Fz;)Lcom/android/tools/r8/internal/iw;

    move-result-object p1

    return-object p1
.end method

.method public f()Lcom/android/tools/r8/ir/optimize/A;
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/Hz;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Hz;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Z
    .locals 0

    .line 1
    sget-boolean p2, Lcom/android/tools/r8/internal/Hz;->a:Z

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/xA;

    return v0
.end method

.method public abstract j()Z
.end method

.method public k()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/TV;

    return v0
.end method

.method public abstract l()Z
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
