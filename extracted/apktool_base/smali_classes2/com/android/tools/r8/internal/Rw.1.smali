.class public abstract Lcom/android/tools/r8/internal/Rw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/fB;

.field public final c:Lcom/android/tools/r8/graph/H5;

.field public final d:Lcom/android/tools/r8/internal/k40;

.field public e:Lcom/android/tools/r8/internal/dt;

.field public f:Ljava/util/IdentityHashMap;

.field public final g:Lcom/android/tools/r8/internal/Nn;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Nn;->k()Lcom/android/tools/r8/internal/Nn;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Rw;->g:Lcom/android/tools/r8/internal/Nn;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Rw;->b:Lcom/android/tools/r8/internal/fB;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Rw;->d:Lcom/android/tools/r8/internal/k40;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/F0;)Ljava/util/List;
    .locals 0

    .line 9
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W5;)Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/p;
    .locals 0

    .line 59
    sget-object p0, Lcom/android/tools/r8/internal/Ot;->a:Lcom/android/tools/r8/internal/Ot;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/ZD;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/hw;Lcom/android/tools/r8/internal/xw0;)V
.end method

.method public final a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/SD;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->g:Lcom/android/tools/r8/internal/Nn;

    new-instance v1, Lcom/android/tools/r8/internal/EV0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/EV0;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v2, Lcom/android/tools/r8/internal/Mn;->a:Lcom/android/tools/r8/internal/Mn;

    .line 5
    new-instance v3, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v3, v2, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0, v1, v3}, Lcom/android/tools/r8/internal/Pn;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/fv;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/List;

    new-instance v0, Lcom/android/tools/r8/internal/Qw;

    invoke-direct {v0, p2, p3}, Lcom/android/tools/r8/internal/Qw;-><init>(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/SD;)V

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/android/tools/r8/ir/optimize/u;)V
    .locals 12

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->b:Lcom/android/tools/r8/internal/fB;

    .line 12
    iget-object v1, v1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    .line 13
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 14
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 15
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->F1()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 16
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->S()Lcom/android/tools/r8/internal/hw;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    .line 18
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/D3;->o()Lcom/android/tools/r8/graph/F5;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 19
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/Rw;->a(Lcom/android/tools/r8/graph/F5;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 20
    sget-object v5, Lcom/android/tools/r8/internal/rv0;->a:Lcom/android/tools/r8/internal/rv0;

    invoke-virtual {p0, v4, v3, v5}, Lcom/android/tools/r8/internal/Rw;->a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/SD;)V

    goto :goto_0

    .line 21
    :cond_2
    instance-of v5, p0, Lcom/android/tools/r8/internal/Eo0;

    if-eqz v5, :cond_1

    .line 22
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 23
    move-object v5, p0

    check-cast v5, Lcom/android/tools/r8/internal/Eo0;

    .line 24
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 25
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    iget-object v7, v5, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    if-ne v6, v7, :cond_1

    iget-object v6, v5, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    .line 26
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/shaking/i;

    iget-object v5, v5, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    .line 27
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v6, v4, v5}, Lcom/android/tools/r8/shaking/i;->b(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/graph/j1;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 28
    sget-object v5, Lcom/android/tools/r8/internal/rv0;->a:Lcom/android/tools/r8/internal/rv0;

    invoke-virtual {p0, v4, v3, v5}, Lcom/android/tools/r8/internal/Rw;->a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/SD;)V

    goto :goto_0

    .line 29
    :cond_3
    instance-of v4, p0, Lcom/android/tools/r8/internal/ZD;

    if-eqz v4, :cond_1

    .line 30
    iget-object v4, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    .line 31
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/u1;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v3

    .line 33
    move-object v4, p0

    check-cast v4, Lcom/android/tools/r8/internal/ZD;

    iget-object v5, p0, Lcom/android/tools/r8/internal/Rw;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fB;->m()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 34
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    if-ne v6, v5, :cond_1

    .line 35
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    iget-object v6, v4, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    if-eq v5, v6, :cond_4

    goto/16 :goto_0

    .line 36
    :cond_4
    iget-object v5, v4, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    iget-object v6, v4, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v3, v5, v6}, Lcom/android/tools/r8/internal/VJ;->d(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    if-nez v5, :cond_5

    goto/16 :goto_0

    .line 37
    :cond_5
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j1;

    .line 38
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 39
    iget-object v6, v6, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 40
    invoke-virtual {v6, v3}, Lcom/android/tools/r8/internal/TW;->a(Lcom/android/tools/r8/internal/QJ;)Lcom/android/tools/r8/internal/fE;

    move-result-object v6

    .line 41
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/fE;->b()Lcom/android/tools/r8/internal/UD;

    move-result-object v6

    .line 42
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    iget-object v7, v4, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/y;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/tools/r8/graph/F0;

    .line 43
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v6, v10}, Lcom/android/tools/r8/internal/UD;->a(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/SD;

    move-result-object v10

    .line 45
    invoke-interface {v10}, Lcom/android/tools/r8/internal/SD;->s()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 46
    invoke-interface {v10}, Lcom/android/tools/r8/internal/SD;->q()Lcom/android/tools/r8/internal/RD;

    move-result-object v10

    .line 47
    iget v10, v10, Lcom/android/tools/r8/internal/RD;->a:I

    .line 48
    invoke-virtual {v3, v10}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/android/tools/r8/internal/ZD;->a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/SD;

    move-result-object v10

    .line 49
    :cond_6
    invoke-virtual {v4, v9, v3, v10}, Lcom/android/tools/r8/internal/Rw;->a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/SD;)V

    goto :goto_1

    .line 50
    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->b:Lcom/android/tools/r8/internal/fB;

    .line 51
    iget-object v0, v0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    .line 52
    new-instance v1, Lcom/android/tools/r8/internal/CV0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/CV0;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->f()Ljava/util/List;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/android/tools/r8/internal/Rw;->g:Lcom/android/tools/r8/internal/Nn;

    new-instance v3, Lcom/android/tools/r8/internal/DV0;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/tools/r8/internal/DV0;-><init>(Lcom/android/tools/r8/internal/Rw;ZLjava/util/List;Lcom/android/tools/r8/ir/optimize/u;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(ZLjava/util/List;Lcom/android/tools/r8/ir/optimize/u;Lcom/android/tools/r8/graph/F0;Ljava/util/List;)V
    .locals 3

    .line 56
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto/16 :goto_5

    .line 57
    :cond_0
    invoke-static {p5}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/internal/Qw;

    .line 58
    iget-object v0, p5, Lcom/android/tools/r8/internal/Qw;->a:Lcom/android/tools/r8/internal/zE;

    .line 59
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Rw;->a()Lcom/android/tools/r8/internal/ZD;

    move-result-object p1

    iget-object p2, p5, Lcom/android/tools/r8/internal/Qw;->b:Lcom/android/tools/r8/internal/SD;

    .line 61
    invoke-virtual {p1, p4, p2}, Lcom/android/tools/r8/internal/ZD;->b(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/SD;)V

    return-void

    .line 62
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->S()Lcom/android/tools/r8/internal/hw;

    move-result-object p5

    if-nez p1, :cond_4

    .line 63
    iget-object p1, p0, Lcom/android/tools/r8/internal/Rw;->e:Lcom/android/tools/r8/internal/dt;

    if-nez p1, :cond_2

    .line 64
    new-instance p1, Lcom/android/tools/r8/internal/dt;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->b:Lcom/android/tools/r8/internal/fB;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/internal/dt;-><init>(Lcom/android/tools/r8/internal/fB;I)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Rw;->e:Lcom/android/tools/r8/internal/dt;

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/Rw;->e:Lcom/android/tools/r8/internal/dt;

    .line 66
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 68
    invoke-virtual {p1, v2, v0}, Lcom/android/tools/r8/internal/dt;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 69
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 71
    iget-object p1, p3, Lcom/android/tools/r8/ir/optimize/u;->a:Ljava/util/IdentityHashMap;

    if-eqz p1, :cond_5

    .line 72
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 73
    :cond_5
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_0

    .line 74
    :cond_6
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/hw;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->R()Z

    move-result p1

    if-eqz p1, :cond_7

    goto/16 :goto_6

    .line 75
    :cond_7
    :goto_0
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    .line 77
    iget-object v2, p0, Lcom/android/tools/r8/internal/Rw;->f:Ljava/util/IdentityHashMap;

    if-nez v2, :cond_9

    .line 78
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Rw;->b()Ljava/util/IdentityHashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Rw;->f:Ljava/util/IdentityHashMap;

    .line 79
    :cond_9
    iget-object v2, p0, Lcom/android/tools/r8/internal/Rw;->f:Ljava/util/IdentityHashMap;

    .line 80
    invoke-virtual {v2, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/p;

    invoke-virtual {v0, p4}, Lcom/android/tools/r8/internal/p;->a(Lcom/android/tools/r8/graph/F0;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 81
    :cond_a
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object p1

    .line 82
    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/zE;

    if-ne p2, p5, :cond_c

    goto/16 :goto_6

    .line 84
    :cond_c
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p2, v0, v2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/p;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/android/tools/r8/internal/p;->a(Lcom/android/tools/r8/graph/F0;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 85
    :goto_1
    instance-of p1, p0, Lcom/android/tools/r8/internal/Eo0;

    if-eqz p1, :cond_14

    .line 86
    sget-boolean p1, Lcom/android/tools/r8/ir/optimize/u;->c:Z

    if-nez p1, :cond_f

    .line 87
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 88
    iget-object p2, p3, Lcom/android/tools/r8/ir/optimize/u;->a:Ljava/util/IdentityHashMap;

    if-eqz p2, :cond_d

    .line 89
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 90
    :cond_d
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object p2

    if-eqz p2, :cond_e

    goto :goto_2

    .line 91
    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_f
    :goto_2
    if-nez p1, :cond_11

    .line 92
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_3

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 93
    :cond_11
    :goto_3
    iget-object p1, p3, Lcom/android/tools/r8/ir/optimize/u;->a:Ljava/util/IdentityHashMap;

    if-eqz p1, :cond_12

    .line 94
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 95
    iget-object p1, p3, Lcom/android/tools/r8/ir/optimize/u;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/R2;

    goto :goto_4

    .line 96
    :cond_12
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object p1

    .line 97
    :goto_4
    move-object p2, p0

    check-cast p2, Lcom/android/tools/r8/internal/Eo0;

    .line 98
    invoke-interface {p4}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object p3

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/hw;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    instance-of p1, p1, Lcom/android/tools/r8/graph/Z2;

    if-nez p1, :cond_13

    goto :goto_5

    .line 101
    :cond_13
    invoke-virtual {p2, p3, p4}, Lcom/android/tools/r8/internal/Eo0;->a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/n10;->a(Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    .line 102
    invoke-virtual {p2, p3, p4, p1, v1}, Lcom/android/tools/r8/internal/Eo0;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/F1;Z)V

    :cond_14
    :goto_5
    return-void

    .line 103
    :cond_15
    :goto_6
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/hw;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p0, p4, p5, p1}, Lcom/android/tools/r8/internal/Rw;->a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/hw;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method

.method public abstract a(Lcom/android/tools/r8/graph/F5;)Z
.end method

.method public final b()Ljava/util/IdentityHashMap;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 8
    new-instance v4, Lcom/android/tools/r8/internal/FV0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/FV0;-><init>()V

    .line 9
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/p;

    .line 10
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    instance-of v5, v4, Lcom/android/tools/r8/internal/ov0;

    if-eqz v5, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    sget-boolean v5, Lcom/android/tools/r8/internal/Rw;->h:Z

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/p;->d()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 13
    :cond_3
    :goto_1
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/p;->b()Lcom/android/tools/r8/internal/LQ;

    move-result-object v5

    if-eqz v3, :cond_4

    .line 14
    invoke-interface {v5}, Lcom/android/tools/r8/internal/LQ;->size()I

    move-result v6

    goto :goto_2

    :cond_4
    const/4 v6, -0x1

    .line 15
    :goto_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/W5;

    .line 16
    sget-object v10, Lcom/android/tools/r8/internal/Ot;->a:Lcom/android/tools/r8/internal/Ot;

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/p;

    .line 17
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    instance-of v10, v8, Lcom/android/tools/r8/internal/Ot;

    if-eqz v10, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    instance-of v10, v8, Lcom/android/tools/r8/internal/ov0;

    if-eqz v10, :cond_6

    move v7, v9

    goto :goto_5

    .line 20
    :cond_6
    sget-boolean v9, Lcom/android/tools/r8/internal/Rw;->h:Z

    if-nez v9, :cond_8

    .line 21
    instance-of v9, v8, Lcom/android/tools/r8/internal/qg;

    if-eqz v9, :cond_7

    goto :goto_4

    .line 22
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_8
    :goto_4
    move-object v9, v5

    check-cast v9, Lcom/android/tools/r8/internal/p;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    instance-of v9, v9, Lcom/android/tools/r8/internal/qg;

    if-nez v9, :cond_9

    .line 25
    new-instance v5, Lcom/android/tools/r8/internal/qg;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/qg;-><init>()V

    .line 26
    :cond_9
    invoke-interface {v5}, Lcom/android/tools/r8/internal/LQ;->a()Lcom/android/tools/r8/internal/qg;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/p;->a()Lcom/android/tools/r8/internal/qg;

    move-result-object v8

    .line 27
    iget-object v9, v9, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    .line 28
    iget-object v8, v8, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_a
    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_16

    if-eqz v3, :cond_12

    .line 29
    sget-boolean v3, Lcom/android/tools/r8/internal/Rw;->h:Z

    if-nez v3, :cond_16

    iget-object v3, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    .line 30
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v8

    :cond_b
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/zE;

    .line 31
    iget-object v10, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9, v10, v3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/p;

    move-result-object v9

    .line 32
    sget-boolean v10, Lcom/android/tools/r8/internal/Rw;->h:Z

    if-nez v10, :cond_d

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    instance-of v10, v9, Lcom/android/tools/r8/internal/ov0;

    if-nez v10, :cond_c

    goto :goto_7

    .line 34
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_d
    :goto_7
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    instance-of v10, v9, Lcom/android/tools/r8/internal/Ot;

    if-eqz v10, :cond_e

    goto :goto_6

    .line 37
    :cond_e
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/p;->a()Lcom/android/tools/r8/internal/qg;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 39
    iget-object v9, v9, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v9

    goto :goto_8

    .line 40
    :cond_f
    iget-object v9, v9, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    .line 41
    :goto_8
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_10
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/g1;

    .line 42
    sget-boolean v11, Lcom/android/tools/r8/internal/Rw;->h:Z

    if-nez v11, :cond_10

    invoke-interface {v5, v10}, Lcom/android/tools/r8/internal/LQ;->a(Lcom/android/tools/r8/graph/g1;)Z

    move-result v10

    if-eqz v10, :cond_11

    goto :goto_9

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_12
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/zE;

    .line 44
    iget-object v10, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    iget-object v11, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v8, v10, v11}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/p;

    move-result-object v8

    .line 45
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    instance-of v10, v8, Lcom/android/tools/r8/internal/Ot;

    if-eqz v10, :cond_13

    goto :goto_a

    .line 47
    :cond_13
    instance-of v10, v8, Lcom/android/tools/r8/internal/ov0;

    if-eqz v10, :cond_14

    goto :goto_b

    .line 48
    :cond_14
    move-object v10, v5

    check-cast v10, Lcom/android/tools/r8/internal/p;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    instance-of v10, v10, Lcom/android/tools/r8/internal/qg;

    if-nez v10, :cond_15

    .line 50
    new-instance v5, Lcom/android/tools/r8/internal/qg;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/qg;-><init>()V

    .line 51
    :cond_15
    invoke-interface {v5}, Lcom/android/tools/r8/internal/LQ;->a()Lcom/android/tools/r8/internal/qg;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/p;->a()Lcom/android/tools/r8/internal/qg;

    move-result-object v8

    .line 52
    iget-object v10, v10, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    .line 53
    iget-object v8, v8, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-interface {v10, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_a

    :cond_16
    move v9, v7

    :goto_b
    if-eqz v9, :cond_17

    .line 54
    sget-object v3, Lcom/android/tools/r8/internal/ov0;->a:Lcom/android/tools/r8/internal/ov0;

    invoke-virtual {v0, v1, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_17
    if-eq v5, v4, :cond_18

    .line 55
    invoke-interface {v5}, Lcom/android/tools/r8/internal/LQ;->a()Lcom/android/tools/r8/internal/qg;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_18
    invoke-interface {v5}, Lcom/android/tools/r8/internal/LQ;->size()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 57
    sget-boolean v3, Lcom/android/tools/r8/internal/Rw;->h:Z

    if-nez v3, :cond_1a

    invoke-interface {v5}, Lcom/android/tools/r8/internal/LQ;->size()I

    move-result v3

    if-le v3, v6, :cond_19

    goto :goto_c

    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_1a
    :goto_c
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_1b
    return-object v0
.end method
