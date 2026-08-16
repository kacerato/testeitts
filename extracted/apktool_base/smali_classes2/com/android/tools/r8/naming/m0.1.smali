.class public Lcom/android/tools/r8/naming/m0;
.super Lcom/android/tools/r8/naming/h0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/naming/W;


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/graph/y;

.field public final f:Lcom/android/tools/r8/graph/u1;

.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/shaking/o3;->z:Lcom/android/tools/r8/internal/hC;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/naming/h0;-><init>(Lcom/android/tools/r8/internal/hC;Z)V

    iput-object p1, p0, Lcom/android/tools/r8/naming/m0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/naming/m0;->f:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zm;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/tools/r8/naming/m0;->g:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/F0;)Lcom/android/tools/r8/graph/L2;
    .locals 2

    .line 48
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v1, p0, Lcom/android/tools/r8/naming/m0;->e:Lcom/android/tools/r8/graph/y;

    .line 50
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/naming/m0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->b(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/naming/A;Ljava/util/function/BiPredicate;)Lcom/android/tools/r8/graph/L2;
    .locals 3

    .line 37
    sget-boolean v0, Lcom/android/tools/r8/naming/m0;->h:Z

    if-nez v0, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 39
    invoke-interface {p0, v0}, Lcom/android/tools/r8/naming/W;->a(Lcom/android/tools/r8/graph/E0;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 41
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/m0;->f:Lcom/android/tools/r8/graph/u1;

    sget-object v1, Lcom/android/tools/r8/internal/zq0;->a:[C

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/naming/h0;->a([CLcom/android/tools/r8/naming/L;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 47
    invoke-interface {p3, v0, p1}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/L2;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/tools/r8/naming/W;->a(Lcom/android/tools/r8/graph/E0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/naming/m0;->h:Z

    if-nez v0, :cond_2

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/graph/H5;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v1

    if-nez v1, :cond_5

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 11
    iget v1, v1, Lcom/android/tools/r8/graph/g;->c:I

    .line 12
    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v1

    if-nez v1, :cond_5

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/naming/m0;->e:Lcom/android/tools/r8/graph/y;

    .line 14
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/naming/m0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->b(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    iget-boolean v0, p0, Lcom/android/tools/r8/naming/m0;->g:Z

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/naming/m0;->e:Lcom/android/tools/r8/graph/y;

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/I2;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1

    .line 23
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/a0;Ljava/util/function/BiPredicate;)Lcom/android/tools/r8/graph/L2;
    .locals 3

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    instance-of v0, p1, Lcom/android/tools/r8/graph/H5;

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/naming/m0;->h:Z

    if-nez v0, :cond_2

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/tools/r8/naming/W;->a(Lcom/android/tools/r8/graph/E0;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 30
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/m0;->f:Lcom/android/tools/r8/graph/u1;

    sget-object v1, Lcom/android/tools/r8/internal/zq0;->a:[C

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/naming/h0;->a([CLcom/android/tools/r8/naming/L;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p3, v0, v1}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/graph/E0;)Z
    .locals 0

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    return p1
.end method
