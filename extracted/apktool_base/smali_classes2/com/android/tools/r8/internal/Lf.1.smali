.class public final Lcom/android/tools/r8/internal/Lf;
.super Lcom/android/tools/r8/internal/Pf;
.source "SourceFile"


# instance fields
.field public final f:Lcom/android/tools/r8/internal/S50;

.field public final g:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Sw;Lcom/android/tools/r8/internal/bX;Lcom/android/tools/r8/internal/S50;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Pf;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Sw;Lcom/android/tools/r8/internal/bX;)V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Lf;->g:Ljava/util/Set;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Lf;->f:Lcom/android/tools/r8/internal/S50;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/f60;)Lcom/android/tools/r8/internal/Vf;
    .locals 6

    .line 73
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lf;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    instance-of v0, v0, Lcom/android/tools/r8/internal/uI;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 75
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pf;->a(Lcom/android/tools/r8/internal/GE;)Lcom/android/tools/r8/internal/Vf;

    move-result-object v0

    .line 77
    iget-object v2, p1, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 78
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Pf;->a(Lcom/android/tools/r8/internal/GE;)Lcom/android/tools/r8/internal/Vf;

    move-result-object v2

    .line 79
    invoke-interface {v0}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    .line 81
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 82
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    .line 83
    iget-object v4, p0, Lcom/android/tools/r8/internal/Lf;->f:Lcom/android/tools/r8/internal/S50;

    .line 84
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v5

    .line 85
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    .line 86
    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/S50;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/O50;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/O50;->d()Lcom/android/tools/r8/internal/rg;

    move-result-object v1

    if-nez v1, :cond_2

    .line 88
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {v4, p1}, Lcom/android/tools/r8/internal/S50;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/O50;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/O50;->d()Lcom/android/tools/r8/internal/rg;

    move-result-object p1

    if-nez p1, :cond_3

    .line 90
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/rg;->a(Lcom/android/tools/r8/internal/rg;)Lcom/android/tools/r8/internal/Vf;

    move-result-object p1

    .line 92
    :goto_0
    sget v1, Lcom/android/tools/r8/internal/Rf;->e:I

    .line 93
    invoke-interface {v0}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 94
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 95
    :cond_4
    new-instance v1, Lcom/android/tools/r8/internal/Rf;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/tools/r8/internal/Rf;-><init>(Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/Vf;)V

    return-object v1

    .line 96
    :cond_5
    :goto_1
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    .line 97
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Vf;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_12

    const/4 v1, 0x5

    const/4 v3, 0x1

    if-eq v0, v1, :cond_10

    const/16 v1, 0xf

    if-eq v0, v1, :cond_b

    const/16 v1, 0x19

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_8

    const/16 v1, 0x26

    if-eq v0, v1, :cond_2

    const/16 v1, 0x35

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->A0()Lcom/android/tools/r8/internal/A40;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pf;->a(Lcom/android/tools/r8/internal/GE;)Lcom/android/tools/r8/internal/Vf;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pf;->a(Lcom/android/tools/r8/internal/GE;)Lcom/android/tools/r8/internal/Vf;

    move-result-object p1

    .line 7
    sget-boolean v1, Lcom/android/tools/r8/internal/Tf;->d:Z

    .line 8
    invoke-interface {v0}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 10
    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/Tf;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/Tf;-><init>(Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/Vf;)V

    return-object v1

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v1

    if-ne v1, v3, :cond_11

    .line 14
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pf;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pf;->b:Lcom/android/tools/r8/graph/H5;

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/VJ;->f(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v0

    if-nez v0, :cond_4

    goto/16 :goto_1

    .line 18
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/Pf;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Pf;->b:Lcom/android/tools/r8/graph/H5;

    .line 19
    invoke-virtual {v0, v1, p1, v3}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/h3;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h3;->b()Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    if-nez v0, :cond_5

    goto/16 :goto_1

    .line 21
    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->h()Lcom/android/tools/r8/internal/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/r;->j()Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_1

    .line 22
    :cond_6
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pf;->a(Lcom/android/tools/r8/internal/GE;)Lcom/android/tools/r8/internal/Vf;

    move-result-object p1

    .line 24
    sget-boolean v0, Lcom/android/tools/r8/internal/Yf;->c:Z

    .line 25
    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 27
    :cond_7
    new-instance v0, Lcom/android/tools/r8/internal/Yf;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Yf;-><init>(Lcom/android/tools/r8/internal/Vf;)V

    return-object v0

    .line 28
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/bE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 31
    iget-boolean v1, v1, Lcom/android/tools/r8/internal/xw0;->j:Z

    if-eqz v1, :cond_11

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pf;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pf;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/hw;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->o()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pf;->c:Lcom/android/tools/r8/internal/Sw;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Sw;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/Pw;

    move-result-object p1

    return-object p1

    .line 35
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 37
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pf;->a(Lcom/android/tools/r8/internal/GE;)Lcom/android/tools/r8/internal/Vf;

    move-result-object v0

    .line 39
    iget-object p1, p1, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 40
    sget v1, Lcom/android/tools/r8/internal/Wf;->d:I

    .line 41
    invoke-interface {v0}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 42
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 43
    :cond_a
    new-instance v1, Lcom/android/tools/r8/internal/Wf;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/Wf;-><init>(Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/NB;)V

    return-object v1

    .line 44
    :cond_b
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    instance-of v0, v0, Lcom/android/tools/r8/internal/uI;

    if-eqz v0, :cond_11

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pf;->a:Lcom/android/tools/r8/graph/y;

    .line 48
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 49
    iget-object v1, p1, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 50
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 51
    :cond_c
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    sget-boolean v0, Lcom/android/tools/r8/internal/G1;->f:Z

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_0

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 54
    :cond_e
    :goto_0
    sget-object p1, Lcom/android/tools/r8/internal/Hm0;->c:Lcom/android/tools/r8/internal/Hm0;

    return-object p1

    .line 55
    :cond_f
    iget-wide v1, p1, Lcom/android/tools/r8/internal/qh;->l:J

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1

    .line 56
    :cond_10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    instance-of v0, v0, Lcom/android/tools/r8/internal/uI;

    if-eqz v0, :cond_11

    .line 59
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pf;->d:Lcom/android/tools/r8/internal/bX;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pf;->b:Lcom/android/tools/r8/graph/H5;

    .line 60
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result p1

    .line 61
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/bX;->a(Lcom/android/tools/r8/graph/H5;I)Lcom/android/tools/r8/internal/aX;

    move-result-object p1

    return-object p1

    .line 62
    :cond_11
    :goto_1
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    .line 63
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 64
    :cond_12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->u()Lcom/android/tools/r8/internal/t2;

    move-result-object p1

    .line 65
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pf;->a(Lcom/android/tools/r8/internal/GE;)Lcom/android/tools/r8/internal/Vf;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pf;->a(Lcom/android/tools/r8/internal/GE;)Lcom/android/tools/r8/internal/Vf;

    move-result-object p1

    .line 69
    sget-boolean v1, Lcom/android/tools/r8/internal/Qf;->d:Z

    .line 70
    invoke-interface {v0}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 71
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 72
    :cond_13
    new-instance v1, Lcom/android/tools/r8/internal/Qf;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/Qf;-><init>(Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/Vf;)V

    return-object v1
.end method
