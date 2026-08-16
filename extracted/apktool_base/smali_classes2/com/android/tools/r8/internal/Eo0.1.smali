.class public final Lcom/android/tools/r8/internal/Eo0;
.super Lcom/android/tools/r8/internal/Rw;
.source "SourceFile"


# static fields
.field public static final synthetic k:Z = true


# instance fields
.field public final i:Lcom/android/tools/r8/internal/Fo0;

.field public final j:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Rw;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;)V

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Eo0;->j:Ljava/util/IdentityHashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/tools/r8/internal/Io0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Io0;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Go0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Go0;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/Eo0;->i:Lcom/android/tools/r8/internal/Fo0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;
    .locals 3

    .line 45
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    .line 47
    sget-object v2, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    .line 48
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v1

    if-nez v1, :cond_a

    .line 50
    sget-boolean v0, Lcom/android/tools/r8/internal/Eo0;->k:Z

    if-nez v0, :cond_1

    .line 51
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 53
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    if-nez v0, :cond_4

    .line 54
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-ne v0, p2, :cond_3

    goto :goto_1

    .line 55
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 56
    :cond_4
    :goto_1
    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 57
    :cond_5
    iget-object v0, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->Z1()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 58
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Eo0;->b(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Fm0;

    move-result-object v0

    goto :goto_3

    .line 59
    :cond_6
    iget-object v0, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 60
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Eo0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Fm0;

    move-result-object v0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_8

    return-object v0

    .line 61
    :cond_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    .line 62
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 63
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    .line 64
    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-static {v1, v2, p2}, Lcom/android/tools/r8/internal/R30;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Q30;

    move-result-object p2

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Q30;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 67
    new-instance p2, Lcom/android/tools/r8/internal/Nm0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Nm0;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object p2

    .line 68
    :cond_9
    new-instance v0, Lcom/android/tools/r8/internal/Mm0;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Mm0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/Q30;)V

    :cond_a
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Fm0;
    .locals 6

    .line 90
    sget-boolean v0, Lcom/android/tools/r8/internal/Eo0;->k:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/hz0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hz0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 91
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v0

    .line 92
    iget-object v1, v0, Lcom/android/tools/r8/internal/tZ;->k:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    .line 93
    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/internal/tZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-eq v0, v1, :cond_3

    :cond_2
    return-object v3

    .line 95
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_2

    .line 96
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v3

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 97
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_a

    const/16 v5, 0x21

    if-eq v4, v5, :cond_8

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_6

    return-object v3

    .line 98
    :cond_6
    iget-object v4, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    .line 99
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    .line 100
    iget-object v4, v4, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 101
    iget-object v4, v4, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 102
    invoke-virtual {v4, v2}, Lcom/android/tools/r8/graph/s3;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 103
    iget-object v4, v2, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    const/16 v5, 0x4000

    .line 104
    iget v4, v4, Lcom/android/tools/r8/graph/g;->c:I

    .line 105
    invoke-static {v4, v5}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_7

    return-object v3

    :cond_7
    move-object v1, v2

    goto :goto_1

    .line 106
    :cond_8
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v2

    .line 107
    iget-object v4, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 108
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    if-eq v2, p1, :cond_5

    :cond_9
    return-object v3

    .line 109
    :cond_a
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    if-ne v4, p1, :cond_b

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 111
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Eo0;->b(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Fm0;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 112
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Fm0;->U()Lcom/android/tools/r8/internal/Q30;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    instance-of v2, v2, Lcom/android/tools/r8/internal/Zu;

    if-eqz v2, :cond_b

    goto/16 :goto_1

    :cond_b
    return-object v3

    :cond_c
    if-nez v1, :cond_d

    return-object v3

    .line 114
    :cond_d
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    .line 115
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 116
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 117
    iget-object v2, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-static {v2, v3, p1}, Lcom/android/tools/r8/internal/R30;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Q30;

    move-result-object p1

    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Q30;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 120
    new-instance p1, Lcom/android/tools/r8/internal/Nm0;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/internal/Nm0;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object p1

    .line 121
    :cond_e
    new-instance v0, Lcom/android/tools/r8/internal/Mm0;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/Mm0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/Q30;)V

    return-object v0

    :cond_f
    :goto_2
    return-object v3
.end method

.method public final a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/hw;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 21
    sget-boolean p2, Lcom/android/tools/r8/internal/Eo0;->k:Z

    if-nez p2, :cond_1

    .line 22
    instance-of p2, p1, Lcom/android/tools/r8/graph/F5;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/Eo0;->a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object p2

    .line 25
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/tools/r8/internal/Eo0;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/F1;Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/R2;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->g:Lcom/android/tools/r8/internal/Nn;

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 5
    sget-object v1, Lcom/android/tools/r8/internal/Mn;->a:Lcom/android/tools/r8/internal/Mn;

    .line 6
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 7
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/graph/j1;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/R2;->P0()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/R2;->R0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    instance-of p1, p2, Lcom/android/tools/r8/graph/Q2;

    if-eqz p1, :cond_2

    return-void

    .line 15
    :cond_2
    sget-boolean p1, Lcom/android/tools/r8/internal/Eo0;->k:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 16
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->d:Lcom/android/tools/r8/internal/k40;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-interface {v1, p1, v2, p2}, Lcom/android/tools/r8/internal/uw;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/F1;Z)V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/Eo0;->i:Lcom/android/tools/r8/internal/Fo0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/tools/r8/internal/Fo0;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/u1;)V

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->d:Lcom/android/tools/r8/internal/k40;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    invoke-interface {v0, v2, v1, p3}, Lcom/android/tools/r8/internal/uw;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;)V

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 31
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    .line 35
    invoke-static {p3, v1, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    .line 36
    invoke-static {v0, p3}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;

    move-result-object p3

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/zt;

    move-result-object p2

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v0, p3}, Lcom/android/tools/r8/internal/zt;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zt;)Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    .line 39
    iget-object p3, p2, Lcom/android/tools/r8/internal/zt;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object p3

    .line 40
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 41
    sget-boolean p3, Lcom/android/tools/r8/internal/Eo0;->k:Z

    if-nez p3, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 42
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/zt;->b(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/zt;

    move-result-object p2

    .line 43
    :cond_3
    iget-object p3, p0, Lcom/android/tools/r8/internal/Rw;->d:Lcom/android/tools/r8/internal/k40;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-interface {p3, p1, p2}, Lcom/android/tools/r8/internal/uw;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/internal/xt;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/u;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/Rw;->a(Lcom/android/tools/r8/ir/optimize/u;)V

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/SD0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/SD0;-><init>(Lcom/android/tools/r8/internal/Eo0;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/ir/optimize/u;->a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;)Z
    .locals 2

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/graph/j1;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a([Lcom/android/tools/r8/internal/Q30;[Lcom/android/tools/r8/graph/M2;ILcom/android/tools/r8/internal/xw0;)Z
    .locals 6

    .line 69
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    .line 70
    invoke-interface {p4}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 71
    :cond_0
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p4

    .line 72
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    instance-of v0, p4, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v0, :cond_1

    return v1

    .line 74
    :cond_1
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 75
    iget-object v2, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-static {v2, v3, v0}, Lcom/android/tools/r8/internal/R30;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Q30;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_9

    .line 76
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Q30;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 77
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    .line 78
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    .line 79
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/J1;->b:Lcom/android/tools/r8/graph/l1;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    iget-object v5, v3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Q30;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 83
    instance-of v3, v2, Lcom/android/tools/r8/internal/Im0;

    if-nez v3, :cond_5

    goto :goto_2

    .line 84
    :cond_5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object v2

    .line 85
    iget-wide v2, v2, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int v2, v2

    if-ne v2, p3, :cond_9

    .line 86
    aget-object v2, p1, p3

    if-eqz v2, :cond_6

    return v1

    .line 87
    :cond_6
    sget-boolean v1, Lcom/android/tools/r8/internal/Eo0;->k:Z

    if-nez v1, :cond_8

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 88
    :cond_8
    :goto_1
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/tZ;->u2()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    aput-object p4, p2, p3

    .line 89
    aput-object v0, p1, p3

    const/4 p1, 0x1

    return p1

    :cond_9
    :goto_2
    return v1
.end method

.method public final b(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Fm0;
    .locals 9

    iget-object v0, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->Z1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Eo0;->j:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/F1;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Fm0;->U()Lcom/android/tools/r8/internal/Q30;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/Zu;

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->t0()Lcom/android/tools/r8/internal/oZ;

    move-result-object v0

    iget-object v2, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->u0()Lcom/android/tools/r8/internal/qZ;

    move-result-object v2

    sget-boolean v3, Lcom/android/tools/r8/internal/Eo0;->k:Z

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    goto :goto_1

    :cond_5
    iget-object v3, v2, Lcom/android/tools/r8/internal/qZ;->l:Lcom/android/tools/r8/graph/M2;

    :goto_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-eq v3, v4, :cond_6

    goto/16 :goto_6

    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_6

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/oZ;->u2()I

    move-result v0

    goto :goto_2

    :cond_8
    iget-object v0, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    const/4 v3, 0x1

    if-ge v0, v3, :cond_9

    goto/16 :goto_6

    :cond_9
    new-array v3, v0, [Lcom/android/tools/r8/graph/M2;

    new-array v4, v0, [Lcom/android/tools/r8/internal/Q30;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_b

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0, v4, v3, v5, v6}, Lcom/android/tools/r8/internal/Eo0;->a([Lcom/android/tools/r8/internal/Q30;[Lcom/android/tools/r8/graph/M2;ILcom/android/tools/r8/internal/xw0;)Z

    move-result v6

    if-nez v6, :cond_a

    goto/16 :goto_6

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    sget-object v2, Lcom/android/tools/r8/internal/qj;->a:Lcom/android/tools/r8/internal/qj;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v5

    invoke-static {v2, p1, v5}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v5, v1

    :cond_c
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_11

    const/16 v8, 0x9

    if-eq v7, v8, :cond_10

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_d

    goto/16 :goto_6

    :cond_d
    iget-object v7, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v6

    iget-object v7, v7, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    iget-object v7, v7, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/graph/s3;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object v6

    if-nez v6, :cond_e

    goto/16 :goto_6

    :cond_e
    if-eqz v5, :cond_f

    goto :goto_6

    :cond_f
    move-object v5, v6

    goto :goto_4

    :cond_10
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_6

    :cond_11
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    if-eq v7, p1, :cond_12

    goto :goto_6

    :cond_12
    invoke-virtual {v6, v0}, Lcom/android/tools/r8/internal/J3;->b(I)I

    move-result v7

    if-gez v7, :cond_13

    goto :goto_6

    :cond_13
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {p0, v4, v3, v7, v6}, Lcom/android/tools/r8/internal/Eo0;->a([Lcom/android/tools/r8/internal/Q30;[Lcom/android/tools/r8/graph/M2;ILcom/android/tools/r8/internal/xw0;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_6

    :cond_14
    if-nez v5, :cond_15

    goto :goto_6

    :cond_15
    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_6

    :cond_16
    sget-boolean v0, Lcom/android/tools/r8/internal/Eo0;->k:Z

    if-nez v0, :cond_18

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_5

    :cond_17
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_18
    :goto_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    new-instance v2, Lcom/android/tools/r8/internal/Zu;

    invoke-direct {v2, v4, v3}, Lcom/android/tools/r8/internal/Zu;-><init>([Lcom/android/tools/r8/internal/Q30;[Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/tools/r8/internal/Mm0;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Mm0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/Q30;)V

    move-object v1, v0

    :cond_19
    :goto_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Eo0;->j:Ljava/util/IdentityHashMap;

    if-nez v1, :cond_1a

    sget-object v2, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    goto :goto_7

    :cond_1a
    move-object v2, v1

    :goto_7
    invoke-virtual {v0, p1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
