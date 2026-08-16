.class public final Lcom/android/tools/r8/shaking/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/shaking/N$a;

.field public final c:Lcom/android/tools/r8/internal/nJ;

.field public final d:Ljava/util/Set;

.field public final e:Lcom/android/tools/r8/shaking/I3;

.field public final f:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/shaking/N$a;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/h;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    iput-object p3, p0, Lcom/android/tools/r8/shaking/h;->c:Lcom/android/tools/r8/internal/nJ;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/h;->d:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/h;->e:Lcom/android/tools/r8/shaking/I3;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/h;->f:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/G5;)V
    .locals 1

    .line 111
    sget-boolean v0, Lcom/android/tools/r8/shaking/h;->g:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/tools/r8/graph/G5;->c0()Lcom/android/tools/r8/kotlin/Q;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/kotlin/Q;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Should have pruned kotlin info"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    .line 213
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 214
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    .line 216
    iput-object v1, v0, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    .line 217
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->y1()Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/yc;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/yc;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/Set;Lcom/android/tools/r8/graph/G5;)V
    .locals 2

    .line 107
    invoke-interface {p1}, Lcom/android/tools/r8/graph/G5;->c0()Lcom/android/tools/r8/kotlin/Q;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Lcom/android/tools/r8/kotlin/Q;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-interface {v0}, Lcom/android/tools/r8/kotlin/Q;->b()Lcom/android/tools/r8/kotlin/h0;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/kotlin/h0;->getReference()Lcom/android/tools/r8/kotlin/h0;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 110
    invoke-interface {p1}, Lcom/android/tools/r8/graph/G5;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->y0()V

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/r0;ZLcom/android/tools/r8/graph/p0;Lcom/android/tools/r8/shaking/t1;Lcom/android/tools/r8/internal/nJ;)Z
    .locals 8

    .line 68
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    sget-object v0, Lcom/android/tools/r8/graph/p0;->e:Lcom/android/tools/r8/graph/p0;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    .line 70
    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/t1;->a()Lcom/android/tools/r8/shaking/I1;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 71
    iget-object v5, p2, Lcom/android/tools/r8/shaking/I1;->B:Lcom/android/tools/r8/shaking/i1;

    .line 72
    iget-object p2, p4, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    .line 73
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object p2

    iget-boolean v6, p2, Lcom/android/tools/r8/shaking/I3;->m:Z

    .line 74
    iget-object p2, p4, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object p2

    iget-boolean v7, p2, Lcom/android/tools/r8/shaking/I3;->n:Z

    move-object v2, p4

    move-object v3, p0

    move v4, p1

    .line 75
    invoke-static/range {v2 .. v7}, Lcom/android/tools/r8/shaking/t1;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/r0;ZLcom/android/tools/r8/shaking/i1;ZZ)Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/r0;->n0()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 77
    iget-object v5, p3, Lcom/android/tools/r8/shaking/t1;->i:Lcom/android/tools/r8/shaking/i1;

    .line 78
    iget-object p2, p4, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    .line 79
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object p2

    iget-boolean v6, p2, Lcom/android/tools/r8/shaking/I3;->o:Z

    .line 80
    iget-object p2, p4, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object p2

    iget-boolean v7, p2, Lcom/android/tools/r8/shaking/I3;->p:Z

    move-object v2, p4

    move-object v3, p0

    move v4, p1

    .line 81
    invoke-static/range {v2 .. v7}, Lcom/android/tools/r8/shaking/t1;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/r0;ZLcom/android/tools/r8/shaking/i1;ZZ)Z

    move-result p0

    :goto_0
    xor-int/2addr p0, v1

    return p0

    .line 82
    :cond_2
    iget-object v5, p3, Lcom/android/tools/r8/shaking/t1;->h:Lcom/android/tools/r8/shaking/i1;

    .line 83
    iget-object p2, p4, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    .line 84
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object p2

    iget-boolean v6, p2, Lcom/android/tools/r8/shaking/I3;->k:Z

    .line 85
    iget-object p2, p4, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object p2

    iget-boolean v7, p2, Lcom/android/tools/r8/shaking/I3;->l:Z

    move-object v2, p4

    move-object v3, p0

    move v4, p1

    .line 86
    invoke-static/range {v2 .. v7}, Lcom/android/tools/r8/shaking/t1;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/r0;ZLcom/android/tools/r8/shaking/i1;ZZ)Z

    move-result p0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/t0;Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 139
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/r0;ZLcom/android/tools/r8/graph/p0;Lcom/android/tools/r8/shaking/N$a;Lcom/android/tools/r8/shaking/t1;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->e0()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 5
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 6
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object v4

    goto :goto_1

    .line 8
    :cond_2
    sget v4, Lcom/android/tools/r8/internal/hC;->c:I

    .line 9
    sget-object v4, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 10
    invoke-static {v4}, Lcom/android/tools/r8/shaking/I3;->a(Ljava/util/List;)Lcom/android/tools/r8/shaking/I3;

    move-result-object v4

    .line 11
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    .line 12
    iget v6, p2, Lcom/android/tools/r8/graph/r0;->b:I

    if-eqz v6, :cond_20

    if-eq v6, v2, :cond_1b

    const/4 p3, 0x2

    if-ne v6, p3, :cond_1a

    .line 13
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object p3, Lcom/android/tools/r8/graph/p0;->e:Lcom/android/tools/r8/graph/p0;

    if-ne p4, p3, :cond_3

    return v3

    .line 15
    :cond_3
    sget-boolean p3, Lcom/android/tools/r8/shaking/h;->g:Z

    if-nez p3, :cond_5

    .line 16
    iget-object p4, p2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p4, p4, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p5, v5, Lcom/android/tools/r8/graph/u1;->A5:Lcom/android/tools/r8/graph/M2;

    if-eq p4, p5, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    if-nez p3, :cond_7

    .line 18
    iget-object p4, p2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p4, p4, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p5, v5, Lcom/android/tools/r8/graph/u1;->B5:Lcom/android/tools/r8/graph/M2;

    if-eq p4, p5, :cond_6

    goto :goto_3

    .line 19
    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_3
    if-nez p3, :cond_9

    .line 20
    iget-object p4, p2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p4, p4, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p5, v5, Lcom/android/tools/r8/graph/u1;->z5:Lcom/android/tools/r8/graph/M2;

    if-eq p4, p5, :cond_8

    goto :goto_4

    .line 21
    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_9
    :goto_4
    if-nez p3, :cond_b

    .line 22
    iget-object p4, p2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p4, p4, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p5, v5, Lcom/android/tools/r8/graph/u1;->y5:Lcom/android/tools/r8/graph/M2;

    if-eq p4, p5, :cond_a

    goto :goto_5

    .line 23
    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_b
    :goto_5
    if-nez p3, :cond_d

    .line 24
    iget-boolean p4, v0, Lcom/android/tools/r8/internal/nJ;->y:Z

    if-nez p4, :cond_d

    .line 25
    invoke-static {p2, v5}, Lcom/android/tools/r8/graph/r0;->d(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/u1;)Z

    move-result p4

    if-nez p4, :cond_c

    goto :goto_6

    .line 26
    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 27
    :cond_d
    :goto_6
    iget-object p4, p2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p4, p4, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p5, v5, Lcom/android/tools/r8/graph/u1;->O5:Lcom/android/tools/r8/graph/M2;

    if-ne p4, p5, :cond_11

    .line 28
    invoke-virtual {p6}, Lcom/android/tools/r8/shaking/t1;->a()Lcom/android/tools/r8/shaking/I1;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 29
    iget-object p1, v0, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    if-eqz p1, :cond_f

    .line 30
    iget-boolean p2, v0, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-eqz p2, :cond_e

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/I3;->f:Z

    if-eqz p1, :cond_e

    goto :goto_7

    .line 32
    :cond_e
    iget-boolean p0, p0, Lcom/android/tools/r8/shaking/I1;->l:Z

    if-eqz p0, :cond_f

    goto :goto_8

    :cond_f
    :goto_7
    return v2

    :cond_10
    :goto_8
    return v3

    .line 33
    :cond_11
    iget-object p5, v5, Lcom/android/tools/r8/graph/u1;->N5:Lcom/android/tools/r8/graph/M2;

    if-ne p4, p5, :cond_14

    if-nez p3, :cond_13

    .line 34
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->e0()Z

    move-result p3

    if-eqz p3, :cond_12

    goto :goto_9

    :cond_12
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 35
    :cond_13
    :goto_9
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    iget-object p2, p2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    aget-object p2, p2, v3

    iget-object p2, p2, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object p2

    .line 36
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->L:Ljava/util/IdentityHashMap;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-boolean p0, v4, Lcom/android/tools/r8/shaking/I3;->j:Z

    return p0

    .line 38
    :cond_14
    iget-object p0, v5, Lcom/android/tools/r8/graph/u1;->C5:Lcom/android/tools/r8/graph/M2;

    if-ne p4, p0, :cond_18

    .line 39
    invoke-virtual {p6}, Lcom/android/tools/r8/shaking/t1;->a()Lcom/android/tools/r8/shaking/I1;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 40
    iget-object p1, v0, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    if-eqz p1, :cond_16

    .line 41
    iget-boolean p2, v0, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-eqz p2, :cond_15

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/I3;->i:Z

    if-eqz p1, :cond_15

    goto :goto_a

    .line 43
    :cond_15
    iget-boolean p0, p0, Lcom/android/tools/r8/shaking/I1;->A:Z

    if-eqz p0, :cond_16

    goto :goto_b

    :cond_16
    :goto_a
    return v2

    :cond_17
    :goto_b
    return v3

    :cond_18
    if-eqz v1, :cond_19

    .line 44
    iget-object p0, v5, Lcom/android/tools/r8/graph/u1;->x5:Lcom/android/tools/r8/graph/M2;

    if-ne p4, p0, :cond_19

    return v2

    :cond_19
    return v3

    .line 45
    :cond_1a
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    const-string p1, "Unexpected annotation visibility."

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    if-eqz v1, :cond_1f

    .line 46
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    iget-object p1, v5, Lcom/android/tools/r8/graph/u1;->s3:Lcom/android/tools/r8/graph/M2;

    if-ne p0, p1, :cond_1f

    .line 47
    iget-object p0, p2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/e1;->k0()I

    move-result p0

    if-eq p0, v2, :cond_1c

    goto :goto_c

    .line 48
    :cond_1c
    iget-object p0, p2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/graph/e1;->j(I)Lcom/android/tools/r8/graph/t0;

    move-result-object p0

    .line 49
    iget-object p1, p0, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    iget-object p5, v5, Lcom/android/tools/r8/graph/u1;->o1:Lcom/android/tools/r8/graph/L2;

    .line 50
    invoke-virtual {p1, p5}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_c

    .line 51
    :cond_1d
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/t0;->l0()Lcom/android/tools/r8/graph/R2;

    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    instance-of p1, p0, Lcom/android/tools/r8/graph/T2;

    if-eqz p1, :cond_1e

    .line 54
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->t0()Lcom/android/tools/r8/graph/T2;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/T2;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/l1;

    iget-object p1, v5, Lcom/android/tools/r8/graph/u1;->T4:Lcom/android/tools/r8/graph/Q1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/Q1;->a:Lcom/android/tools/r8/graph/l1;

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result p0

    if-nez p0, :cond_1f

    :cond_1e
    :goto_c
    return v2

    .line 57
    :cond_1f
    invoke-static {p2, p3, p4, p6, v0}, Lcom/android/tools/r8/shaking/h;->a(Lcom/android/tools/r8/graph/r0;ZLcom/android/tools/r8/graph/p0;Lcom/android/tools/r8/shaking/t1;Lcom/android/tools/r8/internal/nJ;)Z

    move-result p0

    return p0

    .line 58
    :cond_20
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->u1:Lcom/android/tools/r8/graph/L2;

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    iget-object v1, v1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p1

    if-eqz p1, :cond_21

    return v2

    .line 62
    :cond_21
    invoke-virtual {p5}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 63
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    sget-object p1, Lcom/android/tools/r8/graph/p0;->c:Lcom/android/tools/r8/graph/p0;

    if-ne p4, p1, :cond_22

    .line 65
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 66
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->p()Lcom/android/tools/r8/internal/Mf;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/internal/Mf;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    if-eqz p0, :cond_22

    return v2

    .line 67
    :cond_22
    invoke-static {p2, p3, p4, p6, v0}, Lcom/android/tools/r8/shaking/h;->a(Lcom/android/tools/r8/graph/r0;ZLcom/android/tools/r8/graph/p0;Lcom/android/tools/r8/shaking/t1;Lcom/android/tools/r8/internal/nJ;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/e1;)Lcom/android/tools/r8/graph/e1;
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 126
    iget-object v1, p1, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/android/tools/r8/shaking/h;->f:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 130
    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 131
    new-instance v2, Lcom/android/tools/r8/shaking/pc;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/shaking/pc;-><init>(Lcom/android/tools/r8/internal/Hz;)V

    new-instance v0, Lcom/android/tools/r8/shaking/sc;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/shaking/sc;-><init>(Lcom/android/tools/r8/shaking/h;Lcom/android/tools/r8/graph/M2;)V

    .line 132
    invoke-virtual {p1, v2, v0}, Lcom/android/tools/r8/graph/e1;->a(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/tools/r8/graph/e1;

    move-result-object p1

    .line 133
    sget-boolean v0, Lcom/android/tools/r8/shaking/h;->g:Z

    .line 134
    iget-object v2, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/i;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    .line 135
    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    .line 136
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/i;->i(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/t1;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/p0;)Lcom/android/tools/r8/graph/r0;
    .locals 0

    .line 142
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/shaking/h;->b(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/t1;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/p0;)Lcom/android/tools/r8/graph/r0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/t0;)Lcom/android/tools/r8/graph/t0;
    .locals 0

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/h;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/t0;)Lcom/android/tools/r8/graph/t0;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/shaking/h;
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->e:Lcom/android/tools/r8/shaking/I3;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-eqz v1, :cond_0

    .line 88
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->c:Z

    .line 89
    iget-boolean v2, v0, Lcom/android/tools/r8/shaking/I3;->d:Z

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    .line 90
    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->d:Z

    .line 91
    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->c:Z

    .line 92
    :cond_0
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->c:Z

    if-eqz v1, :cond_2

    .line 93
    iget-boolean v2, v0, Lcom/android/tools/r8/shaking/I3;->d:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/If;

    const-string v1, "Attribute InnerClasses requires EnclosingMethod attribute. Check -keepattributes directive."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    if-nez v1, :cond_4

    .line 95
    iget-boolean v0, v0, Lcom/android/tools/r8/shaking/I3;->d:Z

    if-nez v0, :cond_3

    goto :goto_1

    .line 96
    :cond_3
    new-instance v0, Lcom/android/tools/r8/internal/If;

    const-string v1, "Attribute EnclosingMethod requires InnerClasses attribute. Check -keepattributes directive."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/t1;)V
    .locals 1

    .line 140
    sget-boolean v0, Lcom/android/tools/r8/shaking/h;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 141
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/shaking/qc;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/shaking/qc;-><init>(Lcom/android/tools/r8/shaking/h;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/t1;)V

    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/D5;->a(Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v0

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/h;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/t1;)V

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/h;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/l1;)V

    .line 104
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/android/tools/r8/shaking/zc;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/tools/r8/shaking/zc;-><init>(Lcom/android/tools/r8/shaking/h;Lcom/android/tools/r8/graph/H2;Ljava/util/Set;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/H2;->k(Ljava/util/function/Consumer;)V

    .line 106
    new-instance v1, Lcom/android/tools/r8/shaking/Ac;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/shaking/Ac;-><init>(Ljava/util/Set;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/H2;->k(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/l1;)V
    .locals 1

    .line 143
    new-instance v0, Lcom/android/tools/r8/shaking/uc;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/shaking/uc;-><init>(Lcom/android/tools/r8/shaking/h;Lcom/android/tools/r8/shaking/l1;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->d(Ljava/util/function/Predicate;)V

    .line 144
    new-instance v0, Lcom/android/tools/r8/shaking/vc;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/shaking/vc;-><init>(Lcom/android/tools/r8/shaking/h;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->e(Ljava/util/function/Predicate;)V

    .line 145
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/shaking/t1;->f(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->D0()V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->c:Lcom/android/tools/r8/internal/nJ;

    .line 150
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/shaking/I3;->s:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    iget-boolean p2, p2, Lcom/android/tools/r8/shaking/l1;->m:Z

    if-eqz p2, :cond_2

    .line 153
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/graph/G5;)V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    invoke-interface {p3}, Lcom/android/tools/r8/graph/G5;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    invoke-interface {p3}, Lcom/android/tools/r8/graph/G5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/h1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/F1;

    move-result-object v0

    .line 114
    invoke-virtual {p0, p3, v0}, Lcom/android/tools/r8/shaking/h;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/t1;)V

    .line 115
    iget-object v1, p0, Lcom/android/tools/r8/shaking/h;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->f(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-interface {p3}, Lcom/android/tools/r8/graph/G5;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->t()V

    .line 117
    :cond_0
    invoke-interface {p3}, Lcom/android/tools/r8/graph/G5;->c0()Lcom/android/tools/r8/kotlin/Q;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/kotlin/Q;->a()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/shaking/h;->c:Lcom/android/tools/r8/internal/nJ;

    .line 118
    iget-object v2, p1, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 119
    invoke-interface {v2}, Lcom/android/tools/r8/kotlin/p;->c()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 120
    :cond_1
    invoke-interface {p3}, Lcom/android/tools/r8/graph/G5;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->y0()V

    .line 121
    :cond_2
    invoke-interface {p3}, Lcom/android/tools/r8/graph/G5;->c0()Lcom/android/tools/r8/kotlin/Q;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/kotlin/Q;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/shaking/h;->c:Lcom/android/tools/r8/internal/nJ;

    .line 122
    iget-object p1, p1, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 123
    invoke-interface {p1}, Lcom/android/tools/r8/kotlin/p;->c()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 124
    :cond_3
    invoke-interface {p3}, Lcom/android/tools/r8/graph/G5;->c0()Lcom/android/tools/r8/kotlin/Q;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/kotlin/Q;->b()Lcom/android/tools/r8/kotlin/h0;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/kotlin/h0;->getReference()Lcom/android/tools/r8/kotlin/h0;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    .line 98
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/rc;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/rc;-><init>(Lcom/android/tools/r8/shaking/h;)V

    iget-object v2, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    .line 99
    invoke-static {v2, v0, v1, p1}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    .line 100
    sget-boolean p1, Lcom/android/tools/r8/shaking/h;->g:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/h;->b()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/e4;)Z
    .locals 4

    .line 171
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v0

    .line 172
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_7

    .line 173
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->r1()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->m1()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 174
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/shaking/h;->g:Z

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 175
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    .line 176
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object p1

    .line 177
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object v1, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    invoke-interface {v1, p2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/shaking/l1;

    move-result-object p1

    .line 179
    iget-object p2, p0, Lcom/android/tools/r8/shaking/h;->c:Lcom/android/tools/r8/internal/nJ;

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    iget-object v1, p2, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    .line 182
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/I3;->c:Z

    if-nez v1, :cond_3

    return v3

    .line 183
    :cond_3
    iget-boolean v1, p2, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-eqz v1, :cond_4

    return v2

    :cond_4
    if-eqz v0, :cond_6

    .line 184
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    :goto_1
    return v3

    .line 185
    :cond_7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-nez v0, :cond_a

    .line 186
    sget-boolean v0, Lcom/android/tools/r8/shaking/h;->g:Z

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->r1()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->m1()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 187
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    .line 188
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object p1

    .line 189
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    invoke-interface {v0, p2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/shaking/l1;

    move-result-object p1

    .line 191
    iget-object p2, p0, Lcom/android/tools/r8/shaking/h;->c:Lcom/android/tools/r8/internal/nJ;

    .line 192
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/t1;->a(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    return p1

    .line 193
    :cond_a
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-nez p1, :cond_d

    .line 194
    sget-boolean p1, Lcom/android/tools/r8/shaking/h;->g:Z

    if-nez p1, :cond_c

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-eqz p1, :cond_b

    goto :goto_3

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 195
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    .line 196
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object p1

    .line 197
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    invoke-interface {v0, p2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/shaking/l1;

    move-result-object p1

    .line 199
    iget-object p2, p0, Lcom/android/tools/r8/shaking/h;->c:Lcom/android/tools/r8/internal/nJ;

    .line 200
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/t1;->a(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    return p1

    .line 201
    :cond_d
    sget-boolean p1, Lcom/android/tools/r8/shaking/h;->g:Z

    if-nez p1, :cond_f

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-eqz p1, :cond_e

    goto :goto_4

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 202
    :cond_f
    :goto_4
    iget-object p1, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    .line 203
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object p1

    .line 204
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    invoke-interface {v1, v0}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/shaking/l1;

    move-result-object p1

    .line 206
    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->c:Lcom/android/tools/r8/internal/nJ;

    .line 207
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/t1;->a(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    .line 208
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object p1

    .line 209
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    invoke-interface {v0, p2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/shaking/l1;

    move-result-object p1

    .line 211
    iget-object p2, p0, Lcom/android/tools/r8/shaking/h;->c:Lcom/android/tools/r8/internal/nJ;

    .line 212
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/t1;->a(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_5

    :cond_10
    return v2

    :cond_11
    :goto_5
    return v3
.end method

.method public final a(Lcom/android/tools/r8/shaking/l1;Lcom/android/tools/r8/graph/i3;)Z
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    iget-object v2, v0, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    .line 156
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/tools/r8/shaking/I3;->d:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    .line 157
    :cond_0
    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->d1:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    return v4

    .line 158
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 159
    iget-object p1, p2, Lcom/android/tools/r8/graph/i3;->b:Lcom/android/tools/r8/graph/A2;

    if-eqz p1, :cond_3

    .line 160
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i;

    iget-object p2, p2, Lcom/android/tools/r8/graph/i3;->b:Lcom/android/tools/r8/graph/A2;

    .line 161
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_2

    .line 162
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->c()V

    .line 163
    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 164
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/Q0;Lcom/android/tools/r8/graph/d1;)Z

    move-result p1

    goto :goto_0

    .line 165
    :cond_3
    iget-object p1, p2, Lcom/android/tools/r8/graph/i3;->a:Lcom/android/tools/r8/graph/M2;

    if-eqz p1, :cond_5

    .line 166
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i;

    iget-object p2, p2, Lcom/android/tools/r8/graph/i3;->a:Lcom/android/tools/r8/graph/M2;

    .line 167
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_4

    .line 168
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->c()V

    .line 169
    :cond_4
    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 170
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/Q0;Lcom/android/tools/r8/graph/d1;)Z

    move-result p1

    goto :goto_0

    :cond_5
    move p1, v4

    :goto_0
    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    return v4

    :cond_7
    :goto_1
    return v3
.end method

.method public final b(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/t1;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/p0;)Lcom/android/tools/r8/graph/r0;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->d:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    iget-object v0, p3, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/shaking/i;->i(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    .line 4
    iget-object v6, p0, Lcom/android/tools/r8/shaking/h;->b:Lcom/android/tools/r8/shaking/N$a;

    move-object v2, p1

    move-object v3, p3

    move-object v5, p4

    move-object v7, p2

    .line 5
    invoke-static/range {v1 .. v7}, Lcom/android/tools/r8/shaking/h;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/r0;ZLcom/android/tools/r8/graph/p0;Lcom/android/tools/r8/shaking/N$a;Lcom/android/tools/r8/shaking/t1;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_1
    :goto_0
    new-instance p1, Lcom/android/tools/r8/shaking/xc;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/shaking/xc;-><init>(Lcom/android/tools/r8/shaking/h;)V

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/r0;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/r0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/t0;)Lcom/android/tools/r8/graph/t0;
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->x5:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->o1:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p2, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/shaking/h;->g:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/shaking/tc;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/shaking/tc;-><init>(Lcom/android/tools/r8/graph/t0;)V

    .line 16
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/N4;->b(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_1
    return-object p2

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/shaking/h;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 8
    iget-object v2, v1, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 9
    invoke-interface {v2}, Lcom/android/tools/r8/kotlin/p;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    new-instance v2, Lcom/android/tools/r8/shaking/wc;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/wc;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/H2;->k(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    return-void
.end method
