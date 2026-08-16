.class public final Lcom/android/tools/r8/internal/Nf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Cs0;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/yb0;

.field public final b:Ljava/util/IdentityHashMap;

.field public final c:Lcom/android/tools/r8/graph/y;

.field public final d:Lcom/android/tools/r8/shaking/N;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Nf0;->b:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Nf0;->c:Lcom/android/tools/r8/graph/y;

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->O:Lcom/android/tools/r8/internal/yb0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Nf0;->a:Lcom/android/tools/r8/internal/yb0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Nf0;->d:Lcom/android/tools/r8/shaking/N;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Lf0;)V
    .locals 4

    .line 68
    new-instance v0, Lcom/android/tools/r8/internal/ZN0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ZN0;-><init>()V

    .line 69
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object p0

    .line 70
    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p0

    .line 71
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    .line 72
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->N0()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    new-instance v2, Lcom/android/tools/r8/internal/CH;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 75
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->w0()Lcom/android/tools/r8/graph/R2$h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/R2$h;->W0()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 76
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->w0()Lcom/android/tools/r8/graph/R2$h;

    move-result-object v1

    iget v1, v1, Lcom/android/tools/r8/graph/R2$h;->d:I

    .line 77
    new-instance v3, Lcom/android/tools/r8/graph/b3;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/graph/b3;-><init>(I)V

    .line 78
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/R2;)V

    .line 79
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    .line 80
    sget-boolean v1, Lcom/android/tools/r8/internal/Lf0;->b:Z

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/tools/r8/internal/Lf0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 81
    :cond_2
    :goto_1
    iget-object v1, p1, Lcom/android/tools/r8/internal/Lf0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/D3$a;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/L0;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/D3;->o()Lcom/android/tools/r8/graph/F5;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/Nf0;->d:Lcom/android/tools/r8/shaking/N;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/N;->e(Lcom/android/tools/r8/graph/H2;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 4
    iget-object p4, p0, Lcom/android/tools/r8/internal/Nf0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p4, p3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    .line 6
    new-instance p4, Lcom/android/tools/r8/internal/Lf0;

    invoke-direct {p4}, Lcom/android/tools/r8/internal/Lf0;-><init>()V

    .line 7
    invoke-static {p2, p4}, Lcom/android/tools/r8/internal/Nf0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Lf0;)V

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0, p4, v0}, Lcom/android/tools/r8/internal/Nf0;->a(Lcom/android/tools/r8/internal/Lf0;Lcom/android/tools/r8/graph/H5;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nf0;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->S()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    iget-object v2, v1, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1;->L0()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 16
    iget-object v2, p0, Lcom/android/tools/r8/internal/Nf0;->c:Lcom/android/tools/r8/graph/y;

    .line 17
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    .line 18
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 19
    new-instance v3, Lcom/android/tools/r8/errors/FinalRClassEntriesWithOptimizedShrinkingDiagnostic;

    iget-object v4, p2, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 20
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-direct {v3, v4, v1}, Lcom/android/tools/r8/errors/FinalRClassEntriesWithOptimizedShrinkingDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/l1;)V

    .line 21
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_0

    .line 22
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nf0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 23
    new-instance v1, Lcom/android/tools/r8/internal/Mf0;

    iget-object p4, p4, Lcom/android/tools/r8/internal/Lf0;->a:Ljava/util/IdentityHashMap;

    invoke-direct {v1, p4}, Lcom/android/tools/r8/internal/Mf0;-><init>(Ljava/util/IdentityHashMap;)V

    .line 24
    invoke-virtual {v0, p2, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_5
    sget-boolean p2, Lcom/android/tools/r8/internal/Nf0;->e:Z

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/android/tools/r8/internal/Nf0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_7
    :goto_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/Nf0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Mf0;

    .line 27
    iget-object p2, p2, Lcom/android/tools/r8/internal/Mf0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/TH;

    if-eqz p2, :cond_8

    .line 28
    invoke-interface {p2}, Lcom/android/tools/r8/internal/TH;->iterator()Lcom/android/tools/r8/internal/UH;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 29
    iget-object p4, p0, Lcom/android/tools/r8/internal/Nf0;->a:Lcom/android/tools/r8/internal/yb0;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Lcom/android/tools/r8/internal/yb0;->a(ILjava/lang/String;)V

    goto :goto_3

    :cond_8
    :goto_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Lf0;Lcom/android/tools/r8/graph/H5;)V
    .locals 9

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nf0;->c:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/EW;->d()Lcom/android/tools/r8/internal/EW$a;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p2

    .line 31
    new-instance v0, Lcom/android/tools/r8/internal/YN0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/YN0;-><init>()V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/No0;

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/No0;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 33
    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/No0;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 35
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 36
    new-instance v1, Lcom/android/tools/r8/internal/CH;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 37
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    goto/16 :goto_3

    .line 38
    :cond_2
    instance-of v3, v2, Lcom/android/tools/r8/internal/Pf0;

    const-string v4, "Only running ResourceAccessAnalysis in initial tree shaking"

    if-nez v3, :cond_10

    .line 39
    instance-of v3, v2, Lcom/android/tools/r8/internal/oZ;

    const/16 v5, 0x10

    if-eqz v3, :cond_9

    .line 40
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->t0()Lcom/android/tools/r8/internal/oZ;

    move-result-object v1

    .line 41
    new-instance v2, Lcom/android/tools/r8/internal/CH;

    .line 42
    invoke-direct {v2, v5}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 43
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 44
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->o1()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 45
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 47
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    goto :goto_1

    .line 48
    :cond_4
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    instance-of v3, v3, Lcom/android/tools/r8/internal/Pf0;

    if-nez v3, :cond_5

    goto :goto_1

    .line 50
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1, v4}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_6
    sget-boolean v5, Lcom/android/tools/r8/internal/Nf0;->e:Z

    if-nez v5, :cond_3

    if-ne v3, v0, :cond_7

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    move-object v1, v2

    goto :goto_3

    .line 52
    :cond_9
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->a2()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    new-instance v3, Lcom/android/tools/r8/internal/CH;

    .line 54
    invoke-direct {v3, v5}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 55
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->u0()Lcom/android/tools/r8/internal/qZ;

    move-result-object v2

    .line 56
    iget-object v2, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_d

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    .line 58
    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_2

    .line 59
    :cond_a
    iget-object v7, v7, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 60
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 61
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    goto :goto_2

    .line 62
    :cond_b
    instance-of v7, v7, Lcom/android/tools/r8/internal/Pf0;

    if-nez v7, :cond_c

    goto :goto_2

    .line 63
    :cond_c
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1, v4}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    move-object v1, v3

    .line 64
    :goto_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 65
    sget-boolean v2, Lcom/android/tools/r8/internal/Lf0;->b:Z

    if-nez v2, :cond_f

    iget-object v2, p1, Lcom/android/tools/r8/internal/Lf0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_4

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 66
    :cond_f
    :goto_4
    iget-object v2, p1, Lcom/android/tools/r8/internal/Lf0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 67
    :cond_10
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1, v4}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    return-void
.end method
