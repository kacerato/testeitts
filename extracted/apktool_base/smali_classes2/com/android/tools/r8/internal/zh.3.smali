.class public final Lcom/android/tools/r8/internal/zh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/zh;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/zh;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->w:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Ljava/util/Map;
    .locals 0

    .line 50
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 4

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    instance-of v0, p2, Lcom/android/tools/r8/internal/u9;

    if-nez v0, :cond_0

    .line 12
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->d()Lcom/android/tools/r8/internal/u9;

    move-result-object v0

    .line 14
    iget-object v1, v0, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    .line 15
    iget-object v1, v1, Lcom/android/tools/r8/internal/Ah;->f:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 17
    const-string p2, "Unsupported dynamic constant (has arguments to bootstrap method)"

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zh;->b(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 18
    :cond_1
    iget-object v1, v0, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    .line 19
    iget-object v1, v1, Lcom/android/tools/r8/internal/Ah;->e:Lcom/android/tools/r8/graph/C2;

    .line 20
    iget-object v1, v1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 21
    const-string p2, "Unsupported dynamic constant (not invoke static)"

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zh;->b(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 22
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/zh;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 23
    iget-object v0, v0, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    .line 24
    iget-object v0, v0, Lcom/android/tools/r8/internal/Ah;->e:Lcom/android/tools/r8/graph/C2;

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 27
    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->R5:Lcom/android/tools/r8/graph/M2;

    if-ne v2, v3, :cond_3

    .line 28
    const-string p2, "Unsupported dynamic constant (runtime provided bootstrap method)"

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zh;->b(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 29
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-eq v2, v3, :cond_4

    .line 30
    const-string p2, "Unsupported dynamic constant (different owner)"

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zh;->b(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 31
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->N1:Lcom/android/tools/r8/graph/M2;

    if-eq v2, v3, :cond_5

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v2, v3, :cond_5

    .line 33
    const-string p2, "Unsupported dynamic constant (unsupported constant type)"

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zh;->b(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 34
    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    .line 35
    const-string p2, "Unsupported dynamic constant (unsupported signature)"

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zh;->b(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 36
    :cond_6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/O2;->j(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->T5:Lcom/android/tools/r8/graph/M2;

    if-eq v2, v3, :cond_7

    .line 37
    const-string p2, "Unsupported dynamic constant (unexpected type of first argument to bootstrap method"

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zh;->b(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 38
    :cond_7
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/O2;->j(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    if-eq v2, v3, :cond_8

    .line 39
    const-string p2, "Unsupported dynamic constant (unexpected type of second argument to bootstrap method"

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zh;->b(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 40
    :cond_8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/O2;->j(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    if-eq v0, v1, :cond_9

    .line 41
    const-string p2, "Unsupported dynamic constant (unexpected type of third argument to bootstrap method"

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zh;->b(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 42
    :cond_9
    new-instance p1, Lcom/android/tools/r8/internal/bF1;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/bF1;-><init>(Lcom/android/tools/r8/internal/zh;Lcom/android/tools/r8/internal/W9;)V

    .line 43
    invoke-static {p1}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 44
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/u9;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ea;)Lcom/android/tools/r8/internal/xh;
    .locals 5

    .line 51
    new-instance v0, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/android/tools/r8/internal/zh;->b:Lcom/android/tools/r8/graph/y;

    .line 53
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 54
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 55
    new-instance v2, Lcom/android/tools/r8/internal/cF1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/cF1;-><init>()V

    .line 56
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object p3

    iget-object v3, p0, Lcom/android/tools/r8/internal/zh;->b:Lcom/android/tools/r8/graph/y;

    new-instance v4, Lcom/android/tools/r8/internal/dF1;

    invoke-direct {v4, p0, v0, p2, p1}, Lcom/android/tools/r8/internal/dF1;-><init>(Lcom/android/tools/r8/internal/zh;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/u9;)V

    .line 57
    invoke-virtual {v1, v2, p3, v3, v4}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 58
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/xh;

    .line 59
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    sget-boolean v0, Lcom/android/tools/r8/internal/xh;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p3, Lcom/android/tools/r8/internal/xh;->h:Lcom/android/tools/r8/graph/H2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 61
    :cond_1
    :goto_0
    iput-object p1, p3, Lcom/android/tools/r8/internal/xh;->h:Lcom/android/tools/r8/graph/H2;

    .line 62
    invoke-interface {p4, p3, p2}, Lcom/android/tools/r8/internal/yh;->a(Lcom/android/tools/r8/internal/xh;Lcom/android/tools/r8/graph/H5;)V

    return-object p3
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->d()Lcom/android/tools/r8/internal/u9;

    move-result-object p1

    .line 46
    invoke-virtual {p0, p1, p7, p8, p6}, Lcom/android/tools/r8/internal/zh;->b(Lcom/android/tools/r8/internal/u9;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ea;)Lcom/android/tools/r8/internal/xh;

    move-result-object p2

    .line 47
    invoke-virtual {p2, p1, p6, p8}, Lcom/android/tools/r8/internal/xh;->a(Lcom/android/tools/r8/internal/u9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/Sm0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V
    .locals 1

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W9;

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/zh;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/am;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/zh;->b:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 5
    new-instance v1, Lcom/android/tools/r8/errors/ConstantDynamicDesugarDiagnostic;

    .line 6
    iget-object v2, p1, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 7
    iget-object v2, v2, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 8
    invoke-static {p1}, Lcom/android/tools/r8/position/MethodPosition;->create(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/position/MethodPosition;

    move-result-object p1

    invoke-direct {v1, v2, p1, p2}, Lcom/android/tools/r8/errors/ConstantDynamicDesugarDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/u9;Lcom/android/tools/r8/synthesis/W;)V
    .locals 2

    .line 64
    new-instance v0, Lcom/android/tools/r8/internal/xh;

    iget-object v1, p0, Lcom/android/tools/r8/internal/zh;->b:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, p4, v1, p2, p3}, Lcom/android/tools/r8/internal/xh;-><init>(Lcom/android/tools/r8/synthesis/W;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/u9;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/aF1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/aF1;-><init>(Lcom/android/tools/r8/internal/zh;Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Yl;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Yl;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Yl;->a(Lcom/android/tools/r8/internal/Zl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2
.end method

.method public final b(Lcom/android/tools/r8/internal/u9;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ea;)Lcom/android/tools/r8/internal/xh;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/zh;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/ZE1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ZE1;-><init>()V

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 8
    iget-object v1, p1, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xh;

    if-nez v1, :cond_1

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xh;

    if-nez v1, :cond_0

    .line 13
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/zh;->a(Lcom/android/tools/r8/internal/u9;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ea;)Lcom/android/tools/r8/internal/xh;

    move-result-object v1

    .line 14
    iget-object p1, p1, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    .line 15
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object v1
.end method

.method public final b(Ljava/util/function/IntConsumer;)V
    .locals 1

    const/16 v0, 0xce

    .line 4
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method
