.class public final Lcom/android/tools/r8/internal/it0;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/lu0;)V
    .locals 1

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/lu0;->b:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 1

    .line 60
    new-instance v0, Lcom/android/tools/r8/internal/q01;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/q01;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/internal/lu0;)V
    .locals 1

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/lu0;->b:Z

    return-void
.end method

.method public static c(Lcom/android/tools/r8/internal/lu0;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/lu0;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "TrivialCheckCastAndInstanceOfRemover"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 94
    sget-boolean v0, Lcom/android/tools/r8/internal/it0;->e:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->i()Z

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

    .line 95
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 96
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 97
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 98
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->m()Lcom/android/tools/r8/shaking/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/i;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/mE;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Z
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 9
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 10
    iget-object v2, v7, Lcom/android/tools/r8/internal/mE;->k:Lcom/android/tools/r8/graph/M2;

    .line 11
    iget-object v3, v6, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v3

    const/4 v10, 0x0

    if-eqz v3, :cond_2

    .line 13
    iget-object v3, v6, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j;

    invoke-static {v3, v1, v0, v4}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, v6, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v1

    .line 18
    sget-object v4, Lcom/android/tools/r8/internal/C2;->K:Lcom/android/tools/r8/internal/C2;

    invoke-interface {v1, v4}, Lcom/android/tools/r8/internal/C40;->e(Lcom/android/tools/r8/internal/C40;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    iget-object v1, v6, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 20
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->C2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v10

    .line 22
    :cond_2
    iget-object v1, v7, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/tools/r8/internal/xw0;

    .line 23
    iget-object v1, v6, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 24
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->J:Lcom/android/tools/r8/internal/i40;

    .line 25
    invoke-virtual {v1, v0, v11}, Lcom/android/tools/r8/internal/i40;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    if-nez v0, :cond_3

    return v10

    .line 26
    :cond_3
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v12

    .line 27
    iget-object v0, v7, Lcom/android/tools/r8/internal/mE;->k:Lcom/android/tools/r8/graph/M2;

    .line 28
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    iget-object v2, v6, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v13

    .line 29
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v14

    .line 30
    iget-object v0, v6, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v12, v13, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    const/4 v15, 0x1

    if-eqz v0, :cond_6

    .line 31
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32
    invoke-static {v10}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    return v15

    .line 33
    :cond_4
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/pu0;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 34
    invoke-static {v15}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    return v15

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, v11

    .line 35
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/it0;->a(Lcom/android/tools/r8/internal/mE;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v15

    .line 36
    :cond_6
    new-instance v0, Lcom/android/tools/r8/internal/oK0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/oK0;-><init>()V

    invoke-virtual {v14, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 37
    invoke-virtual {v13, v12, v0}, Lcom/android/tools/r8/internal/pu0;->c(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 38
    invoke-static {v10}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    return v15

    .line 39
    :cond_7
    iget-object v0, v7, Lcom/android/tools/r8/internal/mE;->k:Lcom/android/tools/r8/graph/M2;

    .line 40
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 41
    iget-object v0, v7, Lcom/android/tools/r8/internal/mE;->k:Lcom/android/tools/r8/graph/M2;

    .line 42
    invoke-virtual {v6, v0}, Lcom/android/tools/r8/internal/it0;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 43
    invoke-static {v10}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    return v15

    .line 44
    :cond_8
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 45
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/tools/r8/internal/it0;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 46
    invoke-static {v10}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    return v15

    .line 47
    :cond_9
    new-instance v0, Lcom/android/tools/r8/internal/Ie1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ie1;-><init>()V

    .line 48
    invoke-virtual {v11, v0}, Lcom/android/tools/r8/internal/xw0;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 49
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->B()Lcom/android/tools/r8/internal/C4;

    move-result-object v0

    .line 50
    iget-object v0, v0, Lcom/android/tools/r8/internal/C4;->k:Lcom/android/tools/r8/internal/xt;

    .line 51
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 52
    invoke-static {v10}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    return v15

    .line 53
    :cond_a
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->h()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 54
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    iget-object v2, v6, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 56
    invoke-virtual {v1, v13, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 57
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, v11

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/it0;->a(Lcom/android/tools/r8/internal/mE;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    return v0

    .line 59
    :cond_c
    :goto_1
    invoke-static {v15}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    return v15

    :cond_d
    return v10
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 1

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ$p;->Y:Z

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v0, 0xa

    .line 5
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 p2, 0x1d

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/mE;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    .line 62
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 63
    sget-object v1, Lcom/android/tools/r8/internal/C2;->z:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-boolean p3, Lcom/android/tools/r8/internal/gK;->o:Z

    .line 65
    new-instance p3, Lcom/android/tools/r8/internal/fK;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/fK;-><init>()V

    .line 66
    iget-object p4, p0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p4, p4, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object p4, p4, Lcom/android/tools/r8/graph/j2;->e:Lcom/android/tools/r8/graph/A2;

    .line 67
    iput-object p4, p3, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 68
    iget-object p4, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/xw0;

    .line 70
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/fK;

    .line 71
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 72
    iput-object p1, p3, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 73
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object p1

    .line 74
    invoke-interface {p2, p1, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return v4

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 77
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/dX;->d()Lcom/android/tools/r8/internal/fX;

    move-result-object v1

    .line 78
    invoke-static {v0, v1, p4}, Lcom/android/tools/r8/ir/optimize/M0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/ir/optimize/L0;

    move-result-object p4

    .line 79
    iget-object v0, p4, Lcom/android/tools/r8/ir/optimize/L0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/dX;->b(Lcom/android/tools/r8/graph/H5;)V

    .line 80
    iput-boolean v4, p4, Lcom/android/tools/r8/ir/optimize/L0;->b:Z

    .line 81
    sget-boolean p3, Lcom/android/tools/r8/internal/gK;->o:Z

    .line 82
    new-instance p3, Lcom/android/tools/r8/internal/fK;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/fK;-><init>()V

    .line 83
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/L0;->c:Z

    if-nez v0, :cond_2

    iget-boolean v0, p4, Lcom/android/tools/r8/ir/optimize/L0;->b:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 84
    :cond_2
    :goto_0
    iget-object p4, p4, Lcom/android/tools/r8/ir/optimize/L0;->a:Lcom/android/tools/r8/graph/H5;

    .line 85
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    .line 86
    iput-object p4, p3, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 87
    invoke-virtual {p3, p5}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/fK;

    .line 88
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p4

    .line 89
    iput-object p4, p3, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 90
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 91
    iput-object p1, p3, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 92
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object p1

    .line 93
    invoke-interface {p2, p1, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return v4

    :cond_3
    return v3
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/we;
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/it0;->e:Z

    if-nez v0, :cond_1

    iget-object v0, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v9

    .line 3
    iget-object v0, v8, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/android/tools/r8/internal/W5;

    .line 5
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    move v14, v0

    move v15, v1

    move-object v6, v2

    .line 6
    :goto_2
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 7
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v16

    .line 10
    new-instance v3, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v3}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v4

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    .line 13
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 14
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 15
    iget-object v5, v4, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 16
    iget-object v11, v7, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v5, v11}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    .line 17
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 18
    iget-object v12, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v12, v11}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v12

    .line 20
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v18

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    check-cast v2, Lcom/android/tools/r8/graph/j;

    invoke-static {v11, v12, v9, v2}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    :goto_3
    move-object/from16 v19, v3

    move-object/from16 v21, v6

    move-object/from16 v18, v10

    move-object/from16 v22, v13

    move/from16 v23, v14

    move/from16 v20, v15

    goto/16 :goto_15

    :cond_3
    move-object/from16 v19, v2

    .line 22
    :cond_4
    iget-object v2, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 23
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->J:Lcom/android/tools/r8/internal/i40;

    .line 24
    invoke-virtual {v2, v9, v0}, Lcom/android/tools/r8/internal/i40;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    .line 25
    :cond_5
    iget-object v2, v7, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 26
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    instance-of v2, v2, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v2, :cond_6

    .line 28
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v7, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    .line 29
    invoke-virtual {v5, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->K0()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 30
    :cond_6
    iget-object v2, v7, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 32
    iget-object v2, v7, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v5, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 34
    invoke-interface {v9, v2}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    .line 35
    :cond_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    .line 36
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v11

    .line 37
    iget-object v12, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    move-object/from16 v18, v10

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v10

    .line 38
    invoke-static {v5, v10, v12}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v10

    .line 39
    sget-boolean v12, Lcom/android/tools/r8/internal/it0;->e:Z

    move/from16 v20, v15

    if-nez v12, :cond_9

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v15

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v8

    .line 40
    invoke-virtual {v15, v8}, Lcom/android/tools/r8/internal/p10;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/p10;

    move-result-object v15

    if-ne v15, v8, :cond_8

    goto :goto_4

    .line 41
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_9
    :goto_4
    iget-object v8, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v10, v8}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v8

    if-eqz v8, :cond_11

    if-nez v12, :cond_b

    .line 43
    iget-object v5, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v11, v5}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_b
    :goto_5
    sget-boolean v2, Lcom/android/tools/r8/ir/optimize/x;->b:Z

    .line 45
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v8

    if-eq v5, v8, :cond_c

    .line 46
    new-instance v2, Lcom/android/tools/r8/internal/ej;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/internal/ej;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    const/4 v1, 0x0

    .line 47
    invoke-interface {v6, v2, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto :goto_7

    .line 48
    :cond_c
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez v2, :cond_e

    .line 49
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v5

    if-ne v2, v5, :cond_d

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_e
    :goto_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    .line 51
    iget-object v5, v4, Lcom/android/tools/r8/internal/zE;->h:Ljava/util/Set;

    if-eqz v5, :cond_10

    .line 52
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 53
    :cond_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 54
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    .line 55
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v10

    if-ne v10, v2, :cond_f

    .line 56
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 57
    invoke-virtual {v8, v4}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/internal/zE;)V

    .line 58
    :cond_10
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 59
    invoke-interface {v6}, Lcom/android/tools/r8/internal/EE;->i()V

    .line 60
    :goto_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->a()Lcom/android/tools/r8/ir/optimize/a;

    move-result-object v0

    .line 61
    iget-object v1, v3, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    move-object/from16 v22, v13

    move/from16 v23, v14

    goto/16 :goto_11

    .line 62
    :cond_11
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 63
    invoke-virtual {v5, v9}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 64
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 65
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 66
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/android/tools/r8/synthesis/J;->c()Z

    move-result v1

    if-nez v1, :cond_17

    .line 68
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 69
    iget-object v2, v7, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    .line 70
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v5

    const-wide/16 v10, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v8, v19

    move-object v15, v3

    move-object/from16 v19, v4

    move-wide v3, v10

    const/4 v10, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 71
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 72
    invoke-virtual/range {v19 .. v19}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 73
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->a()Lcom/android/tools/r8/ir/optimize/a;

    move-result-object v0

    .line 74
    iget-object v1, v15, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 75
    iget-object v0, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/dX;->d()Lcom/android/tools/r8/internal/fX;

    move-result-object v1

    move-object/from16 v5, p3

    .line 77
    invoke-static {v0, v1, v5}, Lcom/android/tools/r8/ir/optimize/M0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/ir/optimize/L0;

    move-result-object v0

    .line 78
    iget-object v1, v0, Lcom/android/tools/r8/ir/optimize/L0;->a:Lcom/android/tools/r8/graph/H5;

    move-object/from16 v4, p2

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/dX;->b(Lcom/android/tools/r8/graph/H5;)V

    .line 79
    iput-boolean v10, v0, Lcom/android/tools/r8/ir/optimize/L0;->b:Z

    .line 80
    sget-boolean v1, Lcom/android/tools/r8/internal/gK;->o:Z

    .line 81
    new-instance v1, Lcom/android/tools/r8/internal/fK;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/fK;-><init>()V

    .line 82
    sget-boolean v2, Lcom/android/tools/r8/ir/optimize/L0;->c:Z

    if-nez v2, :cond_13

    iget-boolean v2, v0, Lcom/android/tools/r8/ir/optimize/L0;->b:Z

    if-eqz v2, :cond_12

    goto :goto_8

    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_13
    :goto_8
    iget-object v0, v0, Lcom/android/tools/r8/ir/optimize/L0;->a:Lcom/android/tools/r8/graph/H5;

    .line 84
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 85
    iput-object v0, v1, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 86
    invoke-virtual/range {v19 .. v19}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/fK;

    .line 87
    invoke-virtual/range {v19 .. v19}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    .line 88
    iput-object v1, v0, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 89
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object v0

    const/4 v1, 0x0

    .line 90
    invoke-interface {v6, v0, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    if-nez v12, :cond_15

    .line 91
    iget-object v1, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1, v8}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    if-eqz v0, :cond_14

    goto :goto_9

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 92
    :cond_15
    :goto_9
    invoke-virtual/range {v19 .. v19}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result v0

    move-object/from16 v21, v6

    if-eqz v0, :cond_16

    move-object/from16 v22, v13

    move/from16 v23, v14

    move-object/from16 v19, v15

    goto/16 :goto_11

    :cond_16
    move v8, v10

    move-object/from16 v22, v13

    move/from16 v23, v14

    move-object/from16 v19, v15

    const/4 v5, 0x3

    goto/16 :goto_16

    :cond_17
    move-object/from16 v5, p3

    move-object v15, v3

    move-object/from16 v8, v19

    const/4 v12, 0x1

    move-object/from16 v19, v4

    move-object/from16 v4, p2

    move-object/from16 v1, v19

    .line 93
    instance-of v3, v1, Lcom/android/tools/r8/internal/Qk0;

    if-nez v3, :cond_19

    .line 94
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 95
    invoke-virtual {v3, v9}, Lcom/android/tools/r8/internal/xw0;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    iget-object v12, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 96
    invoke-virtual {v3, v10, v12}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_a

    :cond_18
    move-object/from16 v21, v6

    move-object/from16 v22, v13

    move/from16 v23, v14

    move-object/from16 v19, v15

    goto/16 :goto_13

    .line 97
    :cond_19
    :goto_a
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    .line 99
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object v12

    .line 100
    new-instance v4, Lcom/android/tools/r8/internal/Yx0;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 101
    invoke-static {v1, v4}, Lcom/android/tools/r8/internal/Eu0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Yx0;)V

    .line 102
    :goto_b
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 103
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Du0;

    .line 104
    iget-object v5, v1, Lcom/android/tools/r8/internal/Du0;->a:Lcom/android/tools/r8/internal/FE;

    .line 105
    invoke-interface {v5}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 106
    invoke-interface {v5}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/tools/r8/internal/Eu0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Yx0;)V

    goto :goto_b

    .line 107
    :cond_1a
    invoke-interface {v5}, Lcom/android/tools/r8/internal/GE;->k()Lcom/android/tools/r8/internal/zE;

    move-result-object v5

    .line 108
    iget-object v1, v1, Lcom/android/tools/r8/internal/Du0;->b:Lcom/android/tools/r8/internal/xw0;

    move-object/from16 v19, v15

    .line 109
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v15

    move-object/from16 v21, v6

    const/16 v6, 0x9

    if-eq v15, v6, :cond_27

    const/16 v6, 0xa

    if-eq v15, v6, :cond_26

    const/16 v6, 0x19

    if-eq v15, v6, :cond_26

    const/16 v6, 0x1c

    if-eq v15, v6, :cond_25

    const/16 v6, 0x1e

    if-eq v15, v6, :cond_22

    const/16 v6, 0x38

    if-eq v15, v6, :cond_21

    const/16 v6, 0x3c

    if-eq v15, v6, :cond_20

    const/16 v6, 0x21

    if-eq v15, v6, :cond_1b

    const/16 v6, 0x22

    if-eq v15, v6, :cond_1b

    packed-switch v15, :pswitch_data_0

    .line 110
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->p()Lcom/android/tools/r8/internal/xs0;

    move-result-object v1

    move-object/from16 v22, v13

    move/from16 v23, v14

    goto/16 :goto_f

    .line 111
    :cond_1b
    :pswitch_0
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v5

    .line 112
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object v6

    move-object/from16 v22, v13

    const/4 v15, 0x0

    .line 113
    :goto_c
    iget-object v13, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v15, v13, :cond_1d

    .line 115
    invoke-virtual {v5, v15}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    if-eq v13, v1, :cond_1c

    move/from16 v23, v14

    goto :goto_d

    .line 116
    :cond_1c
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v13

    move/from16 v23, v14

    .line 117
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v14

    invoke-virtual {v13, v15, v14}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    .line 118
    invoke-virtual {v13, v9}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v13

    .line 119
    invoke-virtual {v6, v9, v13}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    :goto_d
    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v23

    goto :goto_c

    :cond_1d
    move/from16 v23, v14

    .line 120
    sget-boolean v1, Lcom/android/tools/r8/internal/Eu0;->a:Z

    if-nez v1, :cond_1f

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    instance-of v1, v6, Lcom/android/tools/r8/internal/z7;

    if-nez v1, :cond_1e

    goto :goto_e

    .line 122
    :cond_1e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1f
    :goto_e
    move-object v1, v6

    goto/16 :goto_f

    :cond_20
    move-object/from16 v22, v13

    move/from16 v23, v14

    .line 123
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    goto/16 :goto_f

    :cond_21
    move-object/from16 v22, v13

    move/from16 v23, v14

    .line 125
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    goto :goto_f

    :cond_22
    move-object/from16 v22, v13

    move/from16 v23, v14

    .line 126
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v5

    .line 127
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v6

    .line 128
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object v13

    .line 129
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v14

    if-ne v14, v1, :cond_23

    .line 130
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    invoke-virtual {v14, v9}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v14

    invoke-virtual {v13, v9, v14}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v13

    .line 131
    :cond_23
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/rE;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    if-ne v5, v1, :cond_24

    .line 132
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v13, v9, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    goto :goto_f

    :cond_24
    move-object v1, v13

    goto :goto_f

    :cond_25
    move-object/from16 v22, v13

    move/from16 v23, v14

    .line 133
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    goto :goto_f

    :cond_26
    move-object/from16 v22, v13

    move/from16 v23, v14

    .line 135
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object v1

    goto :goto_f

    :cond_27
    move-object/from16 v22, v13

    move/from16 v23, v14

    .line 136
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->B()Lcom/android/tools/r8/internal/C4;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/tools/r8/internal/Eu0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Yx0;)V

    .line 138
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object v1

    .line 139
    :goto_f
    invoke-virtual {v12, v9, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v12

    .line 140
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    instance-of v1, v12, Lcom/android/tools/r8/internal/xs0;

    if-nez v1, :cond_2a

    .line 142
    invoke-virtual {v12, v3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_10

    :cond_28
    move-object/from16 v15, v19

    move-object/from16 v6, v21

    move-object/from16 v13, v22

    move/from16 v14, v23

    goto/16 :goto_b

    :cond_29
    move-object/from16 v21, v6

    move-object/from16 v22, v13

    move/from16 v23, v14

    move-object/from16 v19, v15

    move-object v3, v12

    .line 143
    :cond_2a
    :goto_10
    iget-object v1, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_2b

    :goto_11
    const/4 v5, 0x2

    :goto_12
    const/4 v8, 0x1

    goto :goto_16

    .line 144
    :cond_2b
    :goto_13
    sget-boolean v1, Lcom/android/tools/r8/internal/it0;->e:Z

    if-nez v1, :cond_2d

    .line 145
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 146
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 147
    instance-of v0, v2, Lcom/android/tools/r8/internal/Zd0;

    if-nez v0, :cond_2c

    goto :goto_14

    .line 148
    :cond_2c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2d
    :goto_14
    if-nez v1, :cond_2f

    .line 149
    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_15

    :cond_2e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2f
    :goto_15
    const/4 v5, 0x1

    goto :goto_12

    :goto_16
    if-eq v5, v8, :cond_35

    or-int v14, v23, v16

    move-object/from16 v10, v22

    .line 150
    iget-object v0, v10, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v0

    .line 151
    invoke-virtual/range {v21 .. v21}, Lcom/android/tools/r8/internal/Y5;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    const/4 v2, 0x2

    if-ne v5, v2, :cond_30

    .line 152
    iget-object v2, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    new-instance v3, Lcom/android/tools/r8/internal/Je1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Je1;-><init>()V

    move-object/from16 v11, p1

    move-object/from16 v4, v19

    invoke-virtual {v4, v2, v11, v3}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    goto :goto_18

    :cond_30
    move-object/from16 v11, p1

    move-object/from16 v4, v19

    .line 153
    sget-boolean v2, Lcom/android/tools/r8/internal/it0;->e:Z

    if-nez v2, :cond_32

    const/4 v2, 0x3

    if-ne v5, v2, :cond_31

    goto :goto_17

    :cond_31
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 154
    :cond_32
    :goto_17
    iget-object v2, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    new-instance v3, Lcom/android/tools/r8/internal/Ke1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Ke1;-><init>()V

    invoke-virtual {v4, v2, v11, v3}, Lcom/android/tools/r8/ir/optimize/a;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    .line 155
    :goto_18
    iget-object v2, v10, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v2

    if-eq v2, v0, :cond_34

    if-eqz v1, :cond_33

    .line 156
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    goto :goto_19

    .line 157
    :cond_33
    iget-object v0, v10, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 158
    :goto_19
    new-instance v6, Lcom/android/tools/r8/internal/Y5;

    invoke-direct {v6, v10, v0}, Lcom/android/tools/r8/internal/Y5;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V

    move v15, v8

    move-object v13, v10

    move-object v8, v11

    move-object/from16 v10, v18

    goto/16 :goto_2

    :cond_34
    :goto_1a
    move v15, v8

    move-object v13, v10

    move-object v8, v11

    move-object/from16 v10, v18

    move-object/from16 v6, v21

    goto/16 :goto_2

    :cond_35
    move-object/from16 v11, p1

    move-object/from16 v10, v22

    goto :goto_1b

    :cond_36
    move-object/from16 v21, v6

    move-object v11, v8

    move-object/from16 v18, v10

    move-object v10, v13

    move/from16 v23, v14

    move/from16 v20, v15

    const/4 v8, 0x1

    .line 159
    instance-of v1, v0, Lcom/android/tools/r8/internal/mE;

    if-eqz v1, :cond_37

    .line 160
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v12

    .line 161
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->Y()Lcom/android/tools/r8/internal/mE;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v3, v21

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 162
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/it0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/mE;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Z

    move-result v0

    if-eqz v0, :cond_37

    or-int v14, v23, v12

    goto :goto_1a

    :cond_37
    :goto_1b
    move-object v13, v10

    move-object v8, v11

    move-object/from16 v10, v18

    move/from16 v15, v20

    move-object/from16 v6, v21

    move/from16 v14, v23

    goto/16 :goto_2

    :cond_38
    move/from16 v23, v14

    move/from16 v20, v15

    move/from16 v1, v20

    move/from16 v0, v23

    goto/16 :goto_1

    :cond_39
    move-object v11, v8

    if-eqz v0, :cond_3a

    .line 163
    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    const/4 v2, 0x0

    .line 164
    invoke-virtual {v11, v2, v0}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;)Z

    .line 165
    iget-object v2, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    new-instance v3, Lcom/android/tools/r8/internal/Le1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Le1;-><init>()V

    invoke-virtual {v0, v2, v11, v3}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    :cond_3a
    if-eqz v1, :cond_3b

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    :cond_3b
    if-eqz v1, :cond_3c

    .line 167
    sget-object v0, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object v0

    :cond_3c
    sget-object v0, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
