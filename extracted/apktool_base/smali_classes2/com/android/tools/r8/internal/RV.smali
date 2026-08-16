.class public abstract Lcom/android/tools/r8/internal/RV;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/androidapi/a;

.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    iput-object v0, p0, Lcom/android/tools/r8/internal/RV;->a:Lcom/android/tools/r8/androidapi/a;

    iput-object p1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/RV;->c:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 93
    invoke-static {p1, p2, p3, p4}, Lcom/android/tools/r8/internal/RV;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0

    .line 94
    :cond_0
    invoke-interface {p1, p3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/M2;
    .locals 4

    .line 98
    invoke-interface {p0, p2}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    invoke-interface {p3, v0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/h1;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->i1()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-static {p0, p1, v2, p3}, Lcom/android/tools/r8/internal/RV;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 103
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return-object v2

    .line 104
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 105
    invoke-static {p0, p1, v3, p3}, Lcom/android/tools/r8/internal/RV;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 106
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result p0

    if-eqz p0, :cond_5

    :goto_0
    return-object p2

    :cond_5
    return-object v3

    :cond_6
    return-object v1
.end method

.method public static a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/tools/r8/graph/F5;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/l1;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/qV0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/qV0;-><init>()V

    .line 6
    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/tools/r8/internal/RV;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p0}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/android/tools/r8/graph/l1;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 7

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/internal/RV;->d:Z

    if-nez v0, :cond_1

    .line 12
    instance-of v1, p1, Lcom/android/tools/r8/graph/H5;

    if-nez v1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    sget-object v1, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    if-ne p4, v1, :cond_2

    return-object p5

    .line 16
    :cond_2
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/kK;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    sget-object v2, Lcom/android/tools/r8/internal/C2;->z:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 18
    :cond_3
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/kK;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->c:Lcom/android/tools/r8/internal/nJ;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    sget-object v3, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-nez v0, :cond_5

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_5
    :goto_1
    iget-object v0, p2, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    :goto_2
    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v1

    if-nez v1, :cond_6

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-nez v0, :cond_8

    .line 25
    sget-boolean v0, Lcom/android/tools/r8/internal/RV;->d:Z

    if-nez v0, :cond_10

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_5

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_10

    .line 27
    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 28
    :cond_9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    .line 30
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/pV0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/pV0;-><init>()V

    .line 31
    invoke-static {p2, p3, p4, v0, v1}, Lcom/android/tools/r8/internal/RV;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    if-nez p2, :cond_a

    goto :goto_4

    .line 32
    :cond_a
    iget-object p3, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-nez p2, :cond_b

    :goto_4
    return-object p5

    .line 33
    :cond_b
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    if-ne p2, p3, :cond_c

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1

    .line 35
    :cond_c
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    iget-object p3, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1

    .line 37
    :cond_d
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->i1()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_5

    .line 38
    :cond_e
    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 39
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 40
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object v0

    goto :goto_3

    :cond_f
    move-object v0, v2

    goto :goto_3

    :cond_10
    :goto_5
    if-eqz p2, :cond_1e

    .line 41
    iget-object v0, p2, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v1, p2, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    .line 42
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 43
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p2

    .line 44
    instance-of v1, v0, Lcom/android/tools/r8/graph/A4;

    const/4 v3, 0x0

    if-eqz v1, :cond_1b

    .line 45
    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->c:Lcom/android/tools/r8/internal/nJ;

    .line 46
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 47
    :cond_11
    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/graph/A4;

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/tools/r8/internal/RV;->a(Lcom/android/tools/r8/graph/A4;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/internal/m80;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 48
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/kK;->d()Z

    move-result p2

    if-eqz p2, :cond_12

    goto/16 :goto_9

    .line 49
    :cond_12
    iget-object p2, p0, Lcom/android/tools/r8/internal/RV;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    sget-object v4, Lcom/android/tools/r8/internal/C2;->x:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p2, v4}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 51
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 52
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/kK;->d()Z

    move-result p2

    if-eqz p2, :cond_13

    goto :goto_9

    .line 53
    :cond_13
    iget-object p2, p0, Lcom/android/tools/r8/internal/RV;->a:Lcom/android/tools/r8/androidapi/a;

    iget-object v4, p0, Lcom/android/tools/r8/internal/RV;->c:Lcom/android/tools/r8/internal/nJ;

    .line 54
    invoke-virtual {p2}, Lcom/android/tools/r8/androidapi/a;->a()Z

    move-result v5

    if-nez v5, :cond_15

    .line 55
    sget-boolean p2, Lcom/android/tools/r8/internal/G2;->a:Z

    if-nez p2, :cond_19

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object p2

    .line 56
    iget-boolean p2, p2, Lcom/android/tools/r8/internal/H2;->a:Z

    if-nez p2, :cond_14

    goto :goto_7

    .line 57
    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 58
    :cond_15
    sget-boolean v5, Lcom/android/tools/r8/internal/G2;->a:Z

    if-nez v5, :cond_17

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v5

    .line 59
    iget-boolean v5, v5, Lcom/android/tools/r8/internal/H2;->a:Z

    if-eqz v5, :cond_16

    goto :goto_6

    .line 60
    :cond_16
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 61
    :cond_17
    :goto_6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    sget v5, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v5, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 62
    invoke-virtual {p2, v1, v5}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v1

    .line 63
    invoke-interface {v1}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_7

    .line 64
    :cond_18
    invoke-virtual {p2, p5, v5}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p2

    .line 65
    invoke-interface {p2}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result v5

    if-eqz v5, :cond_1a

    :cond_19
    :goto_7
    move p2, v3

    goto :goto_8

    .line 66
    :cond_1a
    invoke-interface {p2, v1}, Lcom/android/tools/r8/androidapi/f;->a(Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p2

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/android/tools/r8/androidapi/f;->b(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/internal/t40;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p2

    :goto_8
    if-eqz p2, :cond_1b

    const/4 v3, 0x1

    :cond_1b
    :goto_9
    if-eqz v3, :cond_1c

    .line 67
    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->Z()Lcom/android/tools/r8/graph/A4;

    move-result-object p2

    move-object v2, p2

    .line 68
    :cond_1c
    iget-object p2, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 69
    iget-object p2, p2, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    .line 70
    iget-object p2, p2, Lcom/android/tools/r8/shaking/l;->a:Ljava/util/IdentityHashMap;

    .line 71
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    goto :goto_a

    .line 72
    :cond_1d
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    .line 73
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 74
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 75
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 76
    iget-object v0, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 77
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 78
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {v0, p2, p5}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p2

    .line 79
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p2

    goto/16 :goto_5

    :cond_1e
    :goto_a
    if-eqz v2, :cond_1f

    .line 80
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1

    .line 81
    :cond_1f
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p2

    if-eqz p2, :cond_20

    goto :goto_b

    .line 82
    :cond_20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 83
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 84
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    new-instance v0, Lcom/android/tools/r8/internal/pV0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/pV0;-><init>()V

    .line 85
    invoke-static {p2, p3, p1, p4, v0}, Lcom/android/tools/r8/internal/RV;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 86
    iget-object p2, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1

    :cond_21
    :goto_b
    return-object p5
.end method

.method public final a(Lcom/android/tools/r8/graph/A4;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/internal/m80;)Z
    .locals 1

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A4;->K()Lcom/android/tools/r8/graph/u2;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->w1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->H0()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 10
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/rV0;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/rV0;-><init>(Lcom/android/tools/r8/internal/RV;Lcom/android/tools/r8/graph/Z4$c;)V

    invoke-static {p3, p1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;)Z
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    .line 88
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$c;->c()Lcom/android/tools/r8/graph/G0;

    move-result-object v2

    .line 89
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$c;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 90
    invoke-static {v2, p1, p2, v0, v1}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p1

    return p1
.end method
