.class public final Lcom/android/tools/r8/internal/dm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Na;


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public final d:Lcom/android/tools/r8/internal/Cm;

.field public final e:Ljava/util/Set;

.field public final f:Ljava/util/function/Predicate;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/function/Predicate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/dm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/dm;->c:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/dm;->f:Ljava/util/function/Predicate;

    new-instance p2, Lcom/android/tools/r8/internal/Cm;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Cm;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/dm;->d:Lcom/android/tools/r8/internal/Cm;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ$p;->A0:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/dm;->e:Ljava/util/Set;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/internal/dm;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Ta;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 7

    .line 1
    const-string p3, "Desugared library API callback synthesizer"

    invoke-virtual {p4, p3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p3

    .line 2
    :try_start_0
    iget-object p4, p0, Lcom/android/tools/r8/internal/dm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object p4

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Cf;

    iget-object v1, p4, Lcom/android/tools/r8/internal/Ef;->a:Lcom/android/tools/r8/internal/Hf;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Hf;->b:Ljava/lang/Thread;

    invoke-direct {v0, p4, v1}, Lcom/android/tools/r8/internal/Cf;-><init>(Lcom/android/tools/r8/internal/Ef;Ljava/lang/Thread;)V

    .line 4
    sget-boolean v1, Lcom/android/tools/r8/internal/Ef;->c:Z

    if-nez v1, :cond_0

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/internal/Bf;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Ta;->b()Ljava/util/Set;

    move-result-object p4

    .line 6
    sget-boolean v1, Lcom/android/tools/r8/internal/dm;->g:Z

    if-nez v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/dm;->b:Lcom/android/tools/r8/graph/y;

    .line 8
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/synthesis/J;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 11
    sget-boolean v3, Lcom/android/tools/r8/internal/dm;->g:Z

    if-nez v3, :cond_1

    iget-object v2, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/dm;->d:Lcom/android/tools/r8/internal/Cm;

    iget-object v4, p0, Lcom/android/tools/r8/internal/dm;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {v2, v3, v4}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Cm;Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 13
    iget-object v2, p0, Lcom/android/tools/r8/internal/dm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H2;->M1()Lcom/android/tools/r8/internal/sK;

    move-result-object v3

    .line 16
    iget-object v4, v3, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iget-object v3, v3, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v3

    .line 17
    :cond_5
    :goto_3
    iget-object v4, v3, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 18
    iget-object v4, v3, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 19
    check-cast v4, Lcom/android/tools/r8/graph/H5;

    .line 20
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/dm;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 21
    iget-object v5, p0, Lcom/android/tools/r8/internal/dm;->f:Ljava/util/function/Predicate;

    invoke-interface {v5, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 22
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 23
    :cond_6
    iget-object v5, p0, Lcom/android/tools/r8/internal/dm;->e:Ljava/util/Set;

    if-eqz v5, :cond_7

    .line 24
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_7
    iget-object v5, p0, Lcom/android/tools/r8/internal/dm;->d:Lcom/android/tools/r8/internal/Cm;

    .line 26
    iget-object v5, v5, Lcom/android/tools/r8/internal/Cm;->e:Lcom/android/tools/r8/internal/hm;

    .line 27
    invoke-virtual {v5, v4, p2, v0}, Lcom/android/tools/r8/internal/hm;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Ta;Lcom/android/tools/r8/internal/Cf;)Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    .line 28
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 29
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 30
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/E0;->a(Ljava/util/Collection;)V

    goto :goto_2

    .line 31
    :cond_9
    sget-boolean p1, Lcom/android/tools/r8/internal/dm;->g:Z

    if-nez p1, :cond_c

    .line 32
    iget-object p1, p0, Lcom/android/tools/r8/internal/dm;->b:Lcom/android/tools/r8/graph/y;

    .line 33
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/J;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H2;

    .line 36
    sget-boolean p4, Lcom/android/tools/r8/internal/dm;->g:Z

    if-nez p4, :cond_a

    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object p4, p0, Lcom/android/tools/r8/internal/dm;->d:Lcom/android/tools/r8/internal/Cm;

    iget-object v0, p0, Lcom/android/tools/r8/internal/dm;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {p2, p4, v0}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Cm;Lcom/android/tools/r8/graph/y;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_4

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 37
    :cond_c
    iget-object p1, p0, Lcom/android/tools/r8/internal/dm;->e:Ljava/util/Set;

    const-string p2, "callback "

    iget-object p4, p0, Lcom/android/tools/r8/internal/dm;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {p1, p2, p4}, Lcom/android/tools/r8/internal/em;->a(Ljava/util/Set;Ljava/lang/String;Lcom/android/tools/r8/graph/y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    .line 39
    :goto_5
    :try_start_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p2

    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 7

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 42
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 43
    iget-object v1, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 44
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v1

    if-nez v1, :cond_e

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v1

    if-nez v1, :cond_e

    .line 46
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/dm;->b:Lcom/android/tools/r8/graph/y;

    .line 48
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v1

    .line 51
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->X0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/I2;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/tools/r8/internal/dm;->b:Lcom/android/tools/r8/graph/y;

    .line 52
    invoke-static {v0}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v0

    .line 53
    iget-object v0, v0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 54
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->g()Ljava/util/Map;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/dm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-nez v0, :cond_3

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->g1()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/dm;->b:Lcom/android/tools/r8/graph/y;

    .line 59
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/dm;->b:Lcom/android/tools/r8/graph/y;

    .line 60
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 61
    iget-object v0, v0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 62
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v0, :cond_3

    :cond_2
    return v2

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/dm;->b:Lcom/android/tools/r8/graph/y;

    .line 64
    invoke-static {v0}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v0

    .line 65
    iget-object v0, v0, Lcom/android/tools/r8/internal/xU;->b:Lcom/android/tools/r8/internal/EU;

    .line 66
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/EU;->e:Z

    if-nez v0, :cond_4

    .line 67
    iget-object v0, p0, Lcom/android/tools/r8/internal/dm;->b:Lcom/android/tools/r8/graph/y;

    .line 68
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 69
    iget-object v0, v0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 70
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v0, :cond_4

    return v2

    .line 71
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 73
    iget-object v3, v0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Yx0;->a([Ljava/lang/Object;)V

    .line 74
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/dm;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v0, v3, :cond_5

    .line 75
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    :cond_5
    move v0, v2

    .line 76
    :cond_6
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 77
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 78
    iget-object v4, p0, Lcom/android/tools/r8/internal/dm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_0

    .line 79
    :cond_7
    iget-object v4, v3, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/Yx0;->a([Ljava/lang/Object;)V

    .line 80
    iget-object v4, v3, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p0, Lcom/android/tools/r8/internal/dm;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v4, v5, :cond_8

    .line 81
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 82
    :cond_8
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/tools/r8/internal/dm;->b:Lcom/android/tools/r8/graph/y;

    .line 83
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v4

    .line 84
    iget-object v4, v4, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 85
    iget-boolean v4, v4, Lcom/android/tools/r8/internal/xU;->a:Z

    if-nez v4, :cond_9

    goto :goto_0

    .line 86
    :cond_9
    iget-object v4, p0, Lcom/android/tools/r8/internal/dm;->b:Lcom/android/tools/r8/graph/y;

    .line 87
    invoke-static {v4}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v4

    .line 88
    iget-object v5, v4, Lcom/android/tools/r8/internal/xU;->b:Lcom/android/tools/r8/internal/EU;

    .line 89
    iget-boolean v5, v5, Lcom/android/tools/r8/internal/EU;->e:Z

    if-nez v5, :cond_a

    .line 90
    iget-object v5, v4, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CU;->g()Ljava/util/Map;

    move-result-object v5

    .line 91
    iget-object v6, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 92
    iget-object v4, v4, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/CU;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 93
    :cond_a
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 94
    iget-object v0, p0, Lcom/android/tools/r8/internal/dm;->b:Lcom/android/tools/r8/graph/y;

    .line 95
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v0

    iget-object v3, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 98
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v2

    .line 99
    :cond_b
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->h1()Z

    move-result v0

    if-eqz v0, :cond_c

    return v2

    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_d
    return v0

    :cond_e
    :goto_1
    return v2
.end method
