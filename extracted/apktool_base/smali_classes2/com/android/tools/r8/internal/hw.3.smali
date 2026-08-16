.class public abstract Lcom/android/tools/r8/internal/hw;
.super Lcom/android/tools/r8/internal/zE;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final k:Lcom/android/tools/r8/graph/l1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p3, p2}, Lcom/android/tools/r8/internal/zE;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/xw0;)V

    sget-boolean p2, Lcom/android/tools/r8/internal/hw;->l:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/hw;->k:Lcom/android/tools/r8/graph/l1;

    return-void
.end method


# virtual methods
.method public final E1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final S()Lcom/android/tools/r8/internal/hw;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;
    .locals 3

    .line 62
    sget-boolean p3, Lcom/android/tools/r8/internal/hw;->l:Z

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->D1()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 63
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result p3

    if-nez p3, :cond_7

    .line 64
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    .line 65
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result p3

    if-nez p3, :cond_2

    goto/16 :goto_2

    .line 66
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p3

    .line 67
    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/internal/hw;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/D3;->p()Lcom/android/tools/r8/graph/F0;

    move-result-object p2

    if-nez p2, :cond_3

    .line 68
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 69
    :cond_3
    iget-object p3, p1, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    .line 70
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;

    move-result-object p3

    .line 71
    iget-object p3, p3, Lcom/android/tools/r8/internal/F4;->b:Lcom/android/tools/r8/internal/F1;

    .line 72
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v0

    if-nez v0, :cond_4

    return-object p3

    .line 73
    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/g1;

    .line 74
    iget-object p3, p3, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 75
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/vw;->f()Lcom/android/tools/r8/internal/F1;

    move-result-object p3

    .line 76
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 77
    :cond_5
    instance-of v0, p2, Lcom/android/tools/r8/graph/z4;

    if-eqz v0, :cond_6

    .line 78
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 79
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->B:Lcom/android/tools/r8/internal/XR;

    .line 80
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->j()Lcom/android/tools/r8/graph/z4;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 82
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v0, v0, Lcom/android/tools/r8/internal/XR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->L2:Lcom/android/tools/r8/graph/M2;

    .line 83
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 84
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 85
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    new-instance p1, Lcom/android/tools/r8/internal/Nm0;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Nm0;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object p1

    :cond_6
    :goto_1
    return-object p3

    .line 87
    :cond_7
    :goto_2
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F0;)Z
    .locals 4

    .line 25
    sget-boolean v0, Lcom/android/tools/r8/internal/hw;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->F1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W3;->E()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 28
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    return v2

    .line 29
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    .line 30
    check-cast p2, Lcom/android/tools/r8/graph/g1;

    .line 31
    iget-object p2, p2, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 32
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/vw;->f()Lcom/android/tools/r8/internal/F1;

    move-result-object p2

    .line 33
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 34
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->e0()Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 35
    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 36
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object p2

    .line 37
    iget-object p2, p2, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    .line 38
    iget-object p2, p2, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 39
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 40
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 42
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 43
    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/shaking/R2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/graph/t5;)Z

    move-result p1

    return p1

    .line 44
    :cond_5
    sget-boolean p1, Lcom/android/tools/r8/internal/Fm0;->d:Z

    if-nez p1, :cond_7

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_1
    return v2

    .line 45
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/i;

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 47
    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 48
    iget-object v0, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/tZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    return v1

    .line 49
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    .line 50
    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1$c;->g:Lcom/android/tools/r8/graph/A2;

    .line 51
    invoke-virtual {p2, v0, v3}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p2

    .line 52
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->s()Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    if-nez p2, :cond_a

    return v2

    .line 53
    :cond_a
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 54
    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 55
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 56
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    .line 57
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_b

    return v1

    :cond_b
    return v2

    .line 58
    :cond_c
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 60
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 61
    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/shaking/R2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/graph/t5;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    iget-object v0, p0, Lcom/android/tools/r8/internal/hw;->k:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3, v1, v0, p2}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object p3

    .line 3
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/android/tools/r8/internal/hw;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/yE;Lcom/android/tools/r8/graph/D3;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/yE;Lcom/android/tools/r8/graph/D3;)Z
    .locals 4

    .line 4
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/D3;->y()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/D3;->l()Lcom/android/tools/r8/graph/D3$a;

    move-result-object p4

    .line 6
    iget-object v0, p4, Lcom/android/tools/r8/graph/D3$a;->c:Lcom/android/tools/r8/graph/E0;

    .line 7
    iget-object v2, p4, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    invoke-static {v0, v2}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->h2()Z

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    .line 9
    :cond_1
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/D3$a;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v2

    invoke-virtual {p4, p2, v2}, Lcom/android/tools/r8/graph/J4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object p4

    .line 11
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result p4

    if-eqz p4, :cond_2

    return v1

    .line 12
    :cond_2
    instance-of p4, p0, Lcom/android/tools/r8/internal/bE;

    const/4 v2, 0x0

    if-nez p4, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 14
    :cond_3
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/yE;->c()Z

    move-result p4

    if-nez p4, :cond_5

    .line 15
    iget-object p4, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/xw0;

    .line 16
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object p4, p4, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result p4

    if-eqz p4, :cond_5

    :cond_4
    return v1

    .line 17
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p4

    if-nez p4, :cond_6

    return v2

    .line 18
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->h2()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/yE;->a()Z

    move-result p3

    if-nez p3, :cond_8

    .line 19
    iget-object p3, p1, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    .line 20
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    .line 22
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;

    move-result-object p3

    .line 23
    iget-boolean p3, p3, Lcom/android/tools/r8/internal/F4;->c:Z

    if-eqz p3, :cond_7

    return v2

    .line 24
    :cond_7
    iget-object p3, p0, Lcom/android/tools/r8/internal/hw;->k:Lcom/android/tools/r8/graph/l1;

    iget-object p3, p3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v1

    :cond_8
    return v2
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/p;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/ov0;->a:Lcom/android/tools/r8/internal/ov0;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->D1()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    iget-object p1, p1, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    new-instance p2, Lcom/android/tools/r8/internal/qg;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/qg;-><init>(Lcom/android/tools/r8/graph/g1;)V

    return-object p2

    :cond_3
    sget-object p1, Lcom/android/tools/r8/internal/ov0;->a:Lcom/android/tools/r8/internal/ov0;

    return-object p1

    :cond_4
    sget-boolean p1, Lcom/android/tools/r8/internal/hw;->l:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->F1()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_1
    sget-object p1, Lcom/android/tools/r8/internal/Ot;->a:Lcom/android/tools/r8/internal/Ot;

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;
    .locals 2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    iget-object v0, p0, Lcom/android/tools/r8/internal/hw;->k:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1, v0, p2}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    return-object p1
.end method

.method public final d1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getField()Lcom/android/tools/r8/graph/l1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hw;->k:Lcom/android/tools/r8/graph/l1;

    return-object v0
.end method

.method public final u2()Lcom/android/tools/r8/internal/jw;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/hw;->k:Lcom/android/tools/r8/graph/l1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/L2;->f:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    int-to-char v0, v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/jw;->a(C)Lcom/android/tools/r8/internal/jw;

    move-result-object v0

    return-object v0
.end method

.method public abstract value()Lcom/android/tools/r8/internal/xw0;
.end method
