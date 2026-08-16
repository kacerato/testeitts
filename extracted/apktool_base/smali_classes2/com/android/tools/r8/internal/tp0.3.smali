.class public final Lcom/android/tools/r8/internal/tp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ZR;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/nJ;

.field public final d:Lcom/android/tools/r8/graph/q2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object p1, p0, Lcom/android/tools/r8/internal/tp0;->a:Lcom/android/tools/r8/graph/y;

    iput-object v0, p0, Lcom/android/tools/r8/internal/tp0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/tp0;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, v0, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iput-object p1, p0, Lcom/android/tools/r8/internal/tp0;->d:Lcom/android/tools/r8/graph/q2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;Lcom/android/tools/r8/internal/YR;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/EE;
    .locals 9

    move-object v8, p0

    .line 1
    move-object/from16 v5, p8

    check-cast v5, Lcom/android/tools/r8/internal/sp0;

    .line 2
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v2

    .line 4
    iget-object v0, v8, Lcom/android/tools/r8/internal/tp0;->d:Lcom/android/tools/r8/graph/q2;

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/graph/q2;->s:Lcom/android/tools/r8/internal/QC;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p3

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 7
    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/tp0;->a(Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/WJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/sp0;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)V

    return-object p3

    .line 8
    :cond_0
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    iget-object v1, v8, Lcom/android/tools/r8/internal/tp0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/q2;->r:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v1, :cond_4

    .line 9
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    iget-object v1, v8, Lcom/android/tools/r8/internal/tp0;->b:Lcom/android/tools/r8/graph/u1;

    .line 10
    :goto_0
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v0

    .line 14
    iget-object v0, v0, Lcom/android/tools/r8/internal/tZ;->k:Lcom/android/tools/r8/graph/M2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_4

    .line 15
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->A()Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    :cond_2
    invoke-interface {p3}, Lcom/android/tools/r8/internal/EE;->i()V

    return-object p3

    .line 17
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v0

    .line 19
    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 20
    iget-object v3, v3, Lcom/android/tools/r8/graph/q2;->s:Lcom/android/tools/r8/internal/QC;

    .line 21
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    goto :goto_0

    :cond_4
    :goto_1
    return-object p3
.end method

.method public final a()Lcom/android/tools/r8/internal/YR;
    .locals 1

    .line 23
    new-instance v0, Lcom/android/tools/r8/internal/sp0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/sp0;-><init>(Lcom/android/tools/r8/internal/tp0;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/WJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/sp0;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)V
    .locals 2

    .line 24
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 25
    iget-object v1, p5, Lcom/android/tools/r8/internal/sp0;->a:Lcom/android/tools/r8/internal/Uc0;

    .line 26
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Uc0;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 27
    invoke-virtual {p5, v0}, Lcom/android/tools/r8/internal/sp0;->a(Lcom/android/tools/r8/internal/xw0;)V

    .line 28
    sget-boolean v1, Lcom/android/tools/r8/internal/sp0;->c:Z

    if-nez v1, :cond_1

    iget-object v1, p5, Lcom/android/tools/r8/internal/sp0;->a:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Uc0;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 29
    :cond_1
    :goto_0
    iget-object p5, p5, Lcom/android/tools/r8/internal/sp0;->a:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {p5, v0}, Lcom/android/tools/r8/internal/Uc0;->a(Ljava/lang/Object;)Z

    move-result p5

    .line 30
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/tp0;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p5, :cond_3

    .line 31
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 32
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object p4

    new-instance v0, Lcom/android/tools/r8/internal/tK0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/tK0;-><init>()V

    invoke-interface {p4, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    const/4 p4, 0x0

    .line 33
    invoke-virtual {p2, p4}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    :cond_3
    if-eqz p5, :cond_d

    .line 34
    sget-boolean p4, Lcom/android/tools/r8/internal/tp0;->e:Z

    if-nez p4, :cond_5

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result p4

    if-nez p4, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 35
    :cond_5
    :goto_1
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    .line 36
    iget-object p4, p0, Lcom/android/tools/r8/internal/tp0;->d:Lcom/android/tools/r8/graph/q2;

    .line 37
    iget-object p4, p4, Lcom/android/tools/r8/graph/q2;->t:Lcom/android/tools/r8/internal/QC;

    .line 38
    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_c

    .line 39
    iget-object p4, p0, Lcom/android/tools/r8/internal/tp0;->d:Lcom/android/tools/r8/graph/q2;

    .line 40
    iget-object p5, p4, Lcom/android/tools/r8/graph/q2;->l:Lcom/android/tools/r8/graph/A2;

    if-ne p3, p5, :cond_6

    goto/16 :goto_3

    .line 41
    :cond_6
    iget-object p4, p4, Lcom/android/tools/r8/graph/q2;->k:Lcom/android/tools/r8/graph/A2;

    if-ne p3, p4, :cond_b

    const/4 p3, 0x1

    .line 42
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 43
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 44
    sget-boolean p3, Lcom/android/tools/r8/internal/mK;->o:Z

    .line 45
    new-instance p3, Lcom/android/tools/r8/internal/lK;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/lK;-><init>()V

    .line 46
    iget-object p4, p0, Lcom/android/tools/r8/internal/tp0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p4, p4, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object p4, p4, Lcom/android/tools/r8/graph/u1$c;->h:Lcom/android/tools/r8/graph/A2;

    .line 47
    iput-object p4, p3, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 48
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/lK;

    .line 49
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/lK;->c()Lcom/android/tools/r8/internal/mK;

    move-result-object p2

    .line 50
    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void

    .line 51
    :cond_7
    iget-object p4, p0, Lcom/android/tools/r8/internal/tp0;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    sget-object p5, Lcom/android/tools/r8/internal/C2;->u:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p4, p5}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 53
    sget-boolean p3, Lcom/android/tools/r8/internal/gK;->o:Z

    .line 54
    new-instance p3, Lcom/android/tools/r8/internal/fK;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/fK;-><init>()V

    .line 55
    iget-object p4, p0, Lcom/android/tools/r8/internal/tp0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p4, p4, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object p4, p4, Lcom/android/tools/r8/graph/j2;->k:Lcom/android/tools/r8/graph/A2;

    .line 56
    iput-object p4, p3, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 57
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/fK;

    .line 58
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object p2

    .line 59
    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    .line 60
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    return-void

    .line 61
    :cond_8
    iget-object p4, p0, Lcom/android/tools/r8/internal/tp0;->a:Lcom/android/tools/r8/graph/y;

    .line 62
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/dX;->d()Lcom/android/tools/r8/internal/fX;

    move-result-object p5

    .line 63
    invoke-static {p4, p5, p7}, Lcom/android/tools/r8/ir/optimize/M0;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/ir/optimize/L0;

    move-result-object p4

    .line 64
    iget-object p5, p4, Lcom/android/tools/r8/ir/optimize/L0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p6, p5}, Lcom/android/tools/r8/internal/dX;->b(Lcom/android/tools/r8/graph/H5;)V

    .line 65
    iput-boolean p3, p4, Lcom/android/tools/r8/ir/optimize/L0;->b:Z

    .line 66
    sget-boolean p3, Lcom/android/tools/r8/internal/gK;->o:Z

    .line 67
    new-instance p3, Lcom/android/tools/r8/internal/fK;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/fK;-><init>()V

    .line 68
    sget-boolean p5, Lcom/android/tools/r8/ir/optimize/L0;->c:Z

    if-nez p5, :cond_a

    iget-boolean p5, p4, Lcom/android/tools/r8/ir/optimize/L0;->b:Z

    if-eqz p5, :cond_9

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 69
    :cond_a
    :goto_2
    iget-object p4, p4, Lcom/android/tools/r8/ir/optimize/L0;->a:Lcom/android/tools/r8/graph/H5;

    .line 70
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    .line 71
    iput-object p4, p3, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 72
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/fK;

    .line 73
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object p2

    .line 74
    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    :cond_b
    return-void

    .line 75
    :cond_c
    :goto_3
    invoke-interface {p1}, Lcom/android/tools/r8/internal/EE;->i()V

    :cond_d
    return-void
.end method

.method public final getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/tp0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method
