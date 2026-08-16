.class public final Lcom/android/tools/r8/internal/C8;
.super Lcom/android/tools/r8/internal/E8;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/gX;

.field public final b:Lcom/android/tools/r8/internal/l6;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x8;Lcom/android/tools/r8/internal/gX;)V
    .locals 10

    invoke-direct {p0}, Lcom/android/tools/r8/internal/E8;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/l6;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/l6;-><init>(Ljava/util/AbstractMap;Ljava/util/AbstractMap;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/C8;->b:Lcom/android/tools/r8/internal/l6;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/C8;->c:Ljava/util/Set;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/C8;->d:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/C8;->a:Lcom/android/tools/r8/internal/gX;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/c4;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/fB0;

    invoke-direct {v3, p1, v0}, Lcom/android/tools/r8/internal/fB0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/nJ;)V

    invoke-static {p1, v1, v2, v3}, Lcom/android/tools/r8/internal/ZW;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Ljava/util/Collection;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/m80;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/gB0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/gB0;-><init>(Lcom/android/tools/r8/internal/m80;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/hB0;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/internal/hB0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/nJ;)V

    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/y8;->a()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/D00;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/E00;->a()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nJ;->L()Lcom/android/tools/r8/internal/nJ$h;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/tools/r8/internal/nJ$h;->l:Z

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->L0()V

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/android/tools/r8/graph/y;->m:Lcom/android/tools/r8/shaking/n3;

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v6

    iget-object v5, v5, Lcom/android/tools/r8/shaking/n3;->a:Ljava/util/Set;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    iget v5, v1, Lcom/android/tools/r8/internal/D00;->c:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/TW;->H()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v5, v0}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v0}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v5, v5, Lcom/android/tools/r8/shaking/I1;->x:Z

    if-eqz v5, :cond_1

    :goto_2
    instance-of v5, p3, Lcom/android/tools/r8/internal/P60;

    if-eqz v5, :cond_6

    iget-object v7, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    new-instance v9, Lcom/android/tools/r8/internal/iB0;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/iB0;-><init>()V

    invoke-virtual {v7, v8, v9}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiPredicate;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto/16 :goto_1

    :cond_6
    iget-object v1, v1, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    sget-boolean v3, Lcom/android/tools/r8/internal/C8;->e:Z

    if-nez v3, :cond_8

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v3

    if-ne v3, v6, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_3
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/D00;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/E00;->a()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    :cond_9
    sget-boolean v1, Lcom/android/tools/r8/internal/C8;->e:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/tools/r8/internal/C8;->b:Lcom/android/tools/r8/internal/l6;

    iget-object v1, v1, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/C8;->b:Lcom/android/tools/r8/internal/l6;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v4, v6}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_1

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/shaking/I1;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p3

    check-cast v1, Lcom/android/tools/r8/internal/P60;

    iget-object v1, v1, Lcom/android/tools/r8/internal/P60;->e:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    goto/16 :goto_1

    :cond_c
    if-le v5, v6, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/dX;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/C8;->c:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->H()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/I1;->g(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/TW;->H()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    move p0, v0

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p0

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v0

    :cond_3
    :goto_2
    return v1
.end method

.method public static a(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/S;)Z
    .locals 2

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/synthesis/S;->h:Lcom/android/tools/r8/synthesis/S$b;

    .line 9
    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/S;->i:Lcom/android/tools/r8/synthesis/S$b;

    .line 11
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v1

    return p0
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/H5;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->H()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p0

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/C8;->e:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/TW;->H()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/I1;->g(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/TW;->H()Z

    move-result p2

    if-eqz p2, :cond_3

    move p0, v1

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p0

    :goto_2
    if-nez p0, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_3
    return v1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/C8;->b:Lcom/android/tools/r8/internal/l6;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 18
    iget-object v0, v0, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/C8;->d:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/C8;->b:Lcom/android/tools/r8/internal/l6;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 14
    iget-object v0, v0, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)Z
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/C8;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/C8;->a:Lcom/android/tools/r8/internal/gX;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dX;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/C8;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/C8;->a:Lcom/android/tools/r8/internal/gX;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/P60;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/C8;->b:Lcom/android/tools/r8/internal/l6;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/internal/l6;->c:Ljava/util/AbstractMap;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/C8;->d:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/C8;->b:Lcom/android/tools/r8/internal/l6;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/l6;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/tools/r8/internal/C8;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
