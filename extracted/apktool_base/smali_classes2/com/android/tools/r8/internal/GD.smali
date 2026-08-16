.class public final Lcom/android/tools/r8/internal/GD;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic p:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/fB;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public final d:Lcom/android/tools/r8/ir/optimize/W;

.field public final e:Lcom/android/tools/r8/internal/dX;

.field public final f:Lcom/android/tools/r8/graph/H5;

.field public final g:Lcom/android/tools/r8/internal/zE;

.field public h:Lcom/android/tools/r8/internal/xw0;

.field public i:Lcom/android/tools/r8/graph/H2;

.field public j:Lcom/android/tools/r8/internal/Q30;

.field public final k:Ljava/util/IdentityHashMap;

.field public final l:Lcom/android/tools/r8/internal/m80;

.field public final m:Ljava/util/IdentityHashMap;

.field public final n:Ljava/util/ArrayList;

.field public final o:Lcom/android/tools/r8/internal/bd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/W;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zE;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/GD;->k:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/GD;->l:Lcom/android/tools/r8/internal/m80;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/GD;->m:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/GD;->n:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/GD;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/GD;->c:Lcom/android/tools/r8/graph/u1;

    iput-object p3, p0, Lcom/android/tools/r8/internal/GD;->d:Lcom/android/tools/r8/ir/optimize/W;

    iput-object p5, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    iput-object p6, p0, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    iput-object p4, p0, Lcom/android/tools/r8/internal/GD;->e:Lcom/android/tools/r8/internal/dX;

    new-instance p1, Lcom/android/tools/r8/internal/bd;

    invoke-virtual {p6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/bd;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/GD;->o:Lcom/android/tools/r8/internal/bd;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 10
    new-instance v1, Lcom/android/tools/r8/internal/uF0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/uF0;-><init>(Lcom/android/tools/r8/internal/zE;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 13
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 265
    iget-object v0, p1, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    .line 266
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 267
    iput-object p0, p1, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/sR;)Lcom/android/tools/r8/internal/FE;
    .locals 12

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object p1, p0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    .line 16
    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_1

    .line 17
    iget-object v0, p1, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    .line 18
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    .line 20
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/f60;

    return-object p1

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    .line 22
    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_39

    .line 23
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 24
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    instance-of v4, v3, Lcom/android/tools/r8/internal/C4;

    if-nez v4, :cond_30

    .line 27
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_c

    .line 28
    :cond_4
    instance-of v4, v3, Lcom/android/tools/r8/internal/bE;

    if-eqz v4, :cond_7

    .line 29
    iget-object v4, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 30
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->S()Lcom/android/tools/r8/internal/hw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v4

    .line 31
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/D3;->y()Z

    move-result v5

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    iget-object v6, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 32
    invoke-virtual {v4, v5, v6}, Lcom/android/tools/r8/graph/J4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_e

    .line 33
    :cond_5
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object v4

    if-eqz v4, :cond_36

    .line 34
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_e

    .line 35
    :cond_6
    iget-object v5, p0, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    instance-of v5, v5, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v5, :cond_3

    .line 37
    iget-object v5, p0, Lcom/android/tools/r8/internal/GD;->j:Lcom/android/tools/r8/internal/Q30;

    iget-object v6, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v7, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    new-instance v8, Lcom/android/tools/r8/internal/AF0;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/AF0;-><init>()V

    .line 38
    invoke-virtual {v5, v6, v4, v7, v8}, Lcom/android/tools/r8/internal/Q30;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Predicate;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_e

    .line 39
    :cond_7
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 40
    iget-object v4, p0, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    instance-of v4, v4, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v4, :cond_8

    goto/16 :goto_e

    .line 42
    :cond_8
    iget-object v4, p0, Lcom/android/tools/r8/internal/GD;->o:Lcom/android/tools/r8/internal/bd;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/rE;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 43
    iget-object v6, v4, Lcom/android/tools/r8/internal/bd;->a:Ljava/util/Set;

    .line 44
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    return-object v3

    .line 45
    :cond_9
    iget-object v6, v4, Lcom/android/tools/r8/internal/bd;->b:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v4, v4, Lcom/android/tools/r8/internal/bd;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v5}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v4, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 48
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/shaking/i;

    .line 49
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->S()Lcom/android/tools/r8/internal/hw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object v4

    if-eqz v4, :cond_36

    .line 51
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_e

    .line 52
    :cond_a
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 53
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v4

    .line 54
    iget-object v5, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 55
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/shaking/i;

    .line 56
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/VJ;->A2()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v5

    .line 57
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 58
    iget-object v6, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    iget-object v7, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 59
    invoke-virtual {v5, v6, v7}, Lcom/android/tools/r8/graph/J4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v6

    if-eqz v6, :cond_b

    goto/16 :goto_e

    .line 60
    :cond_b
    iget-object v6, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v7, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v4, v6, v7}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v6

    if-nez v6, :cond_c

    goto/16 :goto_e

    .line 61
    :cond_c
    instance-of v7, v6, Lcom/android/tools/r8/graph/A4;

    if-eqz v7, :cond_e

    .line 62
    invoke-interface {v6}, Lcom/android/tools/r8/graph/o0;->Z()Lcom/android/tools/r8/graph/A4;

    move-result-object v7

    .line 63
    iget-object v8, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 64
    iget-object v8, v8, Lcom/android/tools/r8/graph/y;->z:Lcom/android/tools/r8/internal/bS;

    .line 65
    invoke-virtual {v8, v4, v7}, Lcom/android/tools/r8/internal/bS;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/A4;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 66
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result v7

    if-nez v7, :cond_e

    goto/16 :goto_2

    .line 67
    :cond_d
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    iget-object v8, p0, Lcom/android/tools/r8/internal/GD;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v8, v8, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object v8, v8, Lcom/android/tools/r8/graph/j2;->f:Lcom/android/tools/r8/graph/A2;

    if-ne v7, v8, :cond_e

    .line 68
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result v7

    if-nez v7, :cond_e

    goto/16 :goto_2

    .line 69
    :cond_e
    invoke-interface {v6}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v6

    .line 70
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v7

    if-nez v7, :cond_f

    goto/16 :goto_e

    .line 71
    :cond_f
    sget-boolean v7, Lcom/android/tools/r8/internal/GD;->p:Z

    if-nez v7, :cond_11

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v8

    iget-object v9, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    iget-object v10, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 72
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/j;

    invoke-static {v8, v9, v10, v11}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object v8

    .line 73
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_3

    .line 74
    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 75
    :cond_11
    :goto_3
    iget-object v8, p0, Lcom/android/tools/r8/internal/GD;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v3, v8}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/u1;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 76
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v5

    .line 77
    iget-object v8, p0, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    .line 78
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v8

    if-eqz v8, :cond_36

    iget-object v8, p0, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    if-ne v8, v9, :cond_36

    if-nez v7, :cond_13

    .line 79
    iget-object v8, p0, Lcom/android/tools/r8/internal/GD;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v8

    if-eqz v8, :cond_12

    goto :goto_4

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_13
    :goto_4
    if-nez v7, :cond_15

    .line 80
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v7

    if-eqz v7, :cond_14

    goto :goto_5

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 81
    :cond_15
    :goto_5
    iget-object v7, p0, Lcom/android/tools/r8/internal/GD;->o:Lcom/android/tools/r8/internal/bd;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    .line 82
    iget-object v7, v7, Lcom/android/tools/r8/internal/bd;->a:Ljava/util/Set;

    .line 83
    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    goto/16 :goto_9

    .line 84
    :cond_16
    iget-object v7, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v8, 0x1

    .line 85
    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_18

    .line 86
    iget-object v9, p0, Lcom/android/tools/r8/internal/GD;->o:Lcom/android/tools/r8/internal/bd;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    .line 87
    iget-object v11, v9, Lcom/android/tools/r8/internal/bd;->a:Ljava/util/Set;

    .line 88
    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    goto/16 :goto_9

    .line 89
    :cond_17
    iget-object v11, v9, Lcom/android/tools/r8/internal/bd;->b:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v9, v9, Lcom/android/tools/r8/internal/bd;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v9, v10}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 91
    :cond_18
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 92
    iget-object v8, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/nJ;->e()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 93
    iget-object v8, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/shaking/i;

    iget-object v9, p0, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v7

    if-nez v7, :cond_1a

    goto/16 :goto_9

    .line 94
    :cond_19
    iget-object v8, p0, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    if-eq v8, v7, :cond_1a

    goto/16 :goto_9

    .line 95
    :cond_1a
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/j1;

    .line 96
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 97
    iget-object v7, v7, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 98
    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/TW;->a(Lcom/android/tools/r8/internal/QJ;)Lcom/android/tools/r8/internal/fE;

    move-result-object v5

    .line 99
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fE;->g()Z

    move-result v7

    if-nez v7, :cond_1b

    goto :goto_9

    .line 100
    :cond_1b
    iget-object v7, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    iget-object v8, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v8, v7, v6}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)Z

    move-result v7

    if-nez v7, :cond_1c

    goto :goto_9

    .line 101
    :cond_1c
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fE;->c()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 102
    :goto_7
    iget-object v7, p0, Lcom/android/tools/r8/internal/GD;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1$c;->f:Lcom/android/tools/r8/graph/A2;

    if-eq v5, v7, :cond_24

    if-nez v5, :cond_1d

    goto :goto_9

    .line 103
    :cond_1d
    iget-object v7, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v8, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    .line 104
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    iget-object v9, v5, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v8

    .line 106
    iget-object v10, v8, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v9, v10, :cond_1e

    goto :goto_8

    :cond_1e
    invoke-interface {v7, v9}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v8

    .line 107
    :goto_8
    invoke-static {v8}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v7

    if-nez v7, :cond_1f

    goto :goto_9

    .line 108
    :cond_1f
    invoke-virtual {v7, v5}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    if-nez v5, :cond_20

    goto :goto_9

    .line 109
    :cond_20
    iget-object v7, p0, Lcom/android/tools/r8/internal/GD;->e:Lcom/android/tools/r8/internal/dX;

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/dX;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v7

    if-eqz v7, :cond_21

    goto :goto_9

    .line 110
    :cond_21
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/j1;

    .line 111
    iget-object v8, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v9, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    .line 112
    sget-object v10, Lcom/android/tools/r8/internal/c10;->a:Lcom/android/tools/r8/internal/c10;

    .line 113
    invoke-virtual {v7, v8, v9, v10}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Cx0;)Z

    move-result v8

    if-nez v8, :cond_22

    goto :goto_9

    .line 114
    :cond_22
    iget-object v8, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    iget-object v9, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v9, v8, v5}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)Z

    move-result v5

    if-nez v5, :cond_23

    :goto_9
    move-object v5, v2

    goto :goto_a

    .line 115
    :cond_23
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 116
    iget-object v5, v7, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 117
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/TW;->m()Lcom/android/tools/r8/internal/fE;

    move-result-object v5

    .line 118
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fE;->c()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    goto :goto_7

    .line 119
    :cond_24
    new-instance v5, Lcom/android/tools/r8/ir/optimize/T;

    iget-object v7, p0, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    invoke-direct {v5, v7, v6}, Lcom/android/tools/r8/ir/optimize/T;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V

    :goto_a
    if-eqz v5, :cond_36

    .line 120
    iget-object v3, p0, Lcom/android/tools/r8/internal/GD;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 121
    :cond_25
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v8

    if-eqz v8, :cond_26

    iget-object v8, p0, Lcom/android/tools/r8/internal/GD;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v4, v8}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/u1;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 122
    :cond_26
    instance-of v8, v4, Lcom/android/tools/r8/internal/TJ;

    if-nez v8, :cond_27

    .line 123
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v8

    if-nez v8, :cond_27

    .line 124
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v8

    if-nez v8, :cond_27

    goto/16 :goto_e

    .line 125
    :cond_27
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v8

    if-eqz v8, :cond_28

    .line 126
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    .line 127
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v8

    .line 128
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v8

    .line 129
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v8

    if-eqz v8, :cond_28

    goto/16 :goto_e

    .line 130
    :cond_28
    iget-object v8, p1, Lcom/android/tools/r8/internal/sR;->b:Ljava/util/function/Supplier;

    .line 131
    invoke-virtual {p1, v8}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v8

    .line 132
    check-cast v8, Lcom/android/tools/r8/ir/optimize/Y;

    .line 133
    iget-object v9, p0, Lcom/android/tools/r8/internal/GD;->b:Lcom/android/tools/r8/internal/fB;

    .line 134
    sget-object v10, Lcom/android/tools/r8/internal/c10;->a:Lcom/android/tools/r8/internal/c10;

    .line 135
    invoke-interface {v8, v9, v5, v6, v10}, Lcom/android/tools/r8/ir/optimize/Y;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Cx0;)Z

    move-result v5

    if-nez v5, :cond_29

    goto/16 :goto_e

    .line 136
    :cond_29
    invoke-virtual {p0, v4, v6, v1}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Ljava/util/Set;)Z

    move-result v5

    if-nez v5, :cond_2a

    goto/16 :goto_e

    .line 137
    :cond_2a
    iget-object v3, p0, Lcom/android/tools/r8/internal/GD;->k:Ljava/util/IdentityHashMap;

    new-instance v5, Lcom/android/tools/r8/ir/optimize/T;

    invoke-direct {v5, v2, v6}, Lcom/android/tools/r8/ir/optimize/T;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v7, :cond_2c

    .line 138
    iget-object v3, p0, Lcom/android/tools/r8/internal/GD;->e:Lcom/android/tools/r8/internal/dX;

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/dX;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_b

    :cond_2b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 139
    :cond_2c
    :goto_b
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    .line 140
    iget-object v3, v3, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 141
    invoke-interface {v3}, Lcom/android/tools/r8/kotlin/p;->l()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v3}, Lcom/android/tools/r8/kotlin/p;->g()Lcom/android/tools/r8/kotlin/n0;

    move-result-object v3

    .line 142
    iget-object v5, v3, Lcom/android/tools/r8/kotlin/n0;->b:Lcom/android/tools/r8/kotlin/O;

    if-eqz v5, :cond_2d

    iget v3, v3, Lcom/android/tools/r8/kotlin/n0;->d:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2d

    goto/16 :goto_2

    .line 143
    :cond_2d
    iget-object v3, p0, Lcom/android/tools/r8/internal/GD;->m:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v4, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 144
    :cond_2e
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 145
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v4

    .line 146
    iget-object v5, v4, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 147
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v4

    if-eqz v4, :cond_2f

    sget-object v4, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-eq v5, v4, :cond_3

    sget-object v4, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-ne v5, v4, :cond_2f

    goto/16 :goto_2

    .line 148
    :cond_2f
    instance-of v4, v3, Lcom/android/tools/r8/internal/So0;

    if-eqz v4, :cond_36

    goto/16 :goto_2

    .line 149
    :cond_30
    :goto_c
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 150
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v4

    .line 151
    iget-object v5, v4, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 152
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v5

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 153
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/shaking/i;

    iget-object v6, p0, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    iget-object v6, v6, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 154
    iget-object v4, v4, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 155
    invoke-virtual {v5, v6, v4}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-nez v4, :cond_31

    goto :goto_e

    .line 156
    :cond_31
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 157
    iget-object v5, p0, Lcom/android/tools/r8/internal/GD;->o:Lcom/android/tools/r8/internal/bd;

    .line 158
    iget-object v5, v5, Lcom/android/tools/r8/internal/bd;->a:Ljava/util/Set;

    .line 159
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    goto/16 :goto_2

    .line 160
    :cond_32
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 161
    sget-boolean p1, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez p1, :cond_34

    iget-object p1, v4, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_d

    :cond_33
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 162
    :cond_34
    :goto_d
    iget-object p1, v4, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/f60;

    return-object p1

    .line 163
    :cond_35
    iget-object v5, p0, Lcom/android/tools/r8/internal/GD;->o:Lcom/android/tools/r8/internal/bd;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/bd;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v5

    if-nez v5, :cond_37

    :cond_36
    :goto_e
    return-object v3

    .line 164
    :cond_37
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_38
    move-object v0, v1

    goto/16 :goto_1

    :cond_39
    return-object v2
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/Tw;
    .locals 3

    .line 363
    new-instance v0, Lcom/android/tools/r8/internal/Tw;

    iget-object v1, p0, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    iget-object v2, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/android/tools/r8/internal/Tw;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/y;)V

    return-object v0
.end method

.method public final a()V
    .locals 8

    .line 268
    iget-object v0, p0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    .line 269
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 270
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 272
    new-instance v2, Lcom/android/tools/r8/internal/Yx0;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 273
    iget-object v3, p0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/vF0;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/vF0;-><init>(Lcom/android/tools/r8/internal/Yx0;)V

    invoke-interface {v3, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 274
    iget-object v3, p0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/wF0;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/wF0;-><init>(Lcom/android/tools/r8/internal/Yx0;)V

    invoke-interface {v3, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 275
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 276
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/FE;

    .line 277
    invoke-interface {v3}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 278
    invoke-interface {v3}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v3

    .line 279
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/vF0;

    invoke-direct {v5, v2}, Lcom/android/tools/r8/internal/vF0;-><init>(Lcom/android/tools/r8/internal/Yx0;)V

    invoke-interface {v4, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 281
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/wF0;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/wF0;-><init>(Lcom/android/tools/r8/internal/Yx0;)V

    invoke-interface {v3, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 282
    :cond_1
    invoke-interface {v3}, Lcom/android/tools/r8/internal/GE;->k()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    .line 283
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    instance-of v4, v3, Lcom/android/tools/r8/internal/C4;

    if-nez v4, :cond_2

    .line 285
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    :cond_2
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/vF0;

    invoke-direct {v5, v2}, Lcom/android/tools/r8/internal/vF0;-><init>(Lcom/android/tools/r8/internal/Yx0;)V

    invoke-interface {v4, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 288
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/wF0;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/wF0;-><init>(Lcom/android/tools/r8/internal/Yx0;)V

    invoke-interface {v3, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 289
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/f60;

    .line 290
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    .line 291
    sget-object v6, Lcom/android/tools/r8/internal/D4;->a:Lcom/android/tools/r8/internal/D4;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    sget-object v7, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v5, v6, v7}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 293
    invoke-interface {v5}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v6

    const-string v7, "Unexpected non-trivial phi in method eligible for class inlining"

    if-eqz v6, :cond_6

    invoke-interface {v5}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    .line 294
    :cond_5
    new-instance v0, Lcom/android/tools/r8/internal/bJ;

    invoke-direct {v0, v7}, Lcom/android/tools/r8/internal/bJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_6
    :goto_3
    invoke-interface {v5}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    .line 296
    :cond_7
    new-instance v0, Lcom/android/tools/r8/internal/bJ;

    invoke-direct {v0, v7}, Lcom/android/tools/r8/internal/bJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_8
    iget-object v4, p0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 298
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f60;->f0()V

    goto :goto_1

    .line 299
    :cond_9
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 300
    iget-object v2, p0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    if-ne v1, v2, :cond_a

    goto :goto_4

    .line 301
    :cond_a
    sget-boolean v2, Lcom/android/tools/r8/internal/GD;->p:Z

    if-nez v2, :cond_c

    iget-object v2, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    instance-of v2, v2, Lcom/android/tools/r8/internal/C4;

    if-nez v2, :cond_c

    .line 303
    iget-object v2, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 304
    :cond_c
    :goto_5
    iget-object v2, p0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 305
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-static {v1}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_4

    .line 306
    :cond_d
    sget-boolean v0, Lcom/android/tools/r8/internal/GD;->p:Z

    if-nez v0, :cond_f

    iget-object v1, p0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    sget-object v2, Lcom/android/tools/r8/internal/qj;->a:Lcom/android/tools/r8/internal/qj;

    .line 308
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v3

    .line 309
    invoke-static {v2, v1, v3}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 310
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/xF0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/xF0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_6

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    :goto_6
    if-nez v0, :cond_11

    .line 311
    iget-object v0, p0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    sget-object v1, Lcom/android/tools/r8/internal/qj;->a:Lcom/android/tools/r8/internal/qj;

    .line 313
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v2

    .line 314
    invoke-static {v1, v0, v2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 315
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/yF0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/yF0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_7

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    :goto_7
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/bE;)V
    .locals 4

    .line 364
    iget-object v0, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 365
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 366
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 367
    iget-object v1, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    .line 368
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/bE;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected usage left in method `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "` after inlining: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Ef0;->b(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/bE;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/IdentityHashMap;)V
    .locals 6

    .line 331
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 332
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/tF0;

    invoke-direct {v3, p0, p1}, Lcom/android/tools/r8/internal/tF0;-><init>(Lcom/android/tools/r8/internal/GD;Lcom/android/tools/r8/internal/fB;)V

    .line 333
    invoke-interface {p4, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Tw;

    .line 334
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    invoke-virtual {v2, v3, p2}, Lcom/android/tools/r8/internal/Tw;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/bE;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Tw;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 337
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 338
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    iget-object v3, p0, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    .line 339
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v2

    .line 340
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/D3;->m()Lcom/android/tools/r8/graph/F3;

    move-result-object v2

    .line 341
    sget-boolean v3, Lcom/android/tools/r8/internal/GD;->p:Z

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 342
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/F3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    .line 344
    iget-object v2, v2, Lcom/android/tools/r8/graph/g1;->i:Lcom/android/tools/r8/graph/y5;

    if-eqz v2, :cond_3

    .line 345
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 346
    new-instance v1, Lcom/android/tools/r8/internal/F40;

    invoke-direct {v1, v2, p1, v4}, Lcom/android/tools/r8/internal/F40;-><init>(Lcom/android/tools/r8/graph/y5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    move-object v4, p1

    .line 347
    :cond_3
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 348
    invoke-virtual {p4}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/Tw;

    .line 349
    iget-object v2, p4, Lcom/android/tools/r8/internal/Tw;->f:Ljava/util/IdentityHashMap;

    .line 350
    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 351
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_5

    .line 352
    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 353
    :cond_6
    iget-object p4, p4, Lcom/android/tools/r8/internal/Tw;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {p4}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_7
    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 354
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_7

    .line 355
    invoke-interface {v2, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 356
    :cond_8
    sget-boolean p1, Lcom/android/tools/r8/internal/GD;->p:Z

    if-nez p1, :cond_a

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 357
    :cond_a
    :goto_4
    iget-object p1, p3, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    .line 358
    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->a()Lcom/android/tools/r8/ir/optimize/a;

    move-result-object p1

    .line 360
    iget-object p4, p3, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {p4, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_b
    if-eqz v1, :cond_c

    .line 361
    iget-object p1, p2, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p1

    invoke-virtual {p1, p2, v1, p3}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void

    .line 362
    :cond_c
    invoke-static {p2}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 5

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    iget-object v1, p0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 318
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    instance-of v3, v2, Lcom/android/tools/r8/internal/bE;

    if-eqz v3, :cond_2

    .line 320
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 321
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :cond_1
    invoke-static {v2}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 324
    sget-boolean v2, Lcom/android/tools/r8/internal/GD;->p:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 325
    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object p2, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    .line 326
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected usage left in method `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "` after inlining: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 327
    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/BF0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/BF0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 328
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 329
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/bE;

    .line 330
    invoke-virtual {p0, p1, v4, p2, v1}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/bE;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/IdentityHashMap;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/GD;->e:Lcom/android/tools/r8/internal/dX;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/dX;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 460
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    iget-object v3, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 461
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j;

    .line 462
    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object v1

    .line 463
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 464
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    .line 465
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 466
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/I1;->m:Z

    if-eqz v1, :cond_6

    .line 467
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    iget-object v2, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    .line 468
    sget-object v4, Lcom/android/tools/r8/internal/c10;->a:Lcom/android/tools/r8/internal/c10;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Cx0;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 469
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 470
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 471
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v3

    if-nez v3, :cond_4

    move p1, v0

    goto :goto_0

    .line 472
    :cond_4
    new-instance v3, Lcom/android/tools/r8/ir/optimize/G;

    .line 473
    invoke-direct {v3, v2, v1}, Lcom/android/tools/r8/ir/optimize/G;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    .line 474
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    .line 475
    iget-object p1, v3, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 476
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_5

    return v0

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;ILjava/util/Set;)Z
    .locals 8

    .line 371
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 372
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 373
    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 374
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->l()Lcom/android/tools/r8/internal/Zc;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    invoke-interface {v0, p3, v1, v2}, Lcom/android/tools/r8/internal/Zc;->a(ILcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;)Z

    move-result v1

    if-nez v1, :cond_3

    return v7

    .line 377
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/GD;->p:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    instance-of v1, v1, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 379
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 380
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    iget-object v5, p0, Lcom/android/tools/r8/internal/GD;->j:Lcom/android/tools/r8/internal/Q30;

    iget-object v6, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    move-object v1, v0

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/tools/r8/internal/Zc;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;ILcom/android/tools/r8/internal/Q30;Lcom/android/tools/r8/graph/H5;)Z

    move-result v1

    if-nez v1, :cond_3

    return v7

    .line 381
    :cond_3
    invoke-interface {v0, p3}, Lcom/android/tools/r8/internal/Zc;->a(I)Lcom/android/tools/r8/internal/t50;

    move-result-object v0

    .line 382
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 383
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 384
    iget-object v1, v1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 385
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/TW;->l()Lcom/android/tools/r8/internal/Zc;

    move-result-object v1

    .line 386
    invoke-interface {v1, p3}, Lcom/android/tools/r8/internal/Zc;->a(I)Lcom/android/tools/r8/internal/t50;

    move-result-object v1

    .line 387
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/t50;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 388
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 389
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 390
    iget-object v1, v1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 391
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/TW;->G()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 392
    sget-boolean v1, Lcom/android/tools/r8/internal/GD;->p:Z

    if-nez v1, :cond_5

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    .line 393
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 394
    iget-object p2, p2, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 395
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/TW;->t()I

    move-result p2

    if-ne p2, p3, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 396
    :cond_5
    :goto_1
    sget-object p2, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    goto :goto_2

    .line 397
    :cond_6
    sget-object p2, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    goto :goto_2

    .line 398
    :cond_7
    sget-object p2, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    .line 399
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_5

    .line 400
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 401
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_5

    .line 402
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result p3

    if-nez p3, :cond_f

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result p3

    if-eqz p3, :cond_a

    goto :goto_4

    .line 403
    :cond_a
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result p3

    if-eqz p3, :cond_b

    goto :goto_4

    .line 404
    :cond_b
    sget-boolean p3, Lcom/android/tools/r8/internal/GD;->p:Z

    if-nez p3, :cond_d

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_3

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 405
    :cond_d
    :goto_3
    iget-object p2, p0, Lcom/android/tools/r8/internal/GD;->o:Lcom/android/tools/r8/internal/bd;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/bd;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_4

    .line 406
    :cond_e
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_f
    :goto_4
    return v7

    .line 407
    :cond_10
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    instance-of p1, v0, Lcom/android/tools/r8/internal/t7;

    const/4 p2, 0x1

    if-nez p1, :cond_27

    .line 409
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/t50;->b()Lcom/android/tools/r8/internal/M00;

    move-result-object p1

    .line 410
    iget-object p1, p1, Lcom/android/tools/r8/internal/M00;->c:Lcom/android/tools/r8/internal/EC;

    .line 411
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EC;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    move-object p3, p1

    check-cast p3, Lcom/android/tools/r8/internal/AC;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/AC;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_27

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/AC;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    .line 412
    iget-object p4, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 413
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/shaking/i;

    iget-object v0, p0, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    .line 414
    invoke-virtual {p4, v0, p3}, Lcom/android/tools/r8/graph/j;->h(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p4

    .line 415
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p4

    if-eqz p4, :cond_26

    .line 416
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_11

    .line 417
    :cond_11
    iget-object v0, p4, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object p4, p4, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, p4}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p4

    .line 418
    invoke-interface {p4}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p4

    .line 419
    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_d

    .line 420
    :cond_12
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_d

    .line 421
    :cond_13
    sget-boolean v0, Lcom/android/tools/r8/internal/GD;->p:Z

    if-nez v0, :cond_15

    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_7

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 422
    :cond_15
    :goto_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 423
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    iget-object v2, p0, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v1, v2, p3}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p3

    .line 424
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 425
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/Z4;->s()Lcom/android/tools/r8/graph/j1;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->n1()Z

    move-result p3

    if-nez p3, :cond_16

    goto :goto_8

    .line 426
    :cond_16
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->n1()Z

    move-result p3

    if-nez p3, :cond_17

    goto :goto_8

    .line 427
    :cond_17
    iget-object p3, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    if-ne p3, v1, :cond_18

    :goto_8
    move p3, v7

    goto :goto_a

    .line 428
    :cond_18
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    .line 429
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 430
    iget-object p3, p3, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 431
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/TW;->l()Lcom/android/tools/r8/internal/Zc;

    move-result-object v1

    .line 432
    iget-object p3, p0, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result p3

    const/4 v4, 0x0

    if-eqz p3, :cond_19

    .line 433
    iget-object p3, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    invoke-interface {v1, v4, p3, v2}, Lcom/android/tools/r8/internal/Zc;->a(ILcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;)Z

    move-result p3

    goto :goto_a

    :cond_19
    if-nez v0, :cond_1b

    .line 434
    iget-object p3, p0, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    instance-of p3, p3, Lcom/android/tools/r8/internal/Mo0;

    if-eqz p3, :cond_1a

    goto :goto_9

    .line 436
    :cond_1a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 437
    :cond_1b
    :goto_9
    iget-object v2, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    iget-object v5, p0, Lcom/android/tools/r8/internal/GD;->j:Lcom/android/tools/r8/internal/Q30;

    iget-object v6, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    invoke-interface/range {v1 .. v6}, Lcom/android/tools/r8/internal/Zc;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;ILcom/android/tools/r8/internal/Q30;Lcom/android/tools/r8/graph/H5;)Z

    move-result p3

    :goto_a
    if-nez p3, :cond_1c

    goto :goto_d

    .line 438
    :cond_1c
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    .line 439
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 440
    iget-object p3, p3, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 441
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/TW;->l()Lcom/android/tools/r8/internal/Zc;

    move-result-object p3

    .line 442
    invoke-interface {p3, v7}, Lcom/android/tools/r8/internal/Zc;->a(I)Lcom/android/tools/r8/internal/t50;

    move-result-object p3

    if-nez v0, :cond_1e

    .line 443
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    instance-of v0, p3, Lcom/android/tools/r8/internal/uv0;

    if-nez v0, :cond_1d

    goto :goto_b

    .line 445
    :cond_1d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 446
    :cond_1e
    :goto_b
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    instance-of v0, p3, Lcom/android/tools/r8/internal/t7;

    if-eqz v0, :cond_1f

    goto :goto_c

    .line 448
    :cond_1f
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/t50;->b()Lcom/android/tools/r8/internal/M00;

    move-result-object p3

    .line 449
    iget-object v0, p3, Lcom/android/tools/r8/internal/M00;->c:Lcom/android/tools/r8/internal/EC;

    .line 450
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 451
    iget-boolean p3, p3, Lcom/android/tools/r8/internal/M00;->e:Z

    if-nez p3, :cond_20

    :goto_c
    move p3, p2

    goto :goto_e

    :cond_20
    :goto_d
    move p3, v7

    :goto_e
    if-nez p3, :cond_21

    return v7

    .line 452
    :cond_21
    sget-boolean p3, Lcom/android/tools/r8/internal/GD;->p:Z

    if-nez p3, :cond_23

    iget-object p3, p0, Lcom/android/tools/r8/internal/GD;->e:Lcom/android/tools/r8/internal/dX;

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/dX;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p3

    if-nez p3, :cond_22

    goto :goto_f

    :cond_22
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 453
    :cond_23
    :goto_f
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    .line 454
    iget-object p3, p3, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 455
    invoke-interface {p3}, Lcom/android/tools/r8/kotlin/p;->l()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p3}, Lcom/android/tools/r8/kotlin/p;->g()Lcom/android/tools/r8/kotlin/n0;

    move-result-object p3

    .line 456
    iget-object v0, p3, Lcom/android/tools/r8/kotlin/n0;->b:Lcom/android/tools/r8/kotlin/O;

    if-eqz v0, :cond_24

    iget p3, p3, Lcom/android/tools/r8/kotlin/n0;->d:I

    const/4 v0, 0x3

    if-eq p3, v0, :cond_24

    move p3, p2

    goto :goto_10

    :cond_24
    move p3, v7

    :goto_10
    if-nez p3, :cond_25

    .line 457
    iget-object p3, p0, Lcom/android/tools/r8/internal/GD;->n:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_25
    iget-object p3, p0, Lcom/android/tools/r8/internal/GD;->l:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    goto/16 :goto_6

    :cond_26
    :goto_11
    return v7

    :cond_27
    return p2
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Ljava/util/Set;)Z
    .locals 11

    const/4 v0, 0x0

    move v7, v0

    .line 1
    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_2

    .line 3
    invoke-virtual {p1, v7}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/GD;->o:Lcom/android/tools/r8/internal/bd;

    .line 5
    iget-object v1, v1, Lcom/android/tools/r8/internal/bd;->a:Ljava/util/Set;

    .line 6
    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0, p1, p2, v7, p3}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;ILjava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 8
    :cond_0
    iget-object v9, p0, Lcom/android/tools/r8/internal/GD;->o:Lcom/android/tools/r8/internal/bd;

    new-instance v10, Lcom/android/tools/r8/internal/zF0;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/zF0;-><init>(Lcom/android/tools/r8/internal/GD;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;ILjava/util/Set;)V

    invoke-virtual {v9, v8, v10}, Lcom/android/tools/r8/internal/bd;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/function/BooleanSupplier;)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/JD;)Z
    .locals 13

    move-object v0, p0

    .line 165
    sget-boolean v1, Lcom/android/tools/r8/internal/GD;->p:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 166
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/GD;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v3

    goto/16 :goto_3

    .line 167
    :cond_2
    iget-object v4, v0, Lcom/android/tools/r8/internal/GD;->d:Lcom/android/tools/r8/ir/optimize/W;

    iget-object v6, v0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    iget-object v1, v0, Lcom/android/tools/r8/internal/GD;->k:Ljava/util/IdentityHashMap;

    iget-object v10, v0, Lcom/android/tools/r8/internal/GD;->e:Lcom/android/tools/r8/internal/dX;

    .line 168
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v11

    .line 169
    new-instance v5, Lcom/android/tools/r8/ir/optimize/K;

    .line 170
    iget-object v7, v4, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    .line 171
    invoke-direct {v5, v7, v1}, Lcom/android/tools/r8/ir/optimize/K;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Map;)V

    move-object v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 172
    invoke-virtual/range {v4 .. v11}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/ir/optimize/Y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/JD;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/ns0;)V

    .line 173
    iget-object v1, v0, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 174
    :cond_3
    iget-object v1, v0, Lcom/android/tools/r8/internal/GD;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->clear()V

    .line 175
    iget-object v1, v0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 176
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 177
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v4

    .line 178
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 179
    iget-object v6, v0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    if-eq v5, v6, :cond_5

    goto :goto_1

    .line 180
    :cond_5
    iget-object v5, v0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 181
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/tools/r8/internal/VJ;->f(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 182
    iget-object v6, v5, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v5, v5, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v6, v5}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v5

    .line 183
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    iget-object v7, v0, Lcom/android/tools/r8/internal/GD;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1$c;->f:Lcom/android/tools/r8/graph/A2;

    .line 184
    invoke-virtual {v6, v7}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    .line 185
    :cond_6
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 186
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    iget-object v6, v0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v7, v0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    .line 187
    sget-object v8, Lcom/android/tools/r8/internal/c10;->a:Lcom/android/tools/r8/internal/c10;

    .line 188
    invoke-virtual {v1, v6, v7, v8}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Cx0;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 189
    iget-object v1, v0, Lcom/android/tools/r8/internal/GD;->k:Ljava/util/IdentityHashMap;

    new-instance v6, Lcom/android/tools/r8/ir/optimize/T;

    .line 190
    invoke-interface {v5}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    iget-object v7, v0, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    invoke-direct {v6, v7, v5}, Lcom/android/tools/r8/ir/optimize/T;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V

    .line 191
    invoke-virtual {v1, v4, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 192
    :cond_7
    new-instance v1, Lcom/android/tools/r8/internal/FD;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/FD;-><init>()V

    throw v1

    .line 193
    :cond_8
    new-instance v1, Lcom/android/tools/r8/internal/FD;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/FD;-><init>()V

    throw v1

    .line 194
    :cond_9
    new-instance v1, Lcom/android/tools/r8/internal/FD;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/FD;-><init>()V

    throw v1

    .line 195
    :cond_a
    :goto_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/GD;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 196
    iget-object v4, v0, Lcom/android/tools/r8/internal/GD;->d:Lcom/android/tools/r8/ir/optimize/W;

    iget-object v6, v0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    iget-object v1, v0, Lcom/android/tools/r8/internal/GD;->k:Ljava/util/IdentityHashMap;

    iget-object v10, v0, Lcom/android/tools/r8/internal/GD;->e:Lcom/android/tools/r8/internal/dX;

    .line 197
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v11

    .line 198
    new-instance v5, Lcom/android/tools/r8/ir/optimize/K;

    .line 199
    iget-object v7, v4, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    .line 200
    invoke-direct {v5, v7, v1}, Lcom/android/tools/r8/ir/optimize/K;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Map;)V

    move-object v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 201
    invoke-virtual/range {v4 .. v11}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/ir/optimize/Y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/JD;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/ns0;)V

    .line 202
    :cond_b
    iget-object v1, v0, Lcom/android/tools/r8/internal/GD;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_c
    move v1, v2

    .line 203
    :goto_3
    iget-object v4, v0, Lcom/android/tools/r8/internal/GD;->l:Lcom/android/tools/r8/internal/m80;

    .line 204
    iget-object v4, v4, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 205
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    move v2, v3

    goto/16 :goto_9

    .line 206
    :cond_d
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    .line 207
    iget-object v4, v0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v4

    .line 208
    :goto_4
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_19

    .line 209
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v5

    .line 210
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    .line 211
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    instance-of v7, v6, Lcom/android/tools/r8/internal/C4;

    if-nez v7, :cond_17

    .line 213
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v7

    if-eqz v7, :cond_f

    goto/16 :goto_8

    .line 214
    :cond_f
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 215
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v6

    .line 216
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    sget-object v8, Lcom/android/tools/r8/internal/D4;->a:Lcom/android/tools/r8/internal/D4;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    sget-object v9, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v7, v8, v9}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 218
    iget-object v8, v0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    if-eq v7, v8, :cond_10

    goto :goto_5

    .line 219
    :cond_10
    iget-object v7, v0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 220
    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/VJ;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 221
    iget-object v8, v0, Lcom/android/tools/r8/internal/GD;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v8, v8, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v8, v8, Lcom/android/tools/r8/graph/u1$c;->f:Lcom/android/tools/r8/graph/A2;

    .line 222
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v9

    .line 223
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/A2;

    .line 224
    invoke-virtual {v9, v8}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v8

    if-eqz v8, :cond_11

    goto :goto_5

    .line 225
    :cond_11
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v8

    if-nez v8, :cond_13

    .line 226
    instance-of v8, v6, Lcom/android/tools/r8/internal/hK;

    if-eqz v8, :cond_12

    goto :goto_6

    .line 227
    :cond_12
    iget-object v8, v0, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    .line 228
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v9

    iget-object v10, v0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 229
    invoke-static {v8, v9, v10}, Lcom/android/tools/r8/internal/de;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/de;

    move-result-object v8

    .line 230
    sget-boolean v9, Lcom/android/tools/r8/internal/xt;->a:Z

    .line 231
    new-instance v9, Lcom/android/tools/r8/internal/kv;

    invoke-direct {v9, v8}, Lcom/android/tools/r8/internal/kv;-><init>(Lcom/android/tools/r8/internal/de;)V

    .line 232
    iget-object v8, v0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v10, v0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    .line 233
    invoke-virtual {v7, v8, v6, v9, v10}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/WJ;Lcom/android/tools/r8/internal/zt;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/h3;

    move-result-object v7

    goto :goto_7

    .line 234
    :cond_13
    :goto_6
    iget-object v8, v0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v9, v0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    .line 235
    invoke-virtual {v7, v8, v6, v9}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/h3;

    move-result-object v7

    .line 236
    :goto_7
    instance-of v8, v7, Lcom/android/tools/r8/graph/T5;

    if-eqz v8, :cond_15

    .line 237
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/h3;->a()Lcom/android/tools/r8/graph/T5;

    move-result-object v7

    .line 238
    iget-object v7, v7, Lcom/android/tools/r8/graph/T5;->b:Lcom/android/tools/r8/graph/H0;

    .line 239
    invoke-interface {v7}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 240
    iget-object v8, v0, Lcom/android/tools/r8/internal/GD;->l:Lcom/android/tools/r8/internal/m80;

    .line 241
    iget-object v8, v8, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 242
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 243
    new-instance v8, Lcom/android/tools/r8/ir/optimize/T;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v7}, Lcom/android/tools/r8/ir/optimize/T;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v3, v6, v8}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 244
    :cond_14
    new-instance v1, Lcom/android/tools/r8/internal/FD;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/FD;-><init>()V

    throw v1

    .line 245
    :cond_15
    new-instance v1, Lcom/android/tools/r8/internal/FD;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/FD;-><init>()V

    throw v1

    .line 246
    :cond_16
    new-instance v1, Lcom/android/tools/r8/internal/FD;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/FD;-><init>()V

    throw v1

    .line 247
    :cond_17
    :goto_8
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    :cond_18
    move-object v4, v5

    goto/16 :goto_4

    .line 248
    :cond_19
    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 249
    iget-object v5, v0, Lcom/android/tools/r8/internal/GD;->d:Lcom/android/tools/r8/ir/optimize/W;

    iget-object v7, v0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    iget-object v11, v0, Lcom/android/tools/r8/internal/GD;->e:Lcom/android/tools/r8/internal/dX;

    .line 250
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v12

    .line 251
    new-instance v6, Lcom/android/tools/r8/ir/optimize/K;

    .line 252
    iget-object v4, v5, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    .line 253
    invoke-direct {v6, v4, v3}, Lcom/android/tools/r8/ir/optimize/K;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Map;)V

    move-object v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 254
    invoke-virtual/range {v5 .. v12}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/ir/optimize/Y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/JD;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/ns0;)V

    :cond_1a
    :goto_9
    or-int/2addr v1, v2

    .line 255
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/GD;->a()V

    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/GD;->c(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 257
    iget-object v2, v0, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 258
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;)V

    goto :goto_b

    .line 259
    :cond_1b
    sget-boolean v2, Lcom/android/tools/r8/internal/GD;->p:Z

    if-nez v2, :cond_1d

    iget-object v2, v0, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    instance-of v2, v2, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v2, :cond_1c

    goto :goto_a

    .line 261
    :cond_1c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 262
    :cond_1d
    :goto_a
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/GD;->b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 263
    :goto_b
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/GD;->b()V

    .line 264
    iget-object v2, v0, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    invoke-static {v2}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/zE;)V

    return v1
.end method

.method public final b()V
    .locals 6

    .line 56
    iget-object v0, p0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 57
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result v2

    const-string v3, "` after field reads removed: "

    if-eqz v2, :cond_3

    .line 58
    sget-boolean v2, Lcom/android/tools/r8/internal/GD;->p:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v2

    .line 60
    iget-object v4, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 61
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/shaking/i;

    iget-object v5, p0, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    .line 62
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 64
    invoke-static {v1}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_0

    .line 65
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    .line 66
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected field write left in method `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_3
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    .line 68
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected usage left in method `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 13

    .line 1
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 5
    iget-object v6, v4, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    if-eqz v6, :cond_0

    .line 6
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    .line 7
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v6

    .line 9
    :goto_1
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 10
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/zE;

    .line 11
    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    instance-of v8, v7, Lcom/android/tools/r8/internal/bE;

    if-eqz v8, :cond_9

    .line 14
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 15
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object v7

    .line 16
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v8

    .line 17
    iget-object v9, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    iget-object v11, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v11

    .line 19
    iget-object v12, v11, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v10, v12, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v9, v10}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v11

    .line 20
    :goto_2
    invoke-virtual {v8, v11}, Lcom/android/tools/r8/graph/l1;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/g1;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_7

    .line 21
    iget-object v10, p0, Lcom/android/tools/r8/internal/GD;->j:Lcom/android/tools/r8/internal/Q30;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v10, v8}, Lcom/android/tools/r8/internal/Q30;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v8

    .line 23
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/F1;->e0()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 24
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/F1;->L()Lcom/android/tools/r8/internal/Bm0;

    move-result-object v8

    .line 25
    iget-object v10, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v11, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v8, v10, v11}, Lcom/android/tools/r8/internal/Pm0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 26
    iget-object v9, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v10

    invoke-virtual {v8, v9, v10, p1, v7}, Lcom/android/tools/r8/internal/Pm0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)[Lcom/android/tools/r8/internal/zE;

    move-result-object v8

    .line 28
    invoke-static {v8}, Lcom/android/tools/r8/internal/X3;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/zE;

    .line 29
    array-length v10, v8

    if-ne v10, v5, :cond_4

    .line 30
    invoke-interface {v6, v9, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto/16 :goto_1

    .line 31
    :cond_4
    invoke-virtual {v2, v7, v8}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 32
    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/bE;)V

    throw v9

    .line 33
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/bE;)V

    throw v9

    .line 34
    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/bE;)V

    throw v9

    .line 35
    :cond_8
    invoke-interface {v6}, Lcom/android/tools/r8/internal/EE;->i()V

    goto/16 :goto_1

    .line 36
    :cond_9
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 37
    invoke-interface {v6}, Lcom/android/tools/r8/internal/EE;->i()V

    goto/16 :goto_1

    .line 38
    :cond_a
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object p2, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    .line 39
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected usage left in method `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "` after inlining: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_b
    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v0

    .line 42
    :cond_c
    iget-object v1, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 43
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 44
    iget-object v1, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 45
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    .line 46
    :goto_3
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 47
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 48
    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/tools/r8/internal/zE;

    if-nez v4, :cond_d

    goto :goto_3

    .line 49
    :cond_d
    sget-boolean v6, Lcom/android/tools/r8/internal/GD;->p:Z

    if-nez v6, :cond_f

    array-length v6, v4

    if-le v6, v5, :cond_e

    goto :goto_4

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 50
    :cond_f
    :goto_4
    invoke-static {v4}, Lcom/android/tools/r8/internal/X3;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    .line 51
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v3, v6, p2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 52
    invoke-interface {v1}, Lcom/android/tools/r8/internal/EE;->i()V

    .line 53
    iget-object v3, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 54
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    .line 55
    invoke-interface {v1, p1, v0, v4, v3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;[Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/EE;

    move-result-object v1

    goto :goto_3

    :cond_10
    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;ILjava/util/Set;)Z
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;ILjava/util/Set;)Z

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lcom/android/tools/r8/internal/mE;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->Y()Lcom/android/tools/r8/internal/mE;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/tools/r8/internal/Y5;

    invoke-direct {v5, v2, v4}, Lcom/android/tools/r8/internal/Y5;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    iget-object v4, p0, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iget-object v3, v3, Lcom/android/tools/r8/internal/mE;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v4, v3}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v2

    invoke-virtual {v5, p1, v2}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/fB;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/GD;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1$c;->f:Lcom/android/tools/r8/graph/A2;

    if-ne v4, v5, :cond_2

    invoke-static {v3}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-boolean v2, Lcom/android/tools/r8/internal/GD;->p:Z

    if-nez v2, :cond_4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    iget-object v4, p0, Lcom/android/tools/r8/internal/GD;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/j2;->f:Lcom/android/tools/r8/graph/A2;

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    invoke-static {v3}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/zE;)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v3, v4, v5}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v4

    if-eqz v4, :cond_7

    instance-of v5, v4, Lcom/android/tools/r8/graph/A4;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, v5, Lcom/android/tools/r8/graph/y;->z:Lcom/android/tools/r8/internal/bS;

    invoke-interface {v4}, Lcom/android/tools/r8/graph/o0;->Z()Lcom/android/tools/r8/graph/A4;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lcom/android/tools/r8/internal/bS;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/A4;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    invoke-static {v3}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/zE;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v1

    sget-boolean v3, Lcom/android/tools/r8/internal/GD;->p:Z

    if-nez v3, :cond_9

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected usage in non-zero-test IF instruction: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_9
    :goto_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    iget-object v5, v1, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    if-nez v3, :cond_b

    sget-object v6, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-eq v5, v6, :cond_b

    sget-object v6, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-ne v5, v6, :cond_a

    goto :goto_3

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected type in zero-test IF instruction: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_b
    :goto_3
    sget-object v2, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-ne v5, v2, :cond_c

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    goto :goto_4

    :cond_c
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    :goto_4
    if-ne v5, v2, :cond_d

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    goto :goto_5

    :cond_d
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    :goto_5
    if-nez v3, :cond_f

    if-eq v6, v1, :cond_e

    goto :goto_6

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_f
    :goto_6
    invoke-virtual {v4, v1, v6}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v2

    sget-object v5, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v2, v5}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    if-nez v3, :cond_11

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_7

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_11
    :goto_7
    if-nez v3, :cond_13

    invoke-static {v4}, Lcom/android/tools/r8/internal/R5;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    if-ne v1, v6, :cond_12

    goto :goto_8

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_13
    :goto_8
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_14
    instance-of v3, v2, Lcom/android/tools/r8/internal/bE;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result v3

    if-eqz v3, :cond_15

    goto/16 :goto_0

    :cond_15
    instance-of v3, v2, Lcom/android/tools/r8/internal/WX;

    if-eqz v3, :cond_16

    invoke-static {v2}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/zE;)V

    goto/16 :goto_0

    :cond_16
    instance-of v3, v2, Lcom/android/tools/r8/internal/So0;

    if-eqz v3, :cond_17

    invoke-static {v2}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/zE;)V

    goto/16 :goto_0

    :cond_17
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object p2, p0, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected usage left in method `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "` after inlining: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    if-eqz v1, :cond_19

    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    iget-object p1, p2, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_19
    return-void
.end method
