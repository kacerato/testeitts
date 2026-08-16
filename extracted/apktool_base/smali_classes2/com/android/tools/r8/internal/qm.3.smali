.class public final Lcom/android/tools/r8/internal/qm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Na;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/um;

.field public final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qm;->b:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/um;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/um;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/qm;->c:Lcom/android/tools/r8/internal/um;

    invoke-static {p1}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/CU;->h()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/qm;->d:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/cu;)V
    .locals 2

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/tm;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 7

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qm;->d:Ljava/util/Map;

    .line 26
    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/qm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v2, :cond_12

    .line 27
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v1, p4, :cond_a

    .line 28
    iget-object p1, p0, Lcom/android/tools/r8/internal/qm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_a

    .line 29
    :cond_0
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    .line 30
    iget-object p5, p0, Lcom/android/tools/r8/internal/qm;->d:Ljava/util/Map;

    invoke-interface {p5, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/internal/cu;

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/internal/qm;->c:Lcom/android/tools/r8/internal/um;

    .line 32
    invoke-virtual {v0, p5, p2}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/internal/rm;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 33
    iget-object v1, p3, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v2, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/O2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 34
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/qm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->o3:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 35
    :cond_3
    new-instance v1, Lcom/android/tools/r8/graph/H3$c;

    iget-object v2, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 36
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/qm;->b:Lcom/android/tools/r8/graph/y;

    .line 37
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    .line 38
    invoke-virtual {p3, v1, v2}, Lcom/android/tools/r8/graph/H2;->a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;)V

    .line 39
    invoke-interface {p2, p3, v0}, Lcom/android/tools/r8/internal/tm;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)V

    .line 40
    iget-object v1, p0, Lcom/android/tools/r8/internal/qm;->c:Lcom/android/tools/r8/internal/um;

    .line 41
    iget-object v2, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 42
    iget-object v3, p5, Lcom/android/tools/r8/internal/cu;->a:Lcom/android/tools/r8/internal/Yj;

    .line 43
    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/um;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Yj;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 44
    sget-boolean v2, Lcom/android/tools/r8/internal/um;->b:Z

    if-nez v2, :cond_5

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 45
    :cond_5
    :goto_2
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p4

    if-nez p4, :cond_1

    .line 46
    iget-object p4, p0, Lcom/android/tools/r8/internal/qm;->c:Lcom/android/tools/r8/internal/um;

    invoke-virtual {p4, p5}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/internal/cu;)Lcom/android/tools/r8/graph/A2;

    move-result-object p4

    .line 47
    sget-boolean v0, Lcom/android/tools/r8/internal/qm;->e:Z

    if-nez v0, :cond_7

    if-eqz p4, :cond_6

    if-eq p4, v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 48
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/qm;->b:Lcom/android/tools/r8/graph/y;

    .line 49
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    if-nez v0, :cond_9

    if-eqz v1, :cond_8

    goto :goto_4

    .line 50
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 51
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/qm;->b:Lcom/android/tools/r8/graph/y;

    .line 52
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 53
    invoke-static {v1, p3, p4, v0, v3}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Z)Lcom/android/tools/r8/graph/j1;

    move-result-object p4

    .line 54
    sget-object v0, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/t40;)V

    .line 55
    iget-object v0, p3, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 56
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 57
    invoke-virtual {v0, p4}, Lcom/android/tools/r8/graph/O4;->c(Lcom/android/tools/r8/graph/j1;)V

    .line 58
    new-instance v0, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v0, p3, p4}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    invoke-interface {p2, v0, p5}, Lcom/android/tools/r8/internal/tm;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/cu;)V

    goto/16 :goto_1

    .line 59
    :cond_a
    iget-object v1, p0, Lcom/android/tools/r8/internal/qm;->b:Lcom/android/tools/r8/graph/y;

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 60
    instance-of v2, v1, Lcom/android/tools/r8/graph/I0;

    if-eqz v2, :cond_b

    goto :goto_5

    .line 61
    :cond_b
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_a

    .line 62
    :cond_c
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object p1

    goto/16 :goto_0

    .line 63
    :cond_d
    :goto_5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 64
    iget-object p2, p0, Lcom/android/tools/r8/internal/qm;->b:Lcom/android/tools/r8/graph/y;

    iget-object p3, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-nez p2, :cond_e

    .line 65
    const-string p3, "missing"

    :goto_6
    move-object v5, p3

    goto :goto_7

    .line 66
    :cond_e
    instance-of p3, p2, Lcom/android/tools/r8/graph/I0;

    if-eqz p3, :cond_f

    .line 67
    const-string p3, "a classpath class"

    goto :goto_6

    .line 68
    :cond_f
    sget-boolean p3, Lcom/android/tools/r8/internal/qm;->e:Z

    if-eqz p3, :cond_11

    const-string p3, "INVALID"

    goto :goto_6

    .line 69
    :goto_7
    iget-object p3, p0, Lcom/android/tools/r8/internal/qm;->b:Lcom/android/tools/r8/graph/y;

    .line 70
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    if-nez p2, :cond_10

    .line 71
    iget-object p2, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    :goto_8
    move-object v2, p2

    goto :goto_9

    :cond_10
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    goto :goto_8

    .line 72
    :goto_9
    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    .line 73
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Ljava/util/Set;)V

    return-void

    .line 74
    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_12
    :goto_a
    return-void
.end method

.method public final a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Ta;)V
    .locals 5

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/internal/qm;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 12
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/xU;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/internal/qm;->d:Ljava/util/Map;

    new-instance v2, Lcom/android/tools/r8/internal/Wq1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Wq1;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 16
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 17
    iget-object v2, v1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-nez v2, :cond_4

    .line 18
    sget-boolean v2, Lcom/android/tools/r8/internal/qm;->e:Z

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/qm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    iget-object p2, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 19
    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/qm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 20
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p0, Lcom/android/tools/r8/internal/qm;->b:Lcom/android/tools/r8/graph/y;

    .line 21
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v3, v4, :cond_2

    .line 22
    new-instance v3, Lcom/android/tools/r8/internal/Xq1;

    invoke-direct {v3, p0, v2, p2, v1}, Lcom/android/tools/r8/internal/Xq1;-><init>(Lcom/android/tools/r8/internal/qm;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/tm;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {v0, v3}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Ta;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    .line 1
    const-string p3, "Desugared library retargeter post processor"

    invoke-virtual {p4, p3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p3

    .line 2
    :try_start_0
    sget-boolean p4, Lcom/android/tools/r8/internal/qm;->e:Z

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/android/tools/r8/internal/qm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p4

    .line 3
    iget-object p4, p4, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 4
    iget-boolean p4, p4, Lcom/android/tools/r8/internal/xU;->a:Z

    if-nez p4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/qm;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Ta;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    .line 8
    :goto_1
    :try_start_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method
