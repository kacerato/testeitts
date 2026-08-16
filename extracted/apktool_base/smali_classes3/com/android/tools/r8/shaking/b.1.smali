.class public final Lcom/android/tools/r8/shaking/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/lZ;

.field public final c:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/lZ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/b;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/b;->b:Lcom/android/tools/r8/internal/lZ;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/b;->c:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/b;->b:Lcom/android/tools/r8/internal/lZ;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/b;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/R00;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/R2;)Lcom/android/tools/r8/graph/R2;
    .locals 4

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    instance-of v0, p1, Lcom/android/tools/r8/graph/R2$b;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/android/tools/r8/shaking/Mb;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/Mb;-><init>(Lcom/android/tools/r8/shaking/b;)V

    sget-object v2, Lcom/android/tools/r8/graph/R2;->b:[Lcom/android/tools/r8/graph/R2;

    .line 23
    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Function;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/graph/R2;

    if-eq v1, v0, :cond_2

    .line 24
    new-instance p1, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    return-object p1

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->H0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->m0()Lcom/android/tools/r8/graph/R2$a;

    move-result-object v0

    .line 27
    iget-object v1, v0, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    .line 28
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/b;->a(Lcom/android/tools/r8/graph/e1;)Lcom/android/tools/r8/graph/e1;

    move-result-object v1

    .line 29
    iget-object v0, v0, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 30
    :cond_1
    new-instance p1, Lcom/android/tools/r8/graph/R2$a;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/graph/R2$a;-><init>(Lcom/android/tools/r8/graph/e1;)V

    return-object p1

    .line 31
    :cond_2
    instance-of v0, p1, Lcom/android/tools/r8/graph/Q2;

    if-eqz v0, :cond_3

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->l0()Lcom/android/tools/r8/graph/Q2;

    move-result-object v0

    .line 33
    iget-object v1, v0, Lcom/android/tools/r8/graph/Q2;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v1, Lcom/android/tools/r8/graph/J2;

    .line 34
    iget-object v2, p0, Lcom/android/tools/r8/shaking/b;->b:Lcom/android/tools/r8/internal/lZ;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/b;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/J2;

    move-result-object v2

    if-eq v1, v2, :cond_8

    .line 35
    new-instance p1, Lcom/android/tools/r8/graph/Q2;

    .line 36
    iget-object v0, v0, Lcom/android/tools/r8/graph/Q2;->e:Lcom/android/tools/r8/internal/ZY;

    .line 37
    invoke-direct {p1, v2, v0}, Lcom/android/tools/r8/graph/Q2;-><init>(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    return-object p1

    .line 38
    :cond_3
    instance-of v0, p1, Lcom/android/tools/r8/graph/T2;

    if-eqz v0, :cond_4

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->t0()Lcom/android/tools/r8/graph/T2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/T2;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    .line 40
    iget-object v1, p0, Lcom/android/tools/r8/shaking/b;->b:Lcom/android/tools/r8/internal/lZ;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/b;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    if-eq v0, v1, :cond_8

    .line 41
    new-instance p1, Lcom/android/tools/r8/graph/T2;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/graph/T2;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object p1

    .line 42
    :cond_4
    instance-of v0, p1, Lcom/android/tools/r8/graph/U2;

    if-nez v0, :cond_c

    .line 43
    instance-of v0, p1, Lcom/android/tools/r8/graph/W2;

    if-nez v0, :cond_b

    .line 44
    instance-of v0, p1, Lcom/android/tools/r8/graph/X2;

    if-nez v0, :cond_a

    .line 45
    instance-of v0, p1, Lcom/android/tools/r8/graph/Y2;

    if-nez v0, :cond_9

    .line 46
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->R0()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 47
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->S0()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/R2$l;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 49
    iget-object v1, p0, Lcom/android/tools/r8/shaking/b;->b:Lcom/android/tools/r8/internal/lZ;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/b;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/R00;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-eq v1, v0, :cond_8

    .line 50
    new-instance p1, Lcom/android/tools/r8/graph/R2$l;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/graph/R2$l;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-object p1

    .line 51
    :cond_6
    sget-boolean v0, Lcom/android/tools/r8/shaking/b;->d:Z

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->T0()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_0
    return-object p1

    .line 52
    :cond_9
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Unexpected method type in annotation"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_a
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Unexpected method handle in annotation"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_b
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Unexpected method in annotation"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_c
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Unexpected field in annotation"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/e1;)Lcom/android/tools/r8/graph/e1;
    .locals 2

    .line 14
    new-instance v0, Lcom/android/tools/r8/shaking/Sb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/Sb;-><init>(Lcom/android/tools/r8/shaking/b;)V

    new-instance v1, Lcom/android/tools/r8/shaking/Tb;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/Tb;-><init>(Lcom/android/tools/r8/shaking/b;)V

    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/e1;->a(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/tools/r8/graph/e1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/graph/r0;
    .locals 1

    .line 13
    new-instance v0, Lcom/android/tools/r8/shaking/Qb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/Qb;-><init>(Lcom/android/tools/r8/shaking/b;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/r0;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/r0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/p0;)Lcom/android/tools/r8/graph/r0;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/b;->a(Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/graph/r0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/t0;)Lcom/android/tools/r8/graph/t0;
    .locals 2

    .line 16
    iget-object v0, p1, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/b;->a(Lcom/android/tools/r8/graph/R2;)Lcom/android/tools/r8/graph/R2;

    move-result-object v0

    .line 17
    iget-object v1, p1, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    if-eq v0, v1, :cond_0

    .line 18
    new-instance v1, Lcom/android/tools/r8/graph/t0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    return-object v1

    :cond_0
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/Nb;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/Nb;-><init>(Lcom/android/tools/r8/shaking/b;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u0;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    .line 5
    iput-object v0, p1, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    .line 6
    new-instance v0, Lcom/android/tools/r8/shaking/Ob;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/Ob;-><init>(Lcom/android/tools/r8/shaking/b;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->g(Ljava/util/function/Consumer;)V

    .line 7
    new-instance v0, Lcom/android/tools/r8/shaking/Pb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/Pb;-><init>(Lcom/android/tools/r8/shaking/b;)V

    .line 8
    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;)V
    .locals 2

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/Nb;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/Nb;-><init>(Lcom/android/tools/r8/shaking/b;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u0;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    .line 12
    iput-object v0, p1, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 9
    new-instance v0, Lcom/android/tools/r8/shaking/Lb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/Lb;-><init>(Lcom/android/tools/r8/shaking/b;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/j1;->a(Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public final a(Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/shaking/Rb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/Rb;-><init>(Lcom/android/tools/r8/shaking/b;)V

    iget-object v1, p0, Lcom/android/tools/r8/shaking/b;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-static {v1, p1, v0, p2}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
