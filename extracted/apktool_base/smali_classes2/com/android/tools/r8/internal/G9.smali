.class public Lcom/android/tools/r8/internal/G9;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/G9$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/android/tools/r8/internal/YB;

.field public static final synthetic f:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/jG;

.field public final d:Ljava/util/Deque;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/tools/r8/internal/S60;

    new-instance v1, Lcom/android/tools/r8/internal/YB;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/YB;-><init>(Ljava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/tools/r8/internal/YB;->b:Z

    sput-object v1, Lcom/android/tools/r8/internal/G9;->e:Lcom/android/tools/r8/internal/YB;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/jG;Ljava/util/Deque;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/G9;->f:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/tools/r8/internal/I9;->a(Lcom/android/tools/r8/internal/jG;)V

    :cond_0
    if-nez v0, :cond_2

    .line 8
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/sF0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/sF0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    .line 10
    iput-object p2, p0, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/zF;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/G9;->e:Lcom/android/tools/r8/internal/YB;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/jG;Ljava/util/Deque;)V

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/G9;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/lG;->a:Lcom/android/tools/r8/internal/kG;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Should use EMPTY_LOCALS instead"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/zF;Ljava/util/ArrayDeque;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/jG;Ljava/util/Deque;)V

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/G9;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/tools/r8/internal/lG;->a:Lcom/android/tools/r8/internal/kG;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Should use EMPTY_LOCALS instead"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/tools/r8/internal/G9;->e:Lcom/android/tools/r8/internal/YB;

    if-ne p2, p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Should use EMPTY_STACK instead"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public static V()Lcom/android/tools/r8/internal/G9$a;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/G9$a;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/G9$a;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/bv0;Lcom/android/tools/r8/internal/bv0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/S60;
    .locals 1

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    instance-of v0, p0, Lcom/android/tools/r8/internal/gv0;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    instance-of v0, p1, Lcom/android/tools/r8/internal/gv0;

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p2}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object p0

    return-object p0

    .line 43
    :cond_0
    instance-of v0, p0, Lcom/android/tools/r8/internal/ev0;

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    instance-of v0, p1, Lcom/android/tools/r8/internal/ev0;

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/O5;->H()Lcom/android/tools/r8/internal/ka;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/O5;->H()Lcom/android/tools/r8/internal/ka;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 47
    invoke-static {p2}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/graph/f6;Lcom/android/tools/r8/internal/jy;)V
    .locals 1

    .line 26
    sget-boolean v0, Lcom/android/tools/r8/internal/G9;->f:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->B()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 27
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->b()Lcom/android/tools/r8/internal/DD;

    move-result-object p1

    .line 29
    iget-object p1, p1, Lcom/android/tools/r8/internal/DD;->c:Lcom/android/tools/r8/graph/M2;

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    return-void

    .line 31
    :cond_2
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->z()Lcom/android/tools/r8/internal/ev0;

    move-result-object p1

    .line 33
    iget-object p1, p1, Lcom/android/tools/r8/internal/ev0;->d:Lcom/android/tools/r8/graph/M2;

    if-eqz p1, :cond_3

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final B()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final C()I
    .locals 1

    const/16 v0, 0xcf

    return v0
.end method

.method public final E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final K()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final W()Ljava/util/ArrayDeque;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/G9;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    instance-of v0, v0, Ljava/util/ArrayDeque;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    check-cast v0, Ljava/util/ArrayDeque;

    return-object v0
.end method

.method public final X()Lcom/android/tools/r8/internal/G9;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/G9;

    new-instance v1, Lcom/android/tools/r8/internal/zF;

    iget-object v2, p0, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/jG;->comparator()Lcom/android/tools/r8/internal/gI;

    move-result-object v3

    invoke-direct {v1}, Lcom/android/tools/r8/internal/zF;-><init>()V

    iput-object v3, v1, Lcom/android/tools/r8/internal/zF;->j:Lcom/android/tools/r8/internal/gI;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/N;->putAll(Ljava/util/Map;)V

    new-instance v2, Ljava/util/ArrayDeque;

    iget-object v3, p0, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/jG;Ljava/util/Deque;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/O;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/W9;)V

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/G9;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/graph/M2;",
            ">;)",
            "Lcom/android/tools/r8/internal/G9;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/jG;->keySet()Lcom/android/tools/r8/internal/qI;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/qI;->iterator()Lcom/android/tools/r8/internal/HH;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 49
    iget-object v3, p0, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    invoke-interface {v3, v2}, Lcom/android/tools/r8/internal/DF;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/jy;

    .line 50
    invoke-interface {v2, p1}, Lcom/android/tools/r8/internal/jy;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/jy;

    move-result-object v3

    if-eq v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_0

    :cond_2
    if-nez v2, :cond_5

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/S60;

    .line 52
    invoke-interface {v2, p1}, Lcom/android/tools/r8/internal/S60;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/S60;

    move-result-object v3

    if-eq v2, v3, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    :cond_5
    if-nez v2, :cond_6

    return-object p0

    .line 53
    :cond_6
    invoke-static {}, Lcom/android/tools/r8/internal/G9;->V()Lcom/android/tools/r8/internal/G9$a;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/jG;->b()Lcom/android/tools/r8/internal/M30;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/M30;->iterator()Lcom/android/tools/r8/internal/v30;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/EF;

    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/jy;

    .line 56
    invoke-interface {v3}, Lcom/android/tools/r8/internal/jy;->r()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 57
    sget-boolean v4, Lcom/android/tools/r8/internal/G9;->f:Z

    if-nez v4, :cond_7

    invoke-interface {v2}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v2

    .line 58
    sget-boolean v4, Lcom/android/tools/r8/internal/G9$a;->e:Z

    if-nez v4, :cond_9

    .line 59
    iget-object v4, v0, Lcom/android/tools/r8/internal/G9$a;->a:Lcom/android/tools/r8/internal/jG;

    .line 60
    invoke-interface {v4, v2}, Lcom/android/tools/r8/internal/DF;->a(I)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    .line 61
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 62
    :cond_9
    :goto_3
    iget-object v4, v0, Lcom/android/tools/r8/internal/G9$a;->a:Lcom/android/tools/r8/internal/jG;

    .line 63
    invoke-interface {v4, v2}, Lcom/android/tools/r8/internal/DF;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/jy;

    if-ne v2, v3, :cond_a

    goto :goto_2

    .line 64
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 65
    :cond_b
    invoke-interface {v2}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v2

    invoke-interface {v3, p1}, Lcom/android/tools/r8/internal/jy;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/jy;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/G9$a;->a(ILcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;

    goto :goto_2

    .line 66
    :cond_c
    iget-object v1, p0, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/S60;

    .line 67
    sget-boolean v3, Lcom/android/tools/r8/internal/G9;->f:Z

    if-nez v3, :cond_e

    invoke-interface {v2}, Lcom/android/tools/r8/internal/jy;->r()Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_5

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 68
    :cond_e
    :goto_5
    invoke-interface {v2, p1}, Lcom/android/tools/r8/internal/S60;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/S60;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/G9$a;

    goto :goto_4

    .line 69
    :cond_f
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/G9$a;->a()Lcom/android/tools/r8/internal/G9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 37
    invoke-virtual {p1, p3, p0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/G9;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;Ljava/util/ListIterator;)V
    .locals 1

    .line 18
    iget-object p2, p0, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    invoke-interface {p2}, Lcom/android/tools/r8/internal/jG;->values()Lcom/android/tools/r8/internal/w30;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/tools/r8/internal/w30;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/jy;

    .line 19
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/G9;->a(Lcom/android/tools/r8/graph/f6;Lcom/android/tools/r8/internal/jy;)V

    .line 20
    iget-object v0, p1, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 22
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/jy;

    .line 23
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/G9;->a(Lcom/android/tools/r8/graph/f6;Lcom/android/tools/r8/internal/jy;)V

    .line 24
    iget-object v0, p1, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 6

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result p6

    .line 4
    sget-boolean p1, Lcom/android/tools/r8/internal/G9;->f:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result p1

    if-ne p6, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    if-nez p6, :cond_2

    move-object p8, p1

    goto :goto_2

    .line 5
    :cond_2
    new-array p3, p6, [Ljava/lang/Object;

    .line 6
    iget-object p8, p0, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    invoke-interface {p8}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p8

    move v0, p2

    :goto_1
    invoke-interface {p8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/S60;

    add-int/lit8 v2, v0, 0x1

    .line 7
    invoke-interface {v1, p4, p5, p7}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/naming/r0;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p3, v0

    move v0, v2

    goto :goto_1

    :cond_3
    move-object p8, p3

    .line 8
    :goto_2
    iget-object p3, p0, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    move v1, p2

    goto :goto_4

    .line 9
    :cond_4
    iget-object p3, p0, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    invoke-interface {p3}, Lcom/android/tools/r8/internal/jG;->d()I

    move-result p3

    move v0, p2

    move v1, v0

    :goto_3
    if-gt v0, p3, :cond_6

    add-int/lit8 v1, v1, 0x1

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/DF;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/jy;

    if-eqz v2, :cond_5

    .line 11
    invoke-interface {v2}, Lcom/android/tools/r8/internal/jy;->n()Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-nez v1, :cond_7

    move-object p5, p1

    goto :goto_7

    .line 12
    :cond_7
    iget-object p1, p0, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jG;->d()I

    move-result p1

    .line 13
    new-array p3, v1, [Ljava/lang/Object;

    move v0, p2

    move v2, v0

    :goto_5
    if-gt v0, p1, :cond_a

    .line 14
    iget-object v3, p0, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    invoke-interface {v3, v0}, Lcom/android/tools/r8/internal/DF;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/jy;

    add-int/lit8 v4, v2, 0x1

    if-nez v3, :cond_8

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_6

    :cond_8
    invoke-interface {v3, p4, p5, p7}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/naming/r0;)Ljava/lang/Object;

    move-result-object v5

    :goto_6
    aput-object v5, p3, v2

    if-eqz v3, :cond_9

    .line 16
    invoke-interface {v3}, Lcom/android/tools/r8/internal/jy;->n()Z

    move-result v2

    if-eqz v2, :cond_9

    add-int/lit8 v0, v0, 0x1

    :cond_9
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_5

    :cond_a
    move-object p5, p3

    :goto_7
    const/4 p3, -0x1

    move-object p2, p9

    move p4, v1

    move-object p7, p8

    .line 17
    invoke-virtual/range {p2 .. p7}, Lcom/android/tools/r8/internal/EX;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 35
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/G9;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 0

    .line 36
    invoke-virtual {p3, p0}, Lcom/android/tools/r8/internal/hb;->a(Lcom/android/tools/r8/internal/G9;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/G9;

    iget-object v1, p0, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    iget-object v2, p0, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/jG;Ljava/util/Deque;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/G9;

    iget-object v2, p0, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    iget-object v3, p1, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    iget-object p1, p1, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/V30;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    xor-int/2addr p1, v0

    :goto_1
    if-eqz p1, :cond_6

    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public g()Lcom/android/tools/r8/internal/G9;
    .locals 0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/S60;

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
