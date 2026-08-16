.class public final Lcom/android/tools/r8/internal/j5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/m5;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/j5;->b:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/m5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/m5;-><init>(Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/graph/u1;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/j5;->c:Lcom/android/tools/r8/internal/m5;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->x:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/A2;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/j5;->c:Lcom/android/tools/r8/internal/m5;

    iget-object v1, p0, Lcom/android/tools/r8/internal/j5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/tools/r8/internal/m5;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/A2;
    .locals 6

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/j5;->c:Lcom/android/tools/r8/internal/m5;

    iget-object v1, p0, Lcom/android/tools/r8/internal/j5;->b:Lcom/android/tools/r8/graph/y;

    .line 24
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/vd1;

    invoke-direct {v5, p4}, Lcom/android/tools/r8/internal/vd1;-><init>(Lcom/android/tools/r8/internal/Df;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 25
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/m5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/l5;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 27
    new-instance v0, Lcom/android/tools/r8/internal/kf1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/kf1;-><init>(Lcom/android/tools/r8/internal/j5;Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/A2;)V

    .line 28
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 29
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Z)Lcom/android/tools/r8/internal/am;
    .locals 3

    if-eqz p3, :cond_2

    .line 8
    iget-object p3, p0, Lcom/android/tools/r8/internal/j5;->b:Lcom/android/tools/r8/graph/y;

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 10
    sget-boolean v1, Lcom/android/tools/r8/internal/m5;->e:Z

    .line 11
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v1

    .line 12
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v2

    invoke-virtual {v1, p1, v0, p3, v2}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object p3

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, v0, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 15
    instance-of p3, v1, Lcom/android/tools/r8/graph/A4;

    if-eqz p3, :cond_1

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/j5;->c:Lcom/android/tools/r8/internal/m5;

    .line 18
    iget-object v0, v0, Lcom/android/tools/r8/internal/m5;->d:Lcom/android/tools/r8/internal/QC;

    .line 19
    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/mf1;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/tools/r8/internal/mf1;-><init>(Lcom/android/tools/r8/internal/j5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/j5;->a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 21
    :cond_1
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 22
    :cond_2
    new-instance p3, Lcom/android/tools/r8/internal/nf1;

    invoke-direct {p3, p0, p2}, Lcom/android/tools/r8/internal/nf1;-><init>(Lcom/android/tools/r8/internal/j5;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/internal/j5;->a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 1

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->O()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/j5;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1
.end method

.method public final a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 30
    invoke-interface {p1, p7, p9}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 31
    sget-boolean p3, Lcom/android/tools/r8/internal/j5;->d:Z

    if-nez p3, :cond_1

    iget-object p4, p0, Lcom/android/tools/r8/internal/j5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p3, :cond_3

    .line 32
    iget-object p3, p0, Lcom/android/tools/r8/internal/j5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 33
    :cond_3
    :goto_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object p4, p0, Lcom/android/tools/r8/internal/j5;->b:Lcom/android/tools/r8/graph/y;

    .line 35
    iget-object p4, p4, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 36
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p4

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_4

    .line 38
    new-instance p4, Lcom/android/tools/r8/internal/ga;

    const/16 p6, 0xb8

    invoke-direct {p4, p6, p1, p5}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 39
    :cond_4
    new-instance p4, Lcom/android/tools/r8/internal/ga;

    const/16 p6, 0xb6

    invoke-direct {p4, p6, p1, p5}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result p1

    if-nez p1, :cond_5

    .line 42
    new-instance p1, Lcom/android/tools/r8/internal/kb;

    sget-object p2, Lcom/android/tools/r8/internal/kb$a;->c:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p3
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 1

    const/16 v0, 0xb6

    .line 1
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    const/16 v0, 0xb7

    .line 2
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    const/16 v0, 0xb9

    .line 3
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/j5;->b:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/lf1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/lf1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/j5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->x0:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/j5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    :cond_2
    sget-boolean v1, Lcom/android/tools/r8/internal/j5;->d:Z

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->s()Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->s()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/j5;->c:Lcom/android/tools/r8/internal/m5;

    iget-object v1, v1, Lcom/android/tools/r8/internal/m5;->c:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/ga;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/tools/r8/internal/j5;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Z)Lcom/android/tools/r8/internal/am;

    move-result-object p1

    return-object p1

    :cond_5
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    :cond_6
    :goto_1
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1
.end method
