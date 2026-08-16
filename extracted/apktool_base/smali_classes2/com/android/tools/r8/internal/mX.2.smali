.class public final Lcom/android/tools/r8/internal/mX;
.super Lcom/android/tools/r8/internal/Wj;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final f:Lcom/android/tools/r8/graph/y;

.field public final g:Lcom/android/tools/r8/internal/qX;

.field public final h:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/qX;Lcom/android/tools/r8/graph/c4;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/tools/r8/internal/Wj;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    new-instance p3, Ljava/util/IdentityHashMap;

    invoke-direct {p3}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p3, p0, Lcom/android/tools/r8/internal/mX;->h:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/mX;->f:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/mX;->g:Lcom/android/tools/r8/internal/qX;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/lX;Lcom/android/tools/r8/graph/F2;)Z
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/tools/r8/internal/lX;->a:Lcom/android/tools/r8/internal/Dq;

    .line 50
    iget-object p0, p0, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 51
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lX;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/mX;->h:Ljava/util/IdentityHashMap;

    .line 2
    sget-object v1, Lcom/android/tools/r8/internal/lX;->b:Lcom/android/tools/r8/internal/lX;

    .line 3
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/nX;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nX;->a()Lcom/android/tools/r8/internal/lX;

    move-result-object v0

    .line 5
    iget-object v1, p1, Lcom/android/tools/r8/internal/lX;->a:Lcom/android/tools/r8/internal/Dq;

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/internal/lX;->a:Lcom/android/tools/r8/internal/Dq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 8
    iget-object v1, v1, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->h1()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 13
    iget-object v1, v0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    instance-of v1, v1, Lcom/android/tools/r8/internal/Fj;

    if-nez v1, :cond_0

    .line 16
    :cond_2
    iget-object v1, p1, Lcom/android/tools/r8/internal/lX;->a:Lcom/android/tools/r8/internal/Dq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Dq;->a(Lcom/android/tools/r8/graph/A2;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/oX;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/lX;Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/mX;->h:Ljava/util/IdentityHashMap;

    .line 19
    sget-object v1, Lcom/android/tools/r8/internal/oX;->b:Lcom/android/tools/r8/internal/oX;

    .line 20
    invoke-interface {v0, p4, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/nX;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nX;->b()Lcom/android/tools/r8/internal/oX;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/internal/mX;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/oX;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/oX;)V

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_b

    .line 24
    sget-boolean v0, Lcom/android/tools/r8/internal/mX;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

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

    .line 25
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_3
    :goto_1
    iget-object p3, p3, Lcom/android/tools/r8/internal/lX;->a:Lcom/android/tools/r8/internal/Dq;

    .line 27
    new-instance v0, Lcom/android/tools/r8/internal/Dq;

    new-instance v1, Ljava/util/HashSet;

    iget-object p3, p3, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-direct {v1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    .line 28
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Dq;->a(Ljava/lang/Iterable;)V

    .line 29
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 30
    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/F2;

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/internal/mX;->f:Lcom/android/tools/r8/graph/y;

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 33
    sget-boolean v1, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v1, :cond_5

    .line 34
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->c()V

    goto :goto_3

    .line 35
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    :goto_3
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/F2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v0, p4, v1, v2}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J4;->h()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 38
    sget-boolean p3, Lcom/android/tools/r8/internal/mX;->i:Z

    if-nez p3, :cond_4

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->k()Lcom/android/tools/r8/graph/Z4$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/Z4$a;->y()Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 39
    :cond_7
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->v()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/internal/mX;->f:Lcom/android/tools/r8/graph/y;

    .line 41
    sget-object v1, Lcom/android/tools/r8/internal/Fj;->b:Lcom/android/tools/r8/internal/Fj;

    .line 42
    invoke-virtual {p1, v0, p3, v1}, Lcom/android/tools/r8/internal/oX;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/TW;)V

    goto :goto_2

    .line 43
    :cond_8
    sget-boolean v1, Lcom/android/tools/r8/internal/mX;->i:Z

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 44
    :cond_a
    :goto_4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eq v1, p4, :cond_4

    .line 46
    iget-object v1, p0, Lcom/android/tools/r8/internal/mX;->f:Lcom/android/tools/r8/graph/y;

    .line 47
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v0

    .line 48
    invoke-virtual {p1, v1, p3, v0}, Lcom/android/tools/r8/internal/oX;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/TW;)V

    goto/16 :goto_2

    :cond_b
    return-void
.end method

.method public final j(Lcom/android/tools/r8/graph/H2;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/mX;->h:Ljava/util/IdentityHashMap;

    sget-object v1, Lcom/android/tools/r8/internal/lX;->b:Lcom/android/tools/r8/internal/lX;

    sget-boolean v2, Lcom/android/tools/r8/internal/TU;->a:Z

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :cond_0
    check-cast v1, Lcom/android/tools/r8/internal/nX;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nX;->a()Lcom/android/tools/r8/internal/lX;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/oX;

    new-instance v2, Lcom/android/tools/r8/internal/Cq;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Cq;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/oX;-><init>(Lcom/android/tools/r8/internal/Cq;)V

    new-instance v2, Lcom/android/tools/r8/internal/Dk1;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/android/tools/r8/internal/Dk1;-><init>(Lcom/android/tools/r8/internal/mX;Lcom/android/tools/r8/internal/oX;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/lX;)V

    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/internal/Wj;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/mX;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/t5;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    iget-object v4, p0, Lcom/android/tools/r8/internal/mX;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v3

    sget-object v5, Lcom/android/tools/r8/internal/Fj;->b:Lcom/android/tools/r8/internal/Fj;

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/tools/r8/internal/oX;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/TW;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    iget-object v4, p0, Lcom/android/tools/r8/internal/mX;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/mX;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/shaking/I1;->h(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/android/tools/r8/internal/mX;->i:Z

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v4, v3, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v4, Lcom/android/tools/r8/internal/Fj;

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v4, v3, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/TW;->E()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/tools/r8/internal/mX;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v3

    sget-object v5, Lcom/android/tools/r8/internal/Fj;->b:Lcom/android/tools/r8/internal/Fj;

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/tools/r8/internal/oX;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/TW;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/tools/r8/internal/mX;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v3, v3, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/tools/r8/internal/oX;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/TW;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->p1()Z

    move-result v2

    if-nez v2, :cond_f

    new-instance v2, Lcom/android/tools/r8/internal/Ek1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Ek1;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/Y60;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/Y60;-><init>(Lcom/android/tools/r8/internal/V60;)V

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/E0;->i(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    iget-object v4, v1, Lcom/android/tools/r8/internal/oX;->a:Lcom/android/tools/r8/internal/Cq;

    sget-object v5, Lcom/android/tools/r8/internal/Fj;->b:Lcom/android/tools/r8/internal/Fj;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v6

    iget-object v4, v4, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/TW;

    invoke-interface {v4}, Lcom/android/tools/r8/internal/KV;->d()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Lcom/android/tools/r8/internal/KV;->c()Lcom/android/tools/r8/internal/WY;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/kX;->a(Lcom/android/tools/r8/internal/WY;)Lcom/android/tools/r8/internal/TW;

    move-result-object v4

    goto :goto_4

    :cond_8
    sget-boolean v5, Lcom/android/tools/r8/internal/oX;->c:Z

    if-nez v5, :cond_a

    instance-of v5, v4, Lcom/android/tools/r8/internal/Fj;

    if-nez v5, :cond_a

    instance-of v5, v4, Lcom/android/tools/r8/internal/kX;

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_4
    sget-boolean v5, Lcom/android/tools/r8/internal/mX;->i:Z

    if-nez v5, :cond_c

    instance-of v5, v4, Lcom/android/tools/r8/internal/Fj;

    if-nez v5, :cond_c

    instance-of v5, v4, Lcom/android/tools/r8/internal/kX;

    if-eqz v5, :cond_b

    goto :goto_5

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    :goto_5
    iget-object v5, p0, Lcom/android/tools/r8/internal/mX;->g:Lcom/android/tools/r8/internal/qX;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    sget-boolean v6, Lcom/android/tools/r8/internal/qX;->b:Z

    if-nez v6, :cond_e

    iget-object v6, v5, Lcom/android/tools/r8/internal/qX;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_6

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_6
    instance-of v6, v4, Lcom/android/tools/r8/internal/Fj;

    if-nez v6, :cond_7

    iget-object v5, v5, Lcom/android/tools/r8/internal/qX;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_f
    iget-object v2, v1, Lcom/android/tools/r8/internal/oX;->a:Lcom/android/tools/r8/internal/Cq;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/Fk1;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/Fk1;-><init>(Lcom/android/tools/r8/internal/lX;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, v1, Lcom/android/tools/r8/internal/oX;->a:Lcom/android/tools/r8/internal/Cq;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/tools/r8/internal/mX;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-void
.end method

.method public final l(Lcom/android/tools/r8/graph/H2;)V
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/lX;

    new-instance v1, Lcom/android/tools/r8/internal/Dq;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/lX;-><init>(Lcom/android/tools/r8/internal/Dq;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wj;->b:Lcom/android/tools/r8/graph/c4;

    new-instance v3, Lcom/android/tools/r8/internal/Gk1;

    invoke-direct {v3, p0, v0}, Lcom/android/tools/r8/internal/Gk1;-><init>(Lcom/android/tools/r8/internal/mX;Lcom/android/tools/r8/internal/lX;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v1, v4, v3, p1}, Lcom/android/tools/r8/graph/c4;->a(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/mX;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
