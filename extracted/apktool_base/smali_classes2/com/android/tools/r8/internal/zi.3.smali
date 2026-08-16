.class public Lcom/android/tools/r8/internal/zi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/zi$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N::",
        "Lcom/android/tools/r8/internal/Ei;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Ljava/util/ArrayDeque;

.field public final b:Ljava/util/IdentityHashMap;

.field public final c:Ljava/util/ArrayDeque;

.field public final d:Ljava/util/ArrayDeque;

.field public final e:Ljava/util/Set;

.field public final f:Ljava/util/IdentityHashMap;

.field public final g:Ljava/util/IdentityHashMap;

.field public h:Ljava/util/IdentityHashMap;

.field public i:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/zi;->a:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/zi;->b:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/zi;->c:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/zi;->d:Ljava/util/ArrayDeque;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/zi;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/zi;->f:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/zi;->g:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/zi;->h:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/zi;->i:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/m80;
    .locals 1

    .line 80
    sget-object p0, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    .line 81
    new-instance p0, Lcom/android/tools/r8/internal/l80;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/l80;-><init>(I)V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Ei;)Ljava/util/Set;
    .locals 0

    .line 58
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ci;Ljava/util/LinkedList;)Z
    .locals 0

    .line 74
    invoke-virtual {p2, p0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/tools/r8/internal/Ci;->b:Lcom/android/tools/r8/internal/Ei;

    invoke-virtual {p2, p0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ei;)Z
    .locals 1

    .line 75
    sget-boolean v0, Lcom/android/tools/r8/internal/zi;->j:Z

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/Ei;->a(Lcom/android/tools/r8/internal/Ei;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 76
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Ei;->b()Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 78
    iget-object p0, p0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 79
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->g()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Ei;)Ljava/util/Set;
    .locals 0

    .line 53
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Ai;Lcom/android/tools/r8/internal/Ei;)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/tools/r8/internal/Ai;->a:Lcom/android/tools/r8/internal/Ei;

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/Ei;->d(Lcom/android/tools/r8/internal/Ei;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/GK;)Lcom/android/tools/r8/internal/Ei;
    .locals 7

    .line 22
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Ei;

    .line 24
    iget-object v2, p0, Lcom/android/tools/r8/internal/zi;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ci;

    if-eqz v2, :cond_17

    .line 25
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Ei;->f(Lcom/android/tools/r8/internal/Ei;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/zi;->d(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ei;)V

    goto :goto_0

    .line 27
    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/zi;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/tools/r8/internal/zi;->d:Ljava/util/ArrayDeque;

    .line 28
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ei;

    new-instance v4, Lcom/android/tools/r8/internal/gF1;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/internal/gF1;-><init>(Lcom/android/tools/r8/internal/zi;)V

    .line 29
    invoke-virtual {p0, v3, v0, v2, v4}, Lcom/android/tools/r8/internal/zi;->a(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ci;Ljava/util/function/BiConsumer;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 30
    :cond_2
    invoke-interface {v0}, Lcom/android/tools/r8/internal/Ei;->b()Lcom/android/tools/r8/graph/j1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 31
    sget-boolean v1, Lcom/android/tools/r8/internal/zi;->j:Z

    if-nez v1, :cond_4

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/zi;->a(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ei;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 32
    :cond_4
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/zi;->c(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ei;)V

    goto :goto_0

    .line 33
    :cond_5
    iget-object v3, p0, Lcom/android/tools/r8/internal/zi;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/tools/r8/internal/zi;->c:Ljava/util/ArrayDeque;

    .line 34
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ei;

    new-instance v4, Lcom/android/tools/r8/internal/hF1;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/internal/hF1;-><init>(Lcom/android/tools/r8/internal/zi;)V

    .line 35
    invoke-virtual {p0, v3, v0, v2, v4}, Lcom/android/tools/r8/internal/zi;->a(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ci;Ljava/util/function/BiConsumer;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    .line 36
    :cond_6
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/zi;->a(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ei;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/zi;->c(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ei;)V

    goto/16 :goto_0

    .line 38
    :cond_7
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 39
    :cond_8
    sget-boolean v3, Lcom/android/tools/r8/internal/zi;->j:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/tools/r8/internal/zi;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 40
    :cond_a
    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/zi;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ei;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_8

    .line 42
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Ei;

    .line 43
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Ei;

    .line 44
    invoke-interface {v4, v0}, Lcom/android/tools/r8/internal/Ei;->c(Lcom/android/tools/r8/internal/Ei;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 45
    sget-boolean v5, Lcom/android/tools/r8/internal/zi;->j:Z

    if-nez v5, :cond_c

    invoke-interface {v4, v0}, Lcom/android/tools/r8/internal/Ei;->b(Lcom/android/tools/r8/internal/Ei;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_4

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    :goto_4
    if-nez v5, :cond_15

    .line 46
    invoke-interface {v0, v4}, Lcom/android/tools/r8/internal/Ei;->a(Lcom/android/tools/r8/internal/Ei;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_8

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 47
    :cond_e
    invoke-interface {v4, v0}, Lcom/android/tools/r8/internal/Ei;->b(Lcom/android/tools/r8/internal/Ei;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 48
    sget-boolean v3, Lcom/android/tools/r8/internal/zi;->j:Z

    if-nez v3, :cond_11

    invoke-interface {v0, v4}, Lcom/android/tools/r8/internal/Ei;->a(Lcom/android/tools/r8/internal/Ei;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_5

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 49
    :cond_10
    invoke-static {v4, v0}, Lcom/android/tools/r8/internal/zi;->a(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ei;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 50
    new-instance v1, Lcom/android/tools/r8/internal/yi;

    invoke-direct {v1, v4, v0}, Lcom/android/tools/r8/internal/yi;-><init>(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ei;)V

    :cond_11
    :goto_5
    if-eqz v1, :cond_14

    .line 51
    sget-boolean v0, Lcom/android/tools/r8/internal/zi;->j:Z

    if-nez v0, :cond_13

    iget-object v0, v1, Lcom/android/tools/r8/internal/yi;->a:Lcom/android/tools/r8/internal/Ei;

    iget-object v3, v1, Lcom/android/tools/r8/internal/yi;->b:Lcom/android/tools/r8/internal/Ei;

    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/zi;->a(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ei;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_6

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 52
    :cond_13
    :goto_6
    iget-object v0, v1, Lcom/android/tools/r8/internal/yi;->a:Lcom/android/tools/r8/internal/Ei;

    iget-object v3, v1, Lcom/android/tools/r8/internal/yi;->b:Lcom/android/tools/r8/internal/Ei;

    invoke-virtual {p0, v0, v3}, Lcom/android/tools/r8/internal/zi;->c(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ei;)V

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/internal/zi;->i:Ljava/util/LinkedHashSet;

    iget-object v1, v1, Lcom/android/tools/r8/internal/yi;->b:Lcom/android/tools/r8/internal/Ei;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_14
    invoke-virtual {v2}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 55
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/tools/r8/internal/zi;->a:Ljava/util/ArrayDeque;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ei;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_7

    :cond_15
    :goto_8
    move-object v0, v4

    goto/16 :goto_3

    .line 57
    :cond_16
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string p2, "Unable to satisfy force inlining constraints due to cyclic force inlining"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    return-object v0

    :cond_18
    return-object v1
.end method

.method public a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/zi$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TN;>;)",
            "Lcom/android/tools/r8/internal/zi$a;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zi;->b(Ljava/util/Collection;)V

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/internal/zi;->i:Ljava/util/LinkedHashSet;

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/zi;->j:Z

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/zi;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/zi;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    if-nez v0, :cond_6

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/zi;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    if-nez v0, :cond_8

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/zi;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_3
    if-nez v0, :cond_a

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/zi;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_4
    if-nez v0, :cond_c

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/zi;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_c
    :goto_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/zi;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 10
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/zi;->i:Ljava/util/LinkedHashSet;

    .line 11
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    new-instance p1, Lcom/android/tools/r8/internal/zi$a;

    iget-object v1, p0, Lcom/android/tools/r8/internal/zi;->h:Ljava/util/IdentityHashMap;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/internal/zi$a;-><init>(Ljava/util/IdentityHashMap;)V

    if-nez v0, :cond_e

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/internal/zi;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_6

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_6
    if-nez v0, :cond_10

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/internal/zi;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    :goto_7
    if-nez v0, :cond_12

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/internal/zi;->i:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_8

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_12
    :goto_8
    if-nez v0, :cond_14

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/internal/zi;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_9

    :cond_13
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_14
    :goto_9
    if-nez v0, :cond_16

    .line 17
    iget-object v1, p0, Lcom/android/tools/r8/internal/zi;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_a

    :cond_15
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_16
    :goto_a
    if-nez v0, :cond_18

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/zi;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_b

    :cond_17
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_18
    :goto_b
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/zi;->h:Ljava/util/IdentityHashMap;

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Ai;Lcom/android/tools/r8/internal/Ei;)V
    .locals 1

    .line 20
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ai;->a:Lcom/android/tools/r8/internal/Ei;

    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/Ei;->e(Lcom/android/tools/r8/internal/Ei;)V

    .line 21
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ai;->a:Lcom/android/tools/r8/internal/Ei;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zi;->b(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ei;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ci;Ljava/util/function/BiConsumer;)Z
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/android/tools/r8/internal/zi;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Ci;

    .line 60
    iget v1, v0, Lcom/android/tools/r8/internal/Ci;->a:I

    iget p3, p3, Lcom/android/tools/r8/internal/Ci;->a:I

    if-le v1, p3, :cond_7

    .line 61
    sget-boolean p3, Lcom/android/tools/r8/internal/zi;->j:Z

    if-nez p3, :cond_5

    new-instance v1, Lcom/android/tools/r8/internal/iF1;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/iF1;-><init>(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ci;)V

    .line 62
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 63
    :cond_0
    sget-boolean v3, Lcom/android/tools/r8/internal/zi;->j:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/tools/r8/internal/zi;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 64
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/zi;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ei;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_0

    if-nez p3, :cond_4

    .line 66
    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 67
    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object p2

    .line 68
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 69
    iget-object p3, p0, Lcom/android/tools/r8/internal/zi;->a:Ljava/util/ArrayDeque;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ei;

    invoke-virtual {p3, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_2

    .line 70
    :cond_5
    iget-boolean p2, v0, Lcom/android/tools/r8/internal/Ci;->c:Z

    const/4 p3, 0x1

    if-nez p2, :cond_6

    .line 71
    iget-object p2, v0, Lcom/android/tools/r8/internal/Ci;->b:Lcom/android/tools/r8/internal/Ei;

    invoke-interface {p4, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    iget-object p2, p0, Lcom/android/tools/r8/internal/zi;->i:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 73
    iput-boolean p3, v0, Lcom/android/tools/r8/internal/Ci;->c:Z

    :cond_6
    return p3

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ei;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/tools/r8/internal/zi;->h:Ljava/util/IdentityHashMap;

    .line 55
    invoke-interface {p2}, Lcom/android/tools/r8/internal/Ei;->b()Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    new-instance v1, Lcom/android/tools/r8/internal/lF1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/lF1;-><init>()V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/m80;

    .line 56
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Ei;->a()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-void
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 6

    const/4 v0, 0x1

    .line 1
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ei;

    .line 3
    new-instance v3, Lcom/android/tools/r8/internal/Bi;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/Bi;-><init>(Lcom/android/tools/r8/internal/Ei;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_16

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Di;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    instance-of v2, p1, Lcom/android/tools/r8/internal/Bi;

    if-eqz v2, :cond_7

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Di;->b()Lcom/android/tools/r8/internal/Bi;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/Bi;->a:Lcom/android/tools/r8/internal/Ei;

    .line 9
    iget-object v2, p0, Lcom/android/tools/r8/internal/zi;->e:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/zi;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/zi;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ei;

    .line 11
    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/zi;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v3, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 12
    sget-boolean v3, Lcom/android/tools/r8/internal/zi;->j:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/tools/r8/internal/zi;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/tools/r8/internal/zi;->b:Ljava/util/IdentityHashMap;

    new-instance v4, Lcom/android/tools/r8/internal/Ci;

    iget-object v5, p0, Lcom/android/tools/r8/internal/zi;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-direct {v4, v5, v2}, Lcom/android/tools/r8/internal/Ci;-><init>(ILcom/android/tools/r8/internal/Ei;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 14
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Ei;->b()Lcom/android/tools/r8/graph/j1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/Ei;->a(Lcom/android/tools/r8/internal/Ei;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/internal/zi;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_4

    .line 16
    :cond_5
    invoke-interface {v2}, Lcom/android/tools/r8/internal/Ei;->d()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 17
    iget-object v2, p0, Lcom/android/tools/r8/internal/zi;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 18
    :cond_6
    :goto_4
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Ei;->c()Ljava/util/TreeSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 19
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Ei;->d()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    .line 22
    new-array v4, v4, [Ljava/util/Iterator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v3, v4, v0

    .line 23
    new-instance v2, Lcom/android/tools/r8/internal/AK;

    invoke-direct {v2, v4}, Lcom/android/tools/r8/internal/AK;-><init>([Ljava/util/Iterator;)V

    .line 24
    new-instance v3, Lcom/android/tools/r8/internal/GK;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/GK;-><init>(Ljava/util/Iterator;)V

    .line 25
    new-instance v2, Lcom/android/tools/r8/internal/Ai;

    invoke-direct {v2, p1, v3}, Lcom/android/tools/r8/internal/Ai;-><init>(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/GK;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 26
    :cond_7
    sget-boolean v2, Lcom/android/tools/r8/internal/zi;->j:Z

    if-nez v2, :cond_9

    .line 27
    instance-of v3, p1, Lcom/android/tools/r8/internal/Ai;

    if-eqz v3, :cond_8

    goto :goto_5

    .line 28
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 29
    :cond_9
    :goto_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Di;->a()Lcom/android/tools/r8/internal/Ai;

    move-result-object p1

    .line 30
    iget-object v3, p1, Lcom/android/tools/r8/internal/Ai;->b:Lcom/android/tools/r8/internal/GK;

    iget-object v4, p1, Lcom/android/tools/r8/internal/Ai;->a:Lcom/android/tools/r8/internal/Ei;

    .line 31
    invoke-virtual {p0, v4, v3}, Lcom/android/tools/r8/internal/zi;->a(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/GK;)Lcom/android/tools/r8/internal/Ei;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 32
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 33
    new-instance p1, Lcom/android/tools/r8/internal/Bi;

    invoke-direct {p1, v3}, Lcom/android/tools/r8/internal/Bi;-><init>(Lcom/android/tools/r8/internal/Ei;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    if-nez v2, :cond_c

    .line 34
    iget-object v3, p1, Lcom/android/tools/r8/internal/Ai;->b:Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_6

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 35
    :cond_c
    :goto_6
    iget-object v3, p1, Lcom/android/tools/r8/internal/Ai;->a:Lcom/android/tools/r8/internal/Ei;

    .line 36
    iget-object v4, p0, Lcom/android/tools/r8/internal/zi;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Ei;

    if-nez v2, :cond_e

    if-ne v4, v3, :cond_d

    goto :goto_7

    .line 37
    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_7
    if-nez v2, :cond_10

    .line 38
    iget-object v5, p0, Lcom/android/tools/r8/internal/zi;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_8

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 39
    :cond_10
    :goto_8
    iget-object v5, p0, Lcom/android/tools/r8/internal/zi;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v3}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v3, p0, Lcom/android/tools/r8/internal/zi;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_13

    if-nez v2, :cond_12

    .line 41
    iget-object v2, p0, Lcom/android/tools/r8/internal/zi;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v4, :cond_11

    goto :goto_9

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 42
    :cond_12
    :goto_9
    iget-object v2, p0, Lcom/android/tools/r8/internal/zi;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_a

    .line 43
    :cond_13
    iget-object v2, p0, Lcom/android/tools/r8/internal/zi;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_14

    .line 44
    iget-object v2, p0, Lcom/android/tools/r8/internal/zi;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 45
    :cond_14
    :goto_a
    iget-object v2, p0, Lcom/android/tools/r8/internal/zi;->e:Ljava/util/Set;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Ai;->a:Lcom/android/tools/r8/internal/Ei;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v2, p0, Lcom/android/tools/r8/internal/zi;->f:Ljava/util/IdentityHashMap;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Ai;->a:Lcom/android/tools/r8/internal/Ei;

    .line 47
    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_15

    .line 48
    new-instance v3, Lcom/android/tools/r8/internal/jF1;

    invoke-direct {v3, p0, p1}, Lcom/android/tools/r8/internal/jF1;-><init>(Lcom/android/tools/r8/internal/zi;Lcom/android/tools/r8/internal/Ai;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 49
    :cond_15
    iget-object v2, p0, Lcom/android/tools/r8/internal/zi;->g:Ljava/util/IdentityHashMap;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Ai;->a:Lcom/android/tools/r8/internal/Ei;

    .line 50
    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_0

    .line 51
    new-instance v3, Lcom/android/tools/r8/internal/kF1;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/internal/kF1;-><init>(Lcom/android/tools/r8/internal/Ai;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :cond_16
    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ei;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/zi;->f:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/eF1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/eF1;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ei;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/zi;->g:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/fF1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/fF1;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
