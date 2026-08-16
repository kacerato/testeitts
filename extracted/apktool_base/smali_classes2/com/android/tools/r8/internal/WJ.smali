.class public abstract Lcom/android/tools/r8/internal/WJ;
.super Lcom/android/tools/r8/internal/VJ;
.source "SourceFile"


# static fields
.field public static final synthetic n:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/VJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public C2()Lcom/android/tools/r8/internal/xw0;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/WJ;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    return-object v0
.end method

.method public final Q1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final Z0()Lcom/android/tools/r8/internal/xw0;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/ir/optimize/H;Lcom/android/tools/r8/internal/Pc;Lcom/android/tools/r8/internal/Cx0;)Lcom/android/tools/r8/ir/optimize/P;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 3
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Cx0;->r()V

    return-object v1

    .line 7
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/H;->i:Z

    if-nez v0, :cond_2

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    .line 9
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_2
    :goto_0
    iget-object p2, p2, Lcom/android/tools/r8/ir/optimize/H;->c:Lcom/android/tools/r8/internal/nJ$h;

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ$h;->k:Z

    if-nez p2, :cond_3

    .line 13
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Cx0;->s()V

    return-object v1

    .line 14
    :cond_3
    new-instance p2, Lcom/android/tools/r8/ir/optimize/P;

    invoke-direct {p2}, Lcom/android/tools/r8/ir/optimize/P;-><init>()V

    .line 15
    iput-object p0, p2, Lcom/android/tools/r8/ir/optimize/P;->b:Lcom/android/tools/r8/internal/VJ;

    .line 16
    iput-object p1, p2, Lcom/android/tools/r8/ir/optimize/P;->f:Lcom/android/tools/r8/graph/H5;

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Vw0;)V
    .locals 4

    .line 18
    sget-boolean p2, Lcom/android/tools/r8/internal/WJ;->n:Z

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 20
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    if-nez p2, :cond_1

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 24
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2, v1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/zt;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 26
    invoke-static {v2, v3, v0}, Lcom/android/tools/r8/internal/lu0;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-nez p2, :cond_3

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/i;

    .line 28
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ$p;->P:Z

    if-nez p1, :cond_3

    .line 30
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/xw0;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    instance-of p1, p1, Lcom/android/tools/r8/internal/Zd0;

    if-nez p1, :cond_3

    .line 32
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 33
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 34
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/tools/r8/internal/WJ;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 35
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "The receiver lower bound does not match the receiver type"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-eq p3, v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/VJ;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z
    .locals 3

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/q01;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/q01;-><init>()V

    .line 38
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 39
    :cond_1
    invoke-interface {p1, p2}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    if-nez p2, :cond_2

    return v1

    .line 40
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/shaking/i;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result p2

    if-eqz p2, :cond_3

    return v1

    .line 41
    :cond_3
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 42
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    iget-boolean p3, p3, Lcom/android/tools/r8/internal/nJ;->i1:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/yE;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$c;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result p1

    :goto_0
    xor-int/2addr p1, v0

    return p1

    :cond_2
    iget-object p3, p1, Lcom/android/tools/r8/graph/y;->z:Lcom/android/tools/r8/internal/bS;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p3, v1, v2}, Lcom/android/tools/r8/internal/bS;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/List;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p3

    if-nez p3, :cond_4

    return v0

    :cond_4
    sget-boolean p3, Lcom/android/tools/r8/internal/WJ;->n:Z

    if-nez p3, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/VJ;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v3

    if-nez v3, :cond_7

    return v0

    :cond_7
    invoke-virtual {v3, p2, v2}, Lcom/android/tools/r8/graph/J4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    return v0

    :cond_8
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/yE;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    return v1

    :cond_9
    iget-object v2, v3, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v4, v3, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v2, v4}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v2

    iget-object v4, p1, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/tools/r8/internal/F4;->c:Z

    if-nez v4, :cond_12

    iget-object v4, p1, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/F4;->c:Z

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    invoke-virtual {v3, p1, p0, p2}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/TW;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2, p0}, Lcom/android/tools/r8/internal/TW;->a(Lcom/android/tools/r8/internal/VJ;)Z

    move-result v3

    if-nez v3, :cond_b

    return v1

    :cond_b
    if-nez p2, :cond_c

    return v0

    :cond_c
    instance-of v3, p2, Lcom/android/tools/r8/graph/A4;

    if-eqz v3, :cond_d

    iget-object v3, p1, Lcom/android/tools/r8/graph/y;->z:Lcom/android/tools/r8/internal/bS;

    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->Z()Lcom/android/tools/r8/graph/A4;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcom/android/tools/r8/internal/bS;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/A4;)Z

    move-result v3

    if-eqz v3, :cond_d

    return v1

    :cond_d
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/F4;->c:Z

    if-eqz p1, :cond_e

    return v1

    :cond_e
    instance-of p1, p4, Lcom/android/tools/r8/internal/uE;

    if-eqz p1, :cond_11

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p1

    if-eqz p1, :cond_11

    if-nez p3, :cond_10

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_2

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/TW;->a(Lcom/android/tools/r8/internal/QJ;)Lcom/android/tools/r8/internal/fE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fE;->e()Z

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result p1

    goto/16 :goto_0

    :cond_11
    return v0

    :cond_12
    :goto_3
    return v1
.end method

.method public final d(Lcom/android/tools/r8/internal/Kn;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    iget-object v2, v2, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    iget-object p1, p1, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    iget-object p1, p1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v1

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/tools/r8/internal/WJ;->n:Z

    if-nez v1, :cond_2

    iget-object v2, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_5
    return v3
.end method

.method public final e(Lcom/android/tools/r8/internal/Kn;)Z
    .locals 3

    iget-object v0, p1, Lcom/android/tools/r8/internal/Kn;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    iget-object v0, v0, Lcom/android/tools/r8/internal/mS;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/Kn;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public final f0()Lcom/android/tools/r8/internal/WJ;
    .locals 0

    return-object p0
.end method

.method public final t2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
