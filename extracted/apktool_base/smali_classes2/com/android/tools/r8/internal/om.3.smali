.class public final Lcom/android/tools/r8/internal/om;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/um;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/Map;

.field public final h:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/om;->b:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/um;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/um;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/om;->c:Lcom/android/tools/r8/internal/um;

    invoke-static {p1}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object p1

    iget-object v0, p1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->o()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/om;->d:Ljava/util/Map;

    iget-object v0, p1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->d()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/om;->e:Ljava/util/Map;

    iget-object v0, p1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->p()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/om;->f:Ljava/util/Map;

    iget-object v0, p1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->l()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/om;->g:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/CU;->h()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/om;->h:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/F9;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/F9;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F9;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/A2;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/internal/om;->c:Lcom/android/tools/r8/internal/um;

    iget-object v1, p0, Lcom/android/tools/r8/internal/om;->e:Ljava/util/Map;

    .line 53
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 54
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final a(ZLcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/A2;
    .locals 0

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/android/tools/r8/internal/om;->c:Lcom/android/tools/r8/internal/um;

    .line 49
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/internal/cu;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 50
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/rm;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/om;->c:Lcom/android/tools/r8/internal/um;

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/internal/ea;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 33
    new-instance v0, Lcom/android/tools/r8/internal/Xo1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Xo1;-><init>(Lcom/android/tools/r8/internal/om;Ljava/util/function/BiFunction;)V

    .line 34
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 35
    new-instance v0, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/am;
    .locals 1

    if-nez p1, :cond_0

    .line 41
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 42
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Yo1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Yo1;-><init>(Lcom/android/tools/r8/internal/om;Lcom/android/tools/r8/graph/A2;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/om;->a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/am;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/tools/r8/internal/om;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/cu;

    if-eqz v0, :cond_0

    .line 44
    new-instance p1, Lcom/android/tools/r8/internal/Vo1;

    invoke-direct {p1, p0, p2, v0}, Lcom/android/tools/r8/internal/Vo1;-><init>(Lcom/android/tools/r8/internal/om;ZLcom/android/tools/r8/internal/cu;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/om;->a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/om;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 46
    new-instance p2, Lcom/android/tools/r8/internal/Wo1;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/internal/Wo1;-><init>(Lcom/android/tools/r8/internal/om;Lcom/android/tools/r8/graph/A2;)V

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/om;->a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 47
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/om;->g:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/om;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/am;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 5

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/om;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/om;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->o3:Lcom/android/tools/r8/internal/hC;

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 13
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p2

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/internal/om;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v1

    .line 16
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v3

    if-nez v3, :cond_2

    .line 18
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 19
    :cond_2
    sget-boolean v3, Lcom/android/tools/r8/internal/om;->i:Z

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/Z4;->s()Lcom/android/tools/r8/graph/j1;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 20
    :cond_4
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/Z4;->s()Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->O()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 22
    iget-object p1, p0, Lcom/android/tools/r8/internal/om;->f:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/om;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/am;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 v4, 0x0

    .line 24
    invoke-virtual {p0, v2, v4}, Lcom/android/tools/r8/internal/om;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/am;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/am;->a()Z

    move-result v4

    if-nez v4, :cond_6

    .line 26
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 27
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/tools/r8/internal/ga;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 28
    iget-object p2, p0, Lcom/android/tools/r8/internal/om;->b:Lcom/android/tools/r8/graph/y;

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {v1, v0, p1, p2, v1}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-eqz p1, :cond_9

    if-nez v3, :cond_8

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 31
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/om;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/am;

    move-result-object p1

    return-object p1

    :cond_9
    return-object v2

    .line 32
    :cond_a
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1
.end method

.method public final synthetic a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 36
    invoke-interface {p1, p6, p8}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 37
    sget-boolean p2, Lcom/android/tools/r8/internal/om;->i:Z

    if-nez p2, :cond_1

    iget-object p3, p0, Lcom/android/tools/r8/internal/om;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    .line 38
    iget-object p2, p0, Lcom/android/tools/r8/internal/om;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 39
    :cond_3
    :goto_1
    new-instance p2, Lcom/android/tools/r8/internal/ga;

    const/16 p3, 0xb8

    const/4 p4, 0x0

    invoke-direct {p2, p3, p1, p4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/om;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/om;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/om;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 1

    .line 4
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ca;->b(Ljava/util/function/IntConsumer;)V

    const/16 v0, 0xb2

    .line 5
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/A2;
    .locals 0

    .line 15
    iget-object p3, p0, Lcom/android/tools/r8/internal/om;->c:Lcom/android/tools/r8/internal/um;

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/rm;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->f()Lcom/android/tools/r8/internal/F9;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/om;->b:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v2, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/om;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/om;->d:Ljava/util/Map;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/om;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    .line 11
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 12
    :cond_3
    new-instance v0, Lcom/android/tools/r8/internal/Uo1;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/Uo1;-><init>(Lcom/android/tools/r8/internal/F9;Lcom/android/tools/r8/graph/l1;)V

    .line 13
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 14
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2
.end method
