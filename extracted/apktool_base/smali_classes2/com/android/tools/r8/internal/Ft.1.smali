.class public final Lcom/android/tools/r8/internal/Ft;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ft;->b:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ft;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/internal/Ft;
    .locals 2

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/Ft;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Ft;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 18
    new-instance v1, Lcom/android/tools/r8/internal/SE0;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/tools/r8/internal/SE0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ft;Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 19
    new-instance p0, Lcom/android/tools/r8/internal/TE0;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/tools/r8/internal/TE0;-><init>(Lcom/android/tools/r8/internal/Ft;Ljava/util/Map;Lcom/android/tools/r8/graph/O5;)V

    invoke-virtual {p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ft;Ljava/util/Map;Lcom/android/tools/r8/internal/aX;Lcom/android/tools/r8/internal/Vf;)V
    .locals 3

    .line 20
    iget-object v0, p3, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    .line 21
    invoke-interface {p0, v0}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/graph/H0;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 23
    sget-boolean p0, Lcom/android/tools/r8/internal/Ft;->c:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 24
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/TW;->j()Lcom/android/tools/r8/internal/F8;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    instance-of v2, v2, Lcom/android/tools/r8/internal/jg;

    if-eqz v2, :cond_5

    .line 28
    new-instance v2, Lcom/android/tools/r8/internal/Nx;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Nx;-><init>(Lcom/android/tools/r8/graph/H5;)V

    .line 29
    invoke-interface {p4, p0, v2}, Lcom/android/tools/r8/internal/Vf;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F1;->h0()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 31
    iget-object p0, p1, Lcom/android/tools/r8/internal/Ft;->a:Lcom/android/tools/r8/graph/y;

    .line 32
    iget-object p4, p3, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    .line 33
    invoke-interface {p0, p4}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 34
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    .line 35
    invoke-virtual {p1, v1, p3}, Lcom/android/tools/r8/internal/Ft;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/aX;)Lcom/android/tools/r8/internal/Gt;

    .line 36
    :cond_4
    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Ft;Ljava/util/Map;Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/aX;Ljava/util/Set;)V
    .locals 6

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ft;->a:Lcom/android/tools/r8/graph/y;

    .line 40
    iget-object v1, p3, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    .line 41
    invoke-interface {v0, v1}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/graph/H0;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p0, v0, p3}, Lcom/android/tools/r8/internal/Ft;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/aX;)Lcom/android/tools/r8/internal/Gt;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v1

    .line 44
    :goto_1
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_2
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/aX;

    .line 45
    iget-object v2, v0, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    .line 46
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/graph/O5;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 47
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ft;->a:Lcom/android/tools/r8/graph/y;

    .line 48
    iget-object v3, v0, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    .line 49
    invoke-interface {v2, v3}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v2

    sget-boolean v3, Lcom/android/tools/r8/graph/H0;->e:Z

    if-eqz v2, :cond_4

    .line 50
    invoke-interface {v2}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    if-nez v2, :cond_6

    .line 51
    sget-boolean v0, Lcom/android/tools/r8/internal/Ft;->c:Z

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 52
    :cond_6
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 53
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_8

    .line 54
    iget v3, v0, Lcom/android/tools/r8/internal/aX;->b:I

    if-nez v3, :cond_8

    .line 55
    iget-object v3, p3, Lcom/android/tools/r8/internal/Gt;->a:Lcom/android/tools/r8/graph/H5;

    .line 56
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 57
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v3

    if-nez v3, :cond_7

    .line 58
    iget v3, p3, Lcom/android/tools/r8/internal/Gt;->b:I

    if-nez v3, :cond_7

    const/4 v3, 0x0

    goto :goto_4

    .line 59
    :cond_7
    iget-object v3, p3, Lcom/android/tools/r8/internal/Gt;->a:Lcom/android/tools/r8/graph/H5;

    .line 60
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/TW;->j()Lcom/android/tools/r8/internal/F8;

    move-result-object v3

    iget v5, p3, Lcom/android/tools/r8/internal/Gt;->b:I

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/F8;->b(I)Lcom/android/tools/r8/internal/xt;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/p10;->g()Z

    move-result v3

    :goto_4
    if-eqz v3, :cond_8

    .line 62
    iput-boolean v4, p3, Lcom/android/tools/r8/internal/Gt;->e:Z

    goto :goto_2

    .line 63
    :cond_8
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 64
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/TW;->x()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 66
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/TW;->v()Ljava/util/BitSet;

    move-result-object v2

    .line 67
    iget v0, v0, Lcom/android/tools/r8/internal/aX;->b:I

    .line 68
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    :cond_9
    iput-boolean v4, p3, Lcom/android/tools/r8/internal/Gt;->e:Z

    goto/16 :goto_2

    .line 70
    :cond_a
    invoke-virtual {p0, v2, v0}, Lcom/android/tools/r8/internal/Ft;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/aX;)Lcom/android/tools/r8/internal/Gt;

    move-result-object v0

    if-eq p3, v0, :cond_2

    .line 71
    iget-object v2, p3, Lcom/android/tools/r8/internal/Gt;->d:Ljava/util/Set;

    .line 72
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 73
    iget-object v0, v0, Lcom/android/tools/r8/internal/Gt;->c:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 74
    :cond_b
    sget-boolean v2, Lcom/android/tools/r8/internal/Gt;->f:Z

    if-nez v2, :cond_2

    iget-object v0, v0, Lcom/android/tools/r8/internal/Gt;->c:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_2

    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_d
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Gt;)Z
    .locals 1

    .line 37
    iget-object p0, p0, Lcom/android/tools/r8/internal/Gt;->d:Ljava/util/Set;

    .line 38
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Ti;Lcom/android/tools/r8/internal/Gt;Ljava/util/function/Consumer;Ljava/util/Deque;Lcom/android/tools/r8/internal/Gt;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ti;->b:Ljava/util/Set;

    .line 2
    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    :cond_0
    sget-boolean p3, Lcom/android/tools/r8/internal/Ti;->c:Z

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/tools/r8/internal/Ti;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 5
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/Ti;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object p3

    if-ne p3, p4, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p3

    .line 8
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ti;->a:Ljava/util/ArrayDeque;

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_3
    new-instance p0, Lcom/android/tools/r8/internal/UE0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/UE0;-><init>()V

    .line 11
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 12
    iget-object p0, p4, Lcom/android/tools/r8/internal/Gt;->c:Ljava/util/Set;

    .line 13
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    .line 14
    sget-boolean p3, Lcom/android/tools/r8/internal/Ft;->c:Z

    if-nez p3, :cond_5

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 15
    :cond_5
    :goto_2
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    .line 16
    :cond_6
    new-instance p0, Lcom/android/tools/r8/internal/Vi;

    invoke-direct {p0, p4}, Lcom/android/tools/r8/internal/Vi;-><init>(Lcom/android/tools/r8/internal/Gt;)V

    invoke-interface {p3, p0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/aX;)Lcom/android/tools/r8/internal/Gt;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Gt;

    .line 2
    iget p1, p1, Lcom/android/tools/r8/internal/aX;->b:I

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Gt;-><init>(Lcom/android/tools/r8/graph/H5;I)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/aX;)Lcom/android/tools/r8/internal/Gt;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ft;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/android/tools/r8/internal/RE0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/RE0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Gt;

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 8

    .line 76
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ft;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 78
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Gt;

    .line 79
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    new-instance v3, Lcom/android/tools/r8/internal/Ti;

    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/internal/Ti;-><init>(Ljava/util/ArrayDeque;Ljava/util/Set;)V

    .line 81
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 82
    new-instance v5, Lcom/android/tools/r8/internal/Vi;

    invoke-direct {v5, v2}, Lcom/android/tools/r8/internal/Vi;-><init>(Lcom/android/tools/r8/internal/Gt;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Wi;

    .line 85
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    instance-of v5, v2, Lcom/android/tools/r8/internal/Vi;

    if-eqz v5, :cond_3

    .line 87
    iget-object v5, v2, Lcom/android/tools/r8/internal/Wi;->a:Lcom/android/tools/r8/internal/Gt;

    .line 88
    iget-object v6, v3, Lcom/android/tools/r8/internal/Ti;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v6, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 89
    iget-object v6, v3, Lcom/android/tools/r8/internal/Ti;->b:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 90
    sget-boolean v6, Lcom/android/tools/r8/internal/Ti;->c:Z

    if-nez v6, :cond_9

    if-eqz v5, :cond_2

    goto :goto_4

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 91
    :cond_3
    sget-boolean v5, Lcom/android/tools/r8/internal/Ti;->c:Z

    if-nez v5, :cond_5

    .line 92
    instance-of v6, v2, Lcom/android/tools/r8/internal/Ui;

    if-eqz v6, :cond_4

    goto :goto_2

    .line 93
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 94
    :cond_5
    :goto_2
    iget-object v6, v2, Lcom/android/tools/r8/internal/Wi;->a:Lcom/android/tools/r8/internal/Gt;

    .line 95
    iget-object v7, v3, Lcom/android/tools/r8/internal/Ti;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_7

    if-ne v7, v6, :cond_6

    goto :goto_3

    .line 96
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 97
    :cond_7
    :goto_3
    iget-object v6, v3, Lcom/android/tools/r8/internal/Ti;->b:Ljava/util/Set;

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v5, :cond_9

    if-eqz v6, :cond_8

    goto :goto_4

    .line 98
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 99
    :cond_9
    :goto_4
    instance-of v5, v2, Lcom/android/tools/r8/internal/Ui;

    if-eqz v5, :cond_a

    goto :goto_1

    .line 100
    :cond_a
    iget-object v5, v2, Lcom/android/tools/r8/internal/Wi;->a:Lcom/android/tools/r8/internal/Gt;

    .line 101
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Wi;->a()Lcom/android/tools/r8/internal/Vi;

    move-result-object v2

    .line 103
    new-instance v6, Lcom/android/tools/r8/internal/Ui;

    .line 104
    iget-object v2, v2, Lcom/android/tools/r8/internal/Wi;->a:Lcom/android/tools/r8/internal/Gt;

    .line 105
    invoke-direct {v6, v2}, Lcom/android/tools/r8/internal/Ui;-><init>(Lcom/android/tools/r8/internal/Gt;)V

    .line 106
    invoke-virtual {v4, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v2, v5, Lcom/android/tools/r8/internal/Gt;->d:Ljava/util/Set;

    .line 108
    new-instance v6, Lcom/android/tools/r8/internal/VE0;

    invoke-direct {v6, v3, v5, p1, v4}, Lcom/android/tools/r8/internal/VE0;-><init>(Lcom/android/tools/r8/internal/Ti;Lcom/android/tools/r8/internal/Gt;Ljava/util/function/Consumer;Ljava/util/Deque;)V

    .line 109
    invoke-interface {v2, v6}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    goto/16 :goto_1

    :cond_b
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/Gt;)V
    .locals 4

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/Ft;->c:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v1, p1, Lcom/android/tools/r8/internal/Gt;->d:Ljava/util/Set;

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 7
    iget-object v1, p1, Lcom/android/tools/r8/internal/Gt;->c:Ljava/util/Set;

    .line 8
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_3
    :goto_1
    new-instance v1, Lcom/android/tools/r8/internal/aX;

    .line 10
    iget-object v2, p1, Lcom/android/tools/r8/internal/Gt;->a:Lcom/android/tools/r8/graph/H5;

    .line 11
    iget v3, p1, Lcom/android/tools/r8/internal/Gt;->b:I

    .line 12
    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/aX;-><init>(Lcom/android/tools/r8/graph/H0;I)V

    .line 13
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ft;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Gt;

    if-nez v0, :cond_5

    if-ne v1, p1, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method
