.class public final Lcom/android/tools/r8/internal/o3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/M1;

.field public final b:Lcom/android/tools/r8/internal/fB;

.field public final c:Lcom/android/tools/r8/graph/H5;

.field public final d:Lcom/android/tools/r8/internal/dX;

.field public final e:Lcom/android/tools/r8/internal/S50;

.field public f:Lcom/android/tools/r8/internal/Lf;

.field public final synthetic g:Lcom/android/tools/r8/internal/p3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/p3;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/S50;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/o3;->a:Lcom/android/tools/r8/internal/M1;

    iput-object p3, p0, Lcom/android/tools/r8/internal/o3;->b:Lcom/android/tools/r8/internal/fB;

    iput-object p4, p0, Lcom/android/tools/r8/internal/o3;->c:Lcom/android/tools/r8/graph/H5;

    iput-object p5, p0, Lcom/android/tools/r8/internal/o3;->d:Lcom/android/tools/r8/internal/dX;

    iput-object p6, p0, Lcom/android/tools/r8/internal/o3;->e:Lcom/android/tools/r8/internal/S50;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/ZC;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/ZC;
    .locals 1

    .line 131
    invoke-interface {p0}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 132
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/o3;->h:Z

    if-nez v0, :cond_2

    invoke-interface {p0}, Lcom/android/tools/r8/internal/ZC;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 133
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 134
    new-instance v0, Lcom/android/tools/r8/internal/yF0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/yF0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    return-object p0

    .line 135
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object p1

    .line 136
    new-instance v0, Lcom/android/tools/r8/internal/K8;

    invoke-interface {p0}, Lcom/android/tools/r8/internal/ZC;->b()Lcom/android/tools/r8/internal/Q5;

    move-result-object p0

    .line 137
    iget-object p1, p1, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 138
    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/K8;-><init>(Lcom/android/tools/r8/internal/Q5;Lcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method

.method public static synthetic a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/internal/Yx0;)V
    .locals 2

    .line 212
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 213
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/graph/A2;
    .locals 2

    .line 414
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 415
    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 416
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/p3;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1

    .line 420
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    instance-of v0, p2, Lcom/android/tools/r8/internal/TJ;

    if-eqz v0, :cond_4

    .line 422
    sget-boolean p2, Lcom/android/tools/r8/internal/o3;->h:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/p3;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 423
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    .line 424
    iget-object p2, p2, Lcom/android/tools/r8/internal/p3;->g:Ljava/util/IdentityHashMap;

    .line 425
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1

    .line 426
    :cond_4
    sget-boolean v0, Lcom/android/tools/r8/internal/o3;->h:Z

    if-nez v0, :cond_6

    .line 427
    instance-of v1, p2, Lcom/android/tools/r8/internal/hK;

    if-nez v1, :cond_6

    .line 428
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 429
    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    .line 430
    iget-object p2, p2, Lcom/android/tools/r8/internal/p3;->g:Ljava/util/IdentityHashMap;

    .line 431
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    if-nez v0, :cond_8

    if-eqz p2, :cond_7

    goto :goto_2

    .line 432
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_2
    if-nez v0, :cond_a

    .line 433
    iget-object v0, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/p3;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 434
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    .line 435
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_3
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/f60;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/FB;
    .locals 6

    .line 99
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    new-instance v0, Lcom/android/tools/r8/internal/bo1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bo1;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/f60;->e(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/o3;->e:Lcom/android/tools/r8/internal/S50;

    .line 101
    iget-object v1, p1, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    .line 102
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/S50;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/O50;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/O50;->d()Lcom/android/tools/r8/internal/rg;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/android/tools/r8/internal/o3;->e:Lcom/android/tools/r8/internal/S50;

    .line 105
    iget-object v4, p1, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    .line 106
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/S50;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/O50;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/O50;->d()Lcom/android/tools/r8/internal/rg;

    move-result-object v1

    if-eqz v0, :cond_9

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 108
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/rg;->a(Lcom/android/tools/r8/internal/rg;)Lcom/android/tools/r8/internal/Vf;

    move-result-object v1

    .line 109
    invoke-interface {v1}, Lcom/android/tools/r8/internal/Vf;->y()Lcom/android/tools/r8/internal/Q5;

    move-result-object v4

    if-nez v4, :cond_2

    return-object v2

    .line 110
    :cond_2
    iget-object v4, p1, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 111
    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Q00;

    .line 112
    iget-object v4, p1, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 113
    invoke-interface {p2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Q00;

    .line 114
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    instance-of v4, v3, Lcom/android/tools/r8/internal/zv0;

    if-eqz v4, :cond_3

    .line 116
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    instance-of v4, p2, Lcom/android/tools/r8/internal/zv0;

    if-eqz v4, :cond_3

    return-object v2

    .line 118
    :cond_3
    iget-object v0, v0, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/R50;

    .line 119
    sget-boolean v2, Lcom/android/tools/r8/internal/rg;->c:Z

    if-nez v2, :cond_5

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_0
    if-nez v2, :cond_7

    .line 120
    sget-object v2, Lcom/android/tools/r8/internal/R50;->d:Lcom/android/tools/r8/internal/R50;

    if-eq v0, v2, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 121
    :cond_7
    :goto_1
    sget-object v2, Lcom/android/tools/r8/internal/R50;->c:Lcom/android/tools/r8/internal/R50;

    if-ne v0, v2, :cond_8

    .line 122
    new-instance v0, Lcom/android/tools/r8/internal/FB;

    invoke-direct {v0, v1, p2, v3}, Lcom/android/tools/r8/internal/FB;-><init>(Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/Q00;Lcom/android/tools/r8/internal/Q00;)V

    goto :goto_2

    .line 123
    :cond_8
    new-instance v0, Lcom/android/tools/r8/internal/FB;

    invoke-direct {v0, v1, v3, p2}, Lcom/android/tools/r8/internal/FB;-><init>(Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/Q00;Lcom/android/tools/r8/internal/Q00;)V

    .line 124
    :goto_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object p2, p2, Lcom/android/tools/r8/internal/p3;->k:Lcom/android/tools/r8/internal/aD;

    .line 125
    invoke-static {}, Lcom/android/tools/r8/internal/B60$b;->t()Lcom/android/tools/r8/internal/B60$b$a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/o3;->b:Lcom/android/tools/r8/internal/fB;

    .line 126
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/B60$b$a;

    .line 127
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/B60$b$a;

    .line 128
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60$b$a;->d()Lcom/android/tools/r8/internal/B60$b;

    move-result-object p1

    .line 129
    iget-object p2, p2, Lcom/android/tools/r8/internal/aD;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 130
    invoke-virtual {p2, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_9
    :goto_3
    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/Q00;)Lcom/android/tools/r8/internal/Q00;
    .locals 3

    .line 218
    new-instance v0, Lcom/android/tools/r8/internal/Sn1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Sn1;-><init>()V

    .line 219
    iget-object v1, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/F0;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    .line 221
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 222
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Q30;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Q30;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    new-instance v0, Lcom/android/tools/r8/internal/Nm0;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/Nm0;-><init>(Lcom/android/tools/r8/graph/l1;)V

    goto :goto_0

    .line 225
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/Mm0;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/Mm0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/Q30;)V

    move-object v0, v1

    goto :goto_0

    .line 226
    :cond_1
    sget v0, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v0, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    .line 227
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v1

    if-nez v1, :cond_8

    .line 228
    iget-object v1, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/F1;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 230
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    return-object p2

    .line 232
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 234
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->l()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 235
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->g()Lcom/android/tools/r8/internal/xg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xg;->z()Lcom/android/tools/r8/internal/xt;

    move-result-object p1

    goto :goto_2

    .line 236
    :cond_4
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    .line 237
    :goto_2
    new-instance p2, Lcom/android/tools/r8/internal/lg;

    .line 238
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {p2, v0, p1, v1}, Lcom/android/tools/r8/internal/lg;-><init>(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)V

    return-object p2

    .line 239
    :cond_5
    sget-boolean p2, Lcom/android/tools/r8/internal/o3;->h:Z

    if-nez p2, :cond_7

    .line 240
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 242
    :cond_7
    :goto_3
    new-instance p1, Lcom/android/tools/r8/internal/ug;

    .line 243
    sget-object p2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {p1, v0, p2}, Lcom/android/tools/r8/internal/ug;-><init>(Lcom/android/tools/r8/internal/F1;Ljava/util/Set;)V

    return-object p1

    :cond_8
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/yg;Lcom/android/tools/r8/internal/yg;)Lcom/android/tools/r8/internal/Q00;
    .locals 8

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v2, v0, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 6
    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 7
    sget-object v6, Lcom/android/tools/r8/internal/Bo0;->a:Lcom/android/tools/r8/internal/zo0;

    .line 8
    sget-object v7, Lcom/android/tools/r8/internal/b2;->a:Lcom/android/tools/r8/internal/b2;

    const/4 v4, 0x0

    move-object v1, p2

    move-object v3, p3

    .line 9
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/yg;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p2

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/Q00;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/og;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Q00;
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p2

    move/from16 v4, p3

    move-object/from16 v9, p4

    .line 373
    sget-boolean v10, Lcom/android/tools/r8/internal/o3;->h:Z

    if-nez v10, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v0

    if-nez v0, :cond_1

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    move-object/from16 v11, p6

    if-nez v10, :cond_3

    if-eq v9, v11, :cond_3

    .line 374
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 375
    :cond_3
    :goto_1
    move-object/from16 v0, p5

    check-cast v0, Lcom/android/tools/r8/internal/xX;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    instance-of v0, v0, Lcom/android/tools/r8/internal/ng;

    if-eqz v0, :cond_4

    .line 377
    invoke-interface/range {p5 .. p5}, Lcom/android/tools/r8/internal/wX;->b()Lcom/android/tools/r8/internal/ng;

    move-result-object v0

    .line 378
    iget-object v0, v0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    .line 379
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Iw0;

    .line 380
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    instance-of v0, v0, Lcom/android/tools/r8/internal/zv0;

    if-eqz v0, :cond_4

    .line 382
    sget-object v0, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object v0

    .line 383
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    if-nez v8, :cond_5

    goto :goto_3

    .line 384
    :cond_5
    iget-object v0, v7, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v1, v7, Lcom/android/tools/r8/internal/o3;->d:Lcom/android/tools/r8/internal/dX;

    .line 385
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    invoke-virtual {v1, v8}, Lcom/android/tools/r8/internal/dX;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 387
    sget v0, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v0, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    goto :goto_2

    .line 388
    :cond_6
    iget-object v1, v0, Lcom/android/tools/r8/internal/p3;->d:Lcom/android/tools/r8/internal/bX;

    invoke-virtual {v1, v8, v4}, Lcom/android/tools/r8/internal/bX;->a(Lcom/android/tools/r8/graph/H5;I)Lcom/android/tools/r8/internal/aX;

    move-result-object v1

    .line 389
    iget-object v0, v0, Lcom/android/tools/r8/internal/p3;->b:Lcom/android/tools/r8/internal/Et;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Et;->a(Lcom/android/tools/r8/internal/aX;)Lcom/android/tools/r8/internal/Vf;

    move-result-object v0

    .line 390
    :goto_2
    invoke-interface {v0}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    const/4 v0, 0x0

    move-object/from16 v5, p1

    goto :goto_4

    .line 391
    :cond_7
    iget-object v1, v7, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, v7, Lcom/android/tools/r8/internal/o3;->c:Lcom/android/tools/r8/graph/H5;

    .line 392
    new-instance v3, Lcom/android/tools/r8/internal/Ox;

    move-object/from16 v5, p1

    invoke-direct {v3, v8, v5, v1, v2}, Lcom/android/tools/r8/internal/Ox;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    .line 393
    invoke-interface {v0, v1, v3}, Lcom/android/tools/r8/internal/Vf;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->h0()Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_c

    .line 394
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 395
    sget-object v0, Lcom/android/tools/r8/internal/fw0;->b:Lcom/android/tools/r8/internal/fw0;

    return-object v0

    .line 396
    :cond_8
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 397
    sget-object v0, Lcom/android/tools/r8/internal/gw0;->b:Lcom/android/tools/r8/internal/gw0;

    return-object v0

    .line 398
    :cond_9
    sget-boolean v0, Lcom/android/tools/r8/internal/Iw0;->a:Z

    if-nez v0, :cond_b

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 399
    :cond_b
    :goto_5
    sget-object v0, Lcom/android/tools/r8/internal/hw0;->b:Lcom/android/tools/r8/internal/hw0;

    return-object v0

    .line 400
    :cond_c
    iget-object v13, v7, Lcom/android/tools/r8/internal/o3;->c:Lcom/android/tools/r8/graph/H5;

    new-instance v14, Lcom/android/tools/r8/internal/do1;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/do1;-><init>(Lcom/android/tools/r8/internal/o3;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/og;)V

    move-object v0, p0

    move-object v1, v12

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object v5, v13

    move-object v6, v14

    .line 401
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/o3;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/G5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Q00;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    .line 402
    :cond_d
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 403
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    .line 404
    invoke-static {v0}, Lcom/android/tools/r8/internal/ig;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/Q00;

    move-result-object v0

    return-object v0

    .line 405
    :cond_e
    iget-object v0, v7, Lcom/android/tools/r8/internal/o3;->a:Lcom/android/tools/r8/internal/M1;

    invoke-interface {v0, v9}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 406
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 407
    iget-object v1, v7, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9, v1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/zt;

    move-result-object v1

    .line 408
    iget-object v2, v7, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v2, v2, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    .line 409
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v3

    .line 410
    invoke-static {v2, v1, v12, v3}, Lcom/android/tools/r8/internal/Ix0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;

    move-result-object v1

    .line 411
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/lg;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)Lcom/android/tools/r8/internal/Q00;

    move-result-object v0

    return-object v0

    :cond_f
    if-nez v10, :cond_11

    .line 412
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_6

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 413
    :cond_11
    :goto_6
    invoke-static {v0}, Lcom/android/tools/r8/internal/ug;->a(Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/Q00;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Q00;
    .locals 9

    .line 180
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 181
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 182
    new-instance v2, Lcom/android/tools/r8/internal/Yx0;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 183
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 184
    new-instance p1, Lcom/android/tools/r8/internal/Xn1;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/internal/Xn1;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 185
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/internal/Yx0;

    .line 186
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 187
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 188
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/k3;

    .line 189
    iget-object v3, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v3, v3, Lcom/android/tools/r8/internal/p3;->d:Lcom/android/tools/r8/internal/bX;

    const/4 v4, 0x1

    .line 190
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v2

    .line 191
    invoke-virtual {v3, p3, v2}, Lcom/android/tools/r8/internal/bX;->a(Lcom/android/tools/r8/graph/H5;I)Lcom/android/tools/r8/internal/aX;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 193
    new-instance p3, Lcom/android/tools/r8/internal/ig;

    .line 194
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->a()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Lcom/android/tools/r8/internal/ig;-><init>(Lcom/android/tools/r8/internal/p10;Ljava/util/Set;)V

    goto :goto_2

    .line 195
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 196
    new-instance p3, Lcom/android/tools/r8/internal/lg;

    invoke-direct {p3, p1}, Lcom/android/tools/r8/internal/lg;-><init>(Ljava/util/HashSet;)V

    goto :goto_2

    .line 197
    :cond_3
    sget-boolean p3, Lcom/android/tools/r8/internal/yg;->d:Z

    if-nez p3, :cond_5

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 198
    :cond_5
    :goto_1
    new-instance p3, Lcom/android/tools/r8/internal/ug;

    .line 199
    sget v0, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v0, Lcom/android/tools/r8/internal/A7;->b:Lcom/android/tools/r8/internal/A7;

    invoke-direct {p3, v0, p1}, Lcom/android/tools/r8/internal/ug;-><init>(Lcom/android/tools/r8/internal/F1;Ljava/util/Set;)V

    .line 200
    :goto_2
    new-instance p1, Lcom/android/tools/r8/internal/Yn1;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Yn1;-><init>()V

    .line 201
    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    sget-boolean v0, Lcom/android/tools/r8/internal/AT;->a:Z

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 203
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 204
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    move-object v2, p3

    :cond_6
    if-ge v1, p1, :cond_7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 v1, v1, 0x1

    check-cast p3, Lcom/android/tools/r8/internal/xw0;

    .line 205
    iget-object v3, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v3, v3, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    .line 206
    invoke-interface {p4, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lcom/android/tools/r8/internal/Iw0;

    .line 207
    sget-object v7, Lcom/android/tools/r8/internal/Bo0;->b:Lcom/android/tools/r8/internal/Ao0;

    .line 208
    sget-object v8, Lcom/android/tools/r8/internal/b2;->a:Lcom/android/tools/r8/internal/b2;

    const/4 v5, 0x0

    move-object v6, p2

    .line 209
    invoke-virtual/range {v2 .. v8}, Lcom/android/tools/r8/internal/Q00;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Q00;

    move-result-object v2

    .line 210
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    instance-of p3, v2, Lcom/android/tools/r8/internal/zv0;

    if-eqz p3, :cond_6

    :cond_7
    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Q00;
    .locals 9

    .line 12
    sget-boolean v0, Lcom/android/tools/r8/internal/o3;->h:Z

    if-nez v0, :cond_1

    if-eq p1, p3, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v2, v2, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v3, v3, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 17
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    .line 18
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 19
    iget-object v7, p0, Lcom/android/tools/r8/internal/o3;->c:Lcom/android/tools/r8/graph/H5;

    new-instance v8, Lcom/android/tools/r8/internal/Tn1;

    invoke-direct {v8, p0, p3, p2}, Lcom/android/tools/r8/internal/Tn1;-><init>(Lcom/android/tools/r8/internal/o3;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/F5;)V

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    .line 20
    invoke-virtual/range {v2 .. v8}, Lcom/android/tools/r8/internal/o3;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/G5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p3

    if-eqz p3, :cond_3

    return-object p3

    .line 21
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 22
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/android/tools/r8/internal/ig;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1

    .line 25
    :cond_4
    iget-object p3, p0, Lcom/android/tools/r8/internal/o3;->a:Lcom/android/tools/r8/internal/M1;

    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object p3

    .line 26
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 27
    new-instance p3, Lcom/android/tools/r8/internal/Un1;

    invoke-direct {p3, p0, p1}, Lcom/android/tools/r8/internal/Un1;-><init>(Lcom/android/tools/r8/internal/o3;Lcom/android/tools/r8/internal/xw0;)V

    .line 28
    iget-object v1, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/F0;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 29
    iget-object v1, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    .line 30
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 31
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/Q30;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Q30;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 33
    new-instance p3, Lcom/android/tools/r8/internal/Nm0;

    invoke-direct {p3, v2}, Lcom/android/tools/r8/internal/Nm0;-><init>(Lcom/android/tools/r8/graph/l1;)V

    goto :goto_1

    .line 34
    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/Mm0;

    invoke-direct {v1, v2, p3}, Lcom/android/tools/r8/internal/Mm0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/Q30;)V

    move-object p3, v1

    goto :goto_1

    .line 35
    :cond_6
    sget p3, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p3, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    .line 36
    :cond_7
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    .line 39
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    .line 40
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 41
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    .line 42
    invoke-static {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/Ix0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;

    move-result-object p1

    .line 43
    sget-object p2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {p3, p1, p2}, Lcom/android/tools/r8/internal/lg;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1

    :cond_8
    if-nez v0, :cond_a

    .line 44
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 46
    :cond_a
    :goto_2
    invoke-static {p3}, Lcom/android/tools/r8/internal/ug;->a(Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Q30;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/o3;->c:Lcom/android/tools/r8/graph/H5;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/R30;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Q30;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Q5;
    .locals 2

    .line 48
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 49
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/p3;->d:Lcom/android/tools/r8/internal/bX;

    .line 51
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object p2

    const/4 v1, 0x1

    .line 52
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result p2

    .line 53
    invoke-virtual {v0, p3, p2}, Lcom/android/tools/r8/internal/bX;->a(Lcom/android/tools/r8/graph/H5;I)Lcom/android/tools/r8/internal/aX;

    move-result-object p2

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Q5;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/ZC;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result p1

    if-nez p1, :cond_1

    return-object p2

    .line 55
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Zn1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Zn1;-><init>()V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->R()Lcom/android/tools/r8/internal/ew;

    move-result-object p2

    .line 57
    iget-object v0, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    check-cast p2, Lcom/android/tools/r8/internal/hw;

    invoke-virtual {p2, v0, p3}, Lcom/android/tools/r8/internal/hw;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/D3;->o()Lcom/android/tools/r8/graph/F5;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/p3;->c:Lcom/android/tools/r8/internal/Sw;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Sw;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/Pw;

    move-result-object p2

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Q5;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/ZC;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result p1

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/G5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/ZC;
    .locals 8

    if-eq p3, p4, :cond_2

    .line 60
    sget-boolean p2, Lcom/android/tools/r8/internal/o3;->h:Z

    if-nez p2, :cond_1

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 61
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p3, p5}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Q5;

    move-result-object p1

    return-object p1

    .line 62
    :cond_2
    sget-object p4, Lcom/android/tools/r8/internal/D4;->a:Lcom/android/tools/r8/internal/D4;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    sget-object v0, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {p3, p4, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    .line 64
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    iget-object p2, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object p2, p2, Lcom/android/tools/r8/internal/p3;->d:Lcom/android/tools/r8/internal/bX;

    .line 66
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object p4

    const/4 p6, 0x1

    .line 67
    invoke-virtual {p4, p6}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result p4

    .line 68
    invoke-virtual {p2, p5, p4}, Lcom/android/tools/r8/internal/bX;->a(Lcom/android/tools/r8/graph/H5;I)Lcom/android/tools/r8/internal/aX;

    move-result-object p2

    .line 69
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Q5;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/ZC;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/internal/ZC;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/ZC;

    move-result-object p1

    return-object p1

    .line 70
    :cond_3
    new-instance v0, Lcom/android/tools/r8/internal/Zn1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Zn1;-><init>()V

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 71
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->R()Lcom/android/tools/r8/internal/ew;

    move-result-object p2

    .line 72
    iget-object p4, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object p4, p4, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    move-object p6, p2

    check-cast p6, Lcom/android/tools/r8/internal/hw;

    invoke-virtual {p6, p4, p5}, Lcom/android/tools/r8/internal/hw;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/D3;->o()Lcom/android/tools/r8/graph/F5;

    move-result-object p4

    if-nez p4, :cond_4

    return-object v1

    .line 73
    :cond_4
    move-object p6, p2

    check-cast p6, Lcom/android/tools/r8/internal/zE;

    .line 74
    instance-of p6, p6, Lcom/android/tools/r8/internal/bE;

    if-eqz p6, :cond_5

    .line 75
    invoke-interface {p2}, Lcom/android/tools/r8/internal/ew;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/bE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 76
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Q5;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 77
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Q5;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/ZC;

    move-result-object p6

    invoke-virtual {p2, p6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_5

    .line 78
    new-instance p1, Lcom/android/tools/r8/internal/XD;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/l1;

    invoke-direct {p1, p2, p3}, Lcom/android/tools/r8/internal/XD;-><init>(Lcom/android/tools/r8/internal/Q5;Lcom/android/tools/r8/graph/l1;)V

    return-object p1

    .line 79
    :cond_5
    iget-object p2, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object p2, p2, Lcom/android/tools/r8/internal/p3;->c:Lcom/android/tools/r8/internal/Sw;

    .line 80
    invoke-virtual {p2, p4}, Lcom/android/tools/r8/internal/Sw;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/Pw;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p5}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Q5;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/ZC;

    move-result-object p1

    .line 81
    invoke-static {p1, p3}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/internal/ZC;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/ZC;

    move-result-object p1

    return-object p1

    .line 82
    :cond_6
    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 83
    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object p1

    invoke-virtual {p0, p1, p6}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/internal/f60;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/FB;

    move-result-object p1

    return-object p1

    :cond_7
    if-eqz p2, :cond_9

    .line 84
    iget-object p1, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object p1, p1, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->p()Lcom/android/tools/r8/internal/Mf;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Mf;->a(Lcom/android/tools/r8/graph/D5;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 85
    iget-object p1, p0, Lcom/android/tools/r8/internal/o3;->f:Lcom/android/tools/r8/internal/Lf;

    if-nez p1, :cond_8

    .line 86
    new-instance p1, Lcom/android/tools/r8/internal/Lf;

    iget-object p2, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v3, p2, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    iget-object p2, p0, Lcom/android/tools/r8/internal/o3;->b:Lcom/android/tools/r8/internal/fB;

    .line 87
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    iget-object p2, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v5, p2, Lcom/android/tools/r8/internal/p3;->c:Lcom/android/tools/r8/internal/Sw;

    iget-object v6, p2, Lcom/android/tools/r8/internal/p3;->d:Lcom/android/tools/r8/internal/bX;

    iget-object v7, p0, Lcom/android/tools/r8/internal/o3;->e:Lcom/android/tools/r8/internal/S50;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/internal/Lf;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Sw;Lcom/android/tools/r8/internal/bX;Lcom/android/tools/r8/internal/S50;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/o3;->f:Lcom/android/tools/r8/internal/Lf;

    .line 88
    :cond_8
    iget-object p1, p0, Lcom/android/tools/r8/internal/o3;->f:Lcom/android/tools/r8/internal/Lf;

    .line 89
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/Pf;->a(Lcom/android/tools/r8/internal/GE;)Lcom/android/tools/r8/internal/Vf;

    move-result-object p1

    .line 90
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Vf;->i()Z

    move-result p2

    if-nez p2, :cond_9

    new-instance p2, Lcom/android/tools/r8/internal/ao1;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/ao1;-><init>(Lcom/android/tools/r8/internal/Vf;)V

    const/4 p4, 0x0

    .line 91
    invoke-static {p4, p2}, Lcom/android/tools/r8/internal/at0;->a(ILjava/util/function/Consumer;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 92
    iget-object p2, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object p2, p2, Lcom/android/tools/r8/internal/p3;->k:Lcom/android/tools/r8/internal/aD;

    .line 93
    invoke-static {}, Lcom/android/tools/r8/internal/B60$b;->t()Lcom/android/tools/r8/internal/B60$b$a;

    move-result-object p4

    iget-object p5, p0, Lcom/android/tools/r8/internal/o3;->b:Lcom/android/tools/r8/internal/fB;

    .line 94
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p4, p5}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/B60$b$a;

    .line 95
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result p3

    invoke-virtual {p4, p3}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/B60$b$a;

    .line 96
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/B60$b$a;->d()Lcom/android/tools/r8/internal/B60$b;

    move-result-object p3

    .line 97
    iget-object p2, p2, Lcom/android/tools/r8/internal/aD;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 98
    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_9
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Q5;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/ZC;
    .locals 6

    .line 139
    invoke-interface {p2}, Lcom/android/tools/r8/internal/ZC;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object p3, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    invoke-interface {p2}, Lcom/android/tools/r8/internal/ZC;->D()Lcom/android/tools/r8/internal/Pw;

    move-result-object v0

    .line 141
    iget-object v0, v0, Lcom/android/tools/r8/internal/Pw;->a:Lcom/android/tools/r8/graph/l1;

    .line 142
    iget-object v1, p3, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    .line 143
    invoke-interface {v1, v0}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F0;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object v0

    .line 144
    iget-object v1, p3, Lcom/android/tools/r8/internal/p3;->h:Lcom/android/tools/r8/internal/Mw;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Mw;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object v1

    .line 145
    instance-of v1, v1, Lcom/android/tools/r8/internal/zv0;

    if-eqz v1, :cond_c

    .line 146
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    .line 147
    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 148
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p3, Lcom/android/tools/r8/internal/p3;->i:Lcom/android/tools/r8/internal/f80;

    .line 149
    iget-object p1, p1, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    .line 150
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 151
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 152
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/o3;->h:Z

    if-nez v0, :cond_2

    invoke-interface {p2}, Lcom/android/tools/r8/internal/ZC;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 153
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    invoke-interface {p2}, Lcom/android/tools/r8/internal/ZC;->C()Lcom/android/tools/r8/internal/aX;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    sget-boolean v2, Lcom/android/tools/r8/internal/p3;->l:Z

    if-nez v2, :cond_4

    .line 155
    iget-object v3, v1, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    .line 156
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 157
    :cond_4
    :goto_1
    iget-object v3, v1, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    .line 158
    iget v4, v1, Lcom/android/tools/r8/internal/aX;->b:I

    iget-boolean v5, v1, Lcom/android/tools/r8/internal/aX;->c:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 159
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto/16 :goto_5

    .line 160
    :cond_5
    iget-object p1, v0, Lcom/android/tools/r8/internal/p3;->j:Lcom/android/tools/r8/internal/zX;

    .line 161
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 162
    iget-object v3, v3, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 163
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v3

    if-nez v3, :cond_7

    .line 164
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/p3;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    .line 165
    :cond_6
    iget-object v0, v0, Lcom/android/tools/r8/internal/p3;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    goto :goto_3

    .line 166
    :cond_7
    :goto_2
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    .line 167
    :goto_3
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/zX;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/wX;

    move-result-object p1

    .line 168
    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->c()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 169
    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->j()Lcom/android/tools/r8/internal/sg;

    move-result-object p1

    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/sg;->a(Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/wX;

    move-result-object p1

    .line 170
    :cond_8
    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->f()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 171
    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->b()Lcom/android/tools/r8/internal/ng;

    move-result-object p1

    .line 172
    iget p3, v1, Lcom/android/tools/r8/internal/aX;->b:I

    .line 173
    iget-object p1, p1, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    .line 174
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Iw0;

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    instance-of p1, p1, Lcom/android/tools/r8/internal/zv0;

    goto :goto_5

    :cond_9
    if-nez v2, :cond_b

    .line 177
    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->g()Z

    move-result p3

    if-nez p3, :cond_b

    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result p3

    if-eqz p3, :cond_a

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 178
    :cond_b
    :goto_4
    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result p1

    :goto_5
    if-eqz p1, :cond_c

    .line 179
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    :cond_c
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/og;Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/pg;
    .locals 13

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v0, p5

    .line 331
    new-instance v9, Ljava/util/ArrayList;

    .line 332
    iget-object v1, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 333
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p3, :cond_0

    .line 334
    iget-object v1, v7, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/p3;->f:Lcom/android/tools/r8/internal/D3;

    .line 335
    iget-object v1, v1, Lcom/android/tools/r8/internal/D3;->b:Ljava/util/IdentityHashMap;

    .line 336
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    .line 337
    sget-object v3, Lcom/android/tools/r8/internal/iX;->b:Lcom/android/tools/r8/internal/iX;

    .line 338
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/iX;

    goto :goto_0

    .line 339
    :cond_0
    sget-object v1, Lcom/android/tools/r8/internal/iX;->b:Lcom/android/tools/r8/internal/iX;

    .line 340
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_6

    .line 341
    sget-boolean v2, Lcom/android/tools/r8/internal/o3;->h:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 342
    :cond_2
    :goto_1
    iget-object v1, v1, Lcom/android/tools/r8/internal/iX;->a:Lcom/android/tools/r8/internal/dH;

    .line 343
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/internal/p2;->a:Lcom/android/tools/r8/internal/p2;

    .line 344
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/s50;

    .line 345
    move-object/from16 v2, p4

    check-cast v2, Lcom/android/tools/r8/internal/xX;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    instance-of v2, v2, Lcom/android/tools/r8/internal/ng;

    if-eqz v2, :cond_3

    .line 347
    invoke-interface/range {p4 .. p4}, Lcom/android/tools/r8/internal/wX;->b()Lcom/android/tools/r8/internal/ng;

    move-result-object v2

    .line 348
    iget-object v2, v2, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    .line 349
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Iw0;

    .line 350
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    instance-of v2, v2, Lcom/android/tools/r8/internal/zv0;

    if-eqz v2, :cond_3

    .line 352
    sget-object v0, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    goto :goto_2

    .line 353
    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/s50;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 354
    sget-object v0, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    goto :goto_2

    .line 355
    :cond_4
    iget-object v1, v7, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    .line 356
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 357
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v3

    .line 358
    invoke-static {v1, v0, v2, v3}, Lcom/android/tools/r8/internal/Ix0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;

    move-result-object v1

    .line 359
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 360
    sget-object v0, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    goto :goto_2

    .line 361
    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/wg;

    .line 362
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/wg;-><init>(Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)V

    move-object v0, v1

    .line 363
    :goto_2
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v10

    goto :goto_3

    :cond_6
    move v12, v11

    .line 364
    :goto_3
    iget-object v0, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 365
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_7

    .line 366
    invoke-virtual {p1, v12}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move v3, v12

    move-object v4, v6

    move-object/from16 v5, p4

    .line 367
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/og;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Q00;

    move-result-object v0

    .line 368
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 369
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->v2()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    move v10, v11

    .line 370
    :cond_9
    :goto_4
    invoke-static {v9, v10}, Lcom/android/tools/r8/internal/ng;->a(Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 371
    sget-object v0, Lcom/android/tools/r8/internal/tv0;->a:Lcom/android/tools/r8/internal/tv0;

    return-object v0

    .line 372
    :cond_a
    new-instance v0, Lcom/android/tools/r8/internal/ng;

    invoke-direct {v0, v9, v10}, Lcom/android/tools/r8/internal/ng;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/internal/wX;)Lcom/android/tools/r8/internal/wX;
    .locals 8

    .line 275
    sget-boolean v0, Lcom/android/tools/r8/internal/o3;->h:Z

    if-nez v0, :cond_1

    invoke-interface {p4}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 276
    :cond_1
    :goto_0
    const-string v1, "Compute method state for invoke"

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 277
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 278
    iget-object v1, v1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 279
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v1

    if-nez v1, :cond_c

    .line 280
    iget-object v1, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    .line 281
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 282
    iget-object v1, v1, Lcom/android/tools/r8/internal/p3;->e:Ljava/util/Set;

    .line 283
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    if-nez v0, :cond_3

    .line 284
    invoke-interface {p4}, Lcom/android/tools/r8/internal/wX;->g()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p4}, Lcom/android/tools/r8/internal/wX;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 285
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v1

    .line 286
    invoke-interface {p4}, Lcom/android/tools/r8/internal/wX;->i()Lcom/android/tools/r8/internal/tg;

    move-result-object p1

    .line 287
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    iget-object v2, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v2, v2, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p4, v2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/zt;

    move-result-object v5

    .line 288
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zt;->k()Z

    move-result p4

    if-eqz p4, :cond_6

    if-nez v0, :cond_5

    .line 289
    iget-object p1, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object p1, p1, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ$p;->O:Z

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "b/250634405"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 290
    :cond_5
    :goto_2
    sget-object p1, Lcom/android/tools/r8/internal/s7;->a:Lcom/android/tools/r8/internal/s7;

    goto/16 :goto_7

    .line 291
    :cond_6
    iget-object p4, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object p4, p4, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/o3;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1, p4, v2}, Lcom/android/tools/r8/internal/VJ;->d(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    .line 292
    invoke-virtual {p0, p2, v3, v5}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/zt;

    move-result-object p4

    .line 293
    move-object v2, p1

    check-cast v2, Lcom/android/tools/r8/internal/xX;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    instance-of v2, v2, Lcom/android/tools/r8/internal/sg;

    if-eqz v2, :cond_7

    .line 295
    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->j()Lcom/android/tools/r8/internal/sg;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/android/tools/r8/internal/sg;->a(Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/wX;

    move-result-object p1

    goto :goto_3

    .line 296
    :cond_7
    sget-object p1, Lcom/android/tools/r8/internal/s7;->a:Lcom/android/tools/r8/internal/s7;

    .line 297
    :goto_3
    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->c()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v0, :cond_8

    .line 298
    sget-object p1, Lcom/android/tools/r8/internal/tv0;->a:Lcom/android/tools/r8/internal/tv0;

    goto/16 :goto_7

    .line 299
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 300
    :cond_9
    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 301
    sget-object p1, Lcom/android/tools/r8/internal/s7;->a:Lcom/android/tools/r8/internal/s7;

    goto/16 :goto_7

    .line 302
    :cond_a
    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->h()Lcom/android/tools/r8/internal/og;

    move-result-object v4

    move-object v0, p0

    move-object v2, p2

    .line 303
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/og;Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/pg;

    move-result-object p1

    .line 304
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zt;->l()Z

    move-result p2

    if-eqz p2, :cond_b

    move-object p2, p1

    check-cast p2, Lcom/android/tools/r8/internal/xX;

    .line 305
    instance-of p2, p2, Lcom/android/tools/r8/internal/tv0;

    if-eqz p2, :cond_b

    .line 306
    sget-object p1, Lcom/android/tools/r8/internal/tv0;->a:Lcom/android/tools/r8/internal/tv0;

    goto :goto_7

    .line 307
    :cond_b
    new-instance p2, Lcom/android/tools/r8/internal/sg;

    invoke-direct {p2, p4, p1}, Lcom/android/tools/r8/internal/sg;-><init>(Lcom/android/tools/r8/internal/zt;Lcom/android/tools/r8/internal/pg;)V

    move-object p1, p2

    goto :goto_7

    :cond_c
    if-nez v0, :cond_e

    .line 308
    invoke-interface {p4}, Lcom/android/tools/r8/internal/wX;->g()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {p4}, Lcom/android/tools/r8/internal/wX;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 309
    :cond_e
    :goto_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/o3;->c:Lcom/android/tools/r8/graph/H5;

    .line 310
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/VJ;->d(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    .line 311
    invoke-interface {p4}, Lcom/android/tools/r8/internal/wX;->h()Lcom/android/tools/r8/internal/og;

    move-result-object v6

    .line 312
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result p4

    if-eqz p4, :cond_f

    const/4 p4, 0x0

    .line 313
    invoke-virtual {p1, p4}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    .line 314
    iget-object v0, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/zt;

    move-result-object p4

    :goto_5
    move-object v7, p4

    goto :goto_6

    :cond_f
    const/4 p4, 0x0

    goto :goto_5

    :goto_6
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 315
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/og;Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/pg;

    move-result-object p1

    .line 316
    :goto_7
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/zt;
    .locals 2

    if-eqz p2, :cond_0

    .line 317
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object p3, p3, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    .line 318
    sget-boolean p3, Lcom/android/tools/r8/internal/xt;->a:Z

    .line 319
    new-instance p3, Lcom/android/tools/r8/internal/kv;

    invoke-direct {p3, p2}, Lcom/android/tools/r8/internal/kv;-><init>(Lcom/android/tools/r8/internal/de;)V

    goto :goto_0

    .line 320
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/zt;->b(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/zt;

    move-result-object p3

    .line 321
    :goto_0
    sget-boolean p2, Lcom/android/tools/r8/internal/o3;->h:Z

    if-nez p2, :cond_2

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 322
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    .line 323
    iget-object v0, v0, Lcom/android/tools/r8/internal/p3;->g:Ljava/util/IdentityHashMap;

    .line 324
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    .line 325
    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected virtual method without root: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 326
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object p1, p1, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    .line 327
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    .line 328
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    .line 329
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/zt;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 330
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    return-object p3
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/F5;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/p3;->i:Lcom/android/tools/r8/internal/f80;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/f80;->a(Lcom/android/tools/r8/graph/F5;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ns0;)V
    .locals 4

    .line 270
    const-string v0, "Add method state"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 271
    iget-object v0, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v1, v0, Lcom/android/tools/r8/internal/p3;->j:Lcom/android/tools/r8/internal/zX;

    iget-object v0, v0, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    .line 272
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/co1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/tools/r8/internal/co1;-><init>(Lcom/android/tools/r8/internal/o3;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ns0;)V

    .line 273
    invoke-virtual {v1, v0, v2, v3, p3}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/A2;Ljava/util/function/Function;Lcom/android/tools/r8/internal/ns0;)V

    .line 274
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/ns0;)V
    .locals 5

    .line 244
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->f:Z

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/o3;->c:Lcom/android/tools/r8/graph/H5;

    .line 250
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/VJ;->f(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 251
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    .line 252
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4$c;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 254
    sget-boolean p1, Lcom/android/tools/r8/internal/o3;->h:Z

    if-nez p1, :cond_b

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 255
    :cond_5
    iget-object v2, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 256
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 257
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    .line 258
    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v3

    if-ne v2, v3, :cond_b

    .line 259
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v3

    if-eq v2, v3, :cond_6

    goto :goto_1

    .line 260
    :cond_6
    instance-of v2, p1, Lcom/android/tools/r8/internal/TJ;

    if-eqz v2, :cond_7

    .line 261
    iget-object v2, v0, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    .line 262
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    .line 263
    :cond_7
    instance-of v2, p1, Lcom/android/tools/r8/internal/hK;

    if-eqz v2, :cond_a

    .line 264
    iget-object v2, p0, Lcom/android/tools/r8/internal/o3;->c:Lcom/android/tools/r8/graph/H5;

    .line 265
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v3, v3, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/graph/Z4;->c(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_1

    .line 266
    :cond_8
    instance-of v2, v0, Lcom/android/tools/r8/graph/H5;

    if-eqz v2, :cond_9

    .line 267
    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    goto :goto_0

    .line 268
    :cond_9
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected super target of a non-library override to be a program method (resolved program method: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", super non-program method: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 269
    :cond_a
    :goto_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ns0;)V

    :cond_b
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ww;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/ns0;)V
    .locals 7

    .line 1
    const-string v0, "Add field state"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v1, v0, Lcom/android/tools/r8/internal/p3;->h:Lcom/android/tools/r8/internal/Mw;

    new-instance v3, Lcom/android/tools/r8/internal/Rn1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Rn1;-><init>(Lcom/android/tools/r8/internal/o3;Lcom/android/tools/r8/internal/ww;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/ns0;)V

    new-instance v5, Lcom/android/tools/r8/internal/Vn1;

    invoke-direct {v5, p0, p2}, Lcom/android/tools/r8/internal/Vn1;-><init>(Lcom/android/tools/r8/internal/o3;Lcom/android/tools/r8/graph/F5;)V

    new-instance v6, Lcom/android/tools/r8/internal/Wn1;

    invoke-direct {v6, p0, p2}, Lcom/android/tools/r8/internal/Wn1;-><init>(Lcom/android/tools/r8/internal/o3;Lcom/android/tools/r8/graph/F5;)V

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Mw;->a(Lcom/android/tools/r8/graph/F5;Ljava/util/function/Supplier;Lcom/android/tools/r8/internal/ns0;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Q00;

    .line 3
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/G5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Q00;
    .locals 2

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/o3;->h:Z

    if-nez v0, :cond_1

    if-eq p3, p4, :cond_1

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p6}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/G5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/ZC;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 8
    invoke-interface {p2}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result p4

    if-nez p4, :cond_8

    if-nez v0, :cond_3

    .line 9
    invoke-interface {p2}, Lcom/android/tools/r8/internal/ZC;->d()Z

    move-result p3

    if-nez p3, :cond_3

    .line 10
    invoke-interface {p2}, Lcom/android/tools/r8/internal/ZC;->a()Z

    move-result p3

    if-nez p3, :cond_3

    .line 11
    invoke-interface {p2}, Lcom/android/tools/r8/internal/ZC;->t()Z

    move-result p3

    if-nez p3, :cond_3

    .line 12
    invoke-interface {p2}, Lcom/android/tools/r8/internal/ZC;->n()Z

    move-result p3

    if-nez p3, :cond_3

    .line 13
    invoke-interface {p2}, Lcom/android/tools/r8/internal/ZC;->v()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_4

    .line 16
    new-instance p1, Lcom/android/tools/r8/internal/ig;

    .line 17
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3, p4}, Ljava/util/HashSet;-><init>(I)V

    .line 18
    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->a()Lcom/android/tools/r8/internal/p10;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lcom/android/tools/r8/internal/ig;-><init>(Lcom/android/tools/r8/internal/p10;Ljava/util/Set;)V

    return-object p1

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 21
    new-instance p1, Lcom/android/tools/r8/internal/lg;

    .line 22
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3, p4}, Ljava/util/HashSet;-><init>(I)V

    .line 23
    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-direct {p1, p3}, Lcom/android/tools/r8/internal/lg;-><init>(Ljava/util/HashSet;)V

    return-object p1

    .line 25
    :cond_5
    sget-boolean p3, Lcom/android/tools/r8/internal/yg;->d:Z

    if-nez p3, :cond_7

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_7
    :goto_2
    new-instance p1, Lcom/android/tools/r8/internal/ug;

    .line 27
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3, p4}, Ljava/util/HashSet;-><init>(I)V

    .line 28
    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    sget p2, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p2, Lcom/android/tools/r8/internal/A7;->b:Lcom/android/tools/r8/internal/A7;

    invoke-direct {p1, p2, p3}, Lcom/android/tools/r8/internal/ug;-><init>(Lcom/android/tools/r8/internal/F1;Ljava/util/Set;)V

    return-object p1

    .line 30
    :cond_8
    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 31
    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p5, p6}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/og;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Q00;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p6

    move-object v5, p5

    move-object v6, p4

    .line 32
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/og;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/ww;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/Q00;
    .locals 1

    .line 1
    const-string v0, "Compute field state for field-put"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/internal/ww;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1, p2, p1}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    .line 4
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Q00;
    .locals 0

    .line 5
    invoke-virtual {p0, p3, p2, p1}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1
.end method
