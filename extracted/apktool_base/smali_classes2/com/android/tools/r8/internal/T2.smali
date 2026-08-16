.class public final Lcom/android/tools/r8/internal/T2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/androidapi/a;

.field public final d:Lcom/android/tools/r8/graph/O2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/androidapi/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/T2;->c:Lcom/android/tools/r8/androidapi/a;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {p1}, [Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/graph/O2;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/T2;->d:Lcom/android/tools/r8/graph/O2;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/graph/J2;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W9;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W9;->f()Lcom/android/tools/r8/internal/F9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    return-object p0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W9;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W9;->b()Lcom/android/tools/r8/internal/i9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i9;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0

    .line 51
    :cond_1
    instance-of v0, p0, Lcom/android/tools/r8/internal/V9;

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W9;->i()Lcom/android/tools/r8/internal/V9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/V9;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0

    .line 53
    :cond_2
    instance-of v0, p0, Lcom/android/tools/r8/internal/t9;

    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W9;->c()Lcom/android/tools/r8/internal/t9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/t9;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0

    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ga;->N()Z

    move-result v0

    if-nez v0, :cond_4

    .line 56
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/h1;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    return-object p0
.end method

.method public static a(ZLcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/F9;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 2

    .line 1
    new-instance p4, Lcom/android/tools/r8/internal/Uv;

    invoke-direct {p4}, Lcom/android/tools/r8/internal/Uv;-><init>()V

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/SW0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/SW0;-><init>(Lcom/android/tools/r8/graph/l1;)V

    new-instance v1, Lcom/android/tools/r8/internal/TW0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/TW0;-><init>(Lcom/android/tools/r8/graph/l1;)V

    .line 3
    invoke-virtual {p4, p0, v0, v1}, Lcom/android/tools/r8/internal/Uv;->a(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/Uv;

    move-result-object p0

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->H()Z

    move-result p1

    new-instance p2, Lcom/android/tools/r8/internal/aP0;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/aP0;-><init>()V

    new-instance p4, Lcom/android/tools/r8/internal/bP0;

    invoke-direct {p4}, Lcom/android/tools/r8/internal/bP0;-><init>()V

    .line 5
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/tools/r8/internal/Uv;->a(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/Uv;

    move-result-object p0

    .line 6
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/internal/Uv;->d:Lcom/android/tools/r8/graph/A2;

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Uv;->a()Lcom/android/tools/r8/graph/G;

    move-result-object p0

    return-object p0
.end method

.method public static a(ZLcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    if-eqz p0, :cond_0

    .line 9
    new-instance p0, Lcom/android/tools/r8/internal/cy;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/cy;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 10
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/cy;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/cy;

    move-result-object p0

    .line 11
    iput-object p2, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/cy;->e:Z

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cy;->a()Lcom/android/tools/r8/graph/G;

    move-result-object p0

    return-object p0

    .line 14
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/cy;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/cy;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 15
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/cy;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/cy;

    move-result-object p0

    .line 16
    iput-object p2, p0, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/cy;->e:Z

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cy;->a()Lcom/android/tools/r8/graph/G;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 62
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/h1;

    if-eqz p0, :cond_0

    .line 63
    new-instance p1, Lcom/android/tools/r8/internal/Ws0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Ws0;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 64
    :cond_0
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->w1()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 75
    iget-object p0, p1, Lcom/android/tools/r8/synthesis/S;->U:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0

    .line 76
    :cond_0
    iget-object p0, p1, Lcom/android/tools/r8/synthesis/S;->V:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->D:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/Uv;)V
    .locals 0

    .line 24
    iput-object p0, p1, Lcom/android/tools/r8/internal/Uv;->a:Lcom/android/tools/r8/graph/l1;

    .line 25
    sget-object p0, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    iput-object p0, p1, Lcom/android/tools/r8/internal/Uv;->b:Lcom/android/tools/r8/internal/t40;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/IntConsumer;I)V
    .locals 1

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_0

    .line 23
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_0
    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/h1;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    .line 56
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 57
    iget-object p1, p1, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 58
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/Uv;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lcom/android/tools/r8/internal/Uv;->a:Lcom/android/tools/r8/graph/l1;

    .line 2
    sget-object p0, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    iput-object p0, p1, Lcom/android/tools/r8/internal/Uv;->b:Lcom/android/tools/r8/internal/t40;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H5;
    .locals 10

    .line 65
    invoke-static {p2}, Lcom/android/tools/r8/internal/T2;->a(Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    .line 66
    sget-boolean v1, Lcom/android/tools/r8/internal/T2;->e:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 67
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    .line 68
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 69
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    .line 70
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 71
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 72
    new-instance v2, Lcom/android/tools/r8/internal/VW0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/VW0;-><init>(Lcom/android/tools/r8/graph/E0;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    new-instance v9, Lcom/android/tools/r8/internal/WW0;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p3

    move-object v6, p2

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/tools/r8/internal/WW0;-><init>(Lcom/android/tools/r8/internal/T2;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/H5;)V

    .line 73
    invoke-virtual {v1, v2, p1, v0, v9}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/u2;Ljava/util/function/Function;)Lcom/android/tools/r8/graph/h1;
    .locals 2

    .line 57
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/h1;

    if-eqz v0, :cond_0

    return-object v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    .line 59
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/UW0;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/UW0;-><init>(Ljava/util/function/Function;)V

    .line 60
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/gt0;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->a()Lcom/android/tools/r8/internal/Ws0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ws0;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/h1;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 134
    new-instance v1, Lcom/android/tools/r8/internal/lc;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/tools/r8/internal/lc;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    .line 135
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lc;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 2

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/T2;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    .line 28
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 29
    invoke-interface {v1, v0}, Lcom/android/tools/r8/androidapi/f;->d(Lcom/android/tools/r8/androidapi/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 31
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/QW0;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/android/tools/r8/internal/QW0;-><init>(Lcom/android/tools/r8/internal/T2;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/graph/H5;)V

    .line 32
    invoke-static {v1}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 33
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 6

    move-object v2, p1

    .line 34
    invoke-virtual/range {p10 .. p10}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v1

    .line 35
    sget-boolean v0, Lcom/android/tools/r8/internal/T2;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->I()Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    instance-of v0, v2, Lcom/android/tools/r8/internal/V9;

    if-nez v0, :cond_1

    .line 39
    instance-of v0, v2, Lcom/android/tools/r8/internal/t9;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p12

    move-object v5, p3

    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/T2;->a(Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    move-object v1, p3

    move-object v2, p8

    .line 42
    invoke-interface {p8, v0, p3}, Lcom/android/tools/r8/internal/U2;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 43
    new-instance v1, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    const/16 v2, 0xb8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 44
    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    .line 77
    sget-boolean v0, Lcom/android/tools/r8/graph/L4;->f:Z

    .line 78
    new-instance v0, Lcom/android/tools/r8/graph/K4;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/K4;-><init>()V

    const/4 v1, 0x1

    .line 79
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/f;->a(Z)Lcom/android/tools/r8/graph/f;

    move-result-object v0

    .line 80
    check-cast v0, Lcom/android/tools/r8/graph/K4;

    .line 81
    iget-object v1, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    .line 82
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->z()Lcom/android/tools/r8/graph/g;

    .line 83
    iget-object v1, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->y()V

    .line 84
    iget-object v1, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    check-cast v1, Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L4;->N()Lcom/android/tools/r8/graph/L4;

    .line 85
    iget-object v0, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    .line 86
    check-cast v0, Lcom/android/tools/r8/graph/L4;

    .line 87
    iput-object v0, p5, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 88
    iput-object p1, p5, Lcom/android/tools/r8/synthesis/N;->m:Lcom/android/tools/r8/androidapi/f;

    .line 89
    iput-object p1, p5, Lcom/android/tools/r8/synthesis/N;->n:Lcom/android/tools/r8/androidapi/f;

    .line 90
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p1

    invoke-virtual {p0, p5, p1, p3}, Lcom/android/tools/r8/internal/T2;->a(Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/u1;)V

    return-void

    .line 92
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->F()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->b()Lcom/android/tools/r8/internal/i9;

    move-result-object p1

    invoke-virtual {p0, p5, p1, p3}, Lcom/android/tools/r8/internal/T2;->a(Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/internal/i9;Lcom/android/tools/r8/graph/u1;)V

    return-void

    .line 94
    :cond_1
    instance-of p1, p2, Lcom/android/tools/r8/internal/V9;

    if-eqz p1, :cond_2

    .line 95
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->i()Lcom/android/tools/r8/internal/V9;

    move-result-object p1

    invoke-virtual {p0, p5, p1, p3}, Lcom/android/tools/r8/internal/T2;->a(Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/internal/V9;Lcom/android/tools/r8/graph/u1;)V

    return-void

    .line 96
    :cond_2
    instance-of p1, p2, Lcom/android/tools/r8/internal/t9;

    if-eqz p1, :cond_3

    .line 97
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->c()Lcom/android/tools/r8/internal/t9;

    move-result-object p1

    invoke-virtual {p0, p5, p1, p3}, Lcom/android/tools/r8/internal/T2;->a(Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/internal/t9;Lcom/android/tools/r8/graph/u1;)V

    return-void

    .line 98
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->f()Lcom/android/tools/r8/internal/F9;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p5, p1, p3, p4}, Lcom/android/tools/r8/internal/T2;->a(Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/internal/F9;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/internal/F9;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/H5;)V
    .locals 5

    .line 113
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 115
    sget-boolean v2, Lcom/android/tools/r8/internal/T2;->e:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 116
    :cond_1
    :goto_0
    instance-of v2, p2, Lcom/android/tools/r8/internal/U9;

    if-nez v2, :cond_3

    .line 117
    instance-of v2, p2, Lcom/android/tools/r8/internal/T9;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 118
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->H()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    goto :goto_3

    :cond_4
    iget-object v3, p3, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 119
    :goto_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_5

    .line 120
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->J()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 122
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_6
    invoke-virtual {p3, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/List;)Lcom/android/tools/r8/graph/I2;

    move-result-object p3

    .line 124
    iput-object p3, p1, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    .line 125
    new-instance p3, Lcom/android/tools/r8/internal/OW0;

    invoke-direct {p3, v2, v0, p2, p4}, Lcom/android/tools/r8/internal/OW0;-><init>(ZLcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/F9;Lcom/android/tools/r8/graph/H5;)V

    .line 126
    iput-object p3, p1, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/internal/V9;Lcom/android/tools/r8/graph/u1;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/V9;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    .line 137
    sget-boolean v0, Lcom/android/tools/r8/internal/T2;->e:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 138
    :cond_1
    :goto_0
    iget-object v0, p3, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/T2;->d:Lcom/android/tools/r8/graph/O2;

    .line 139
    invoke-virtual {p3, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p3

    .line 140
    iput-object p3, p1, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    .line 141
    new-instance p3, Lcom/android/tools/r8/internal/NW0;

    invoke-direct {p3, p0, p2}, Lcom/android/tools/r8/internal/NW0;-><init>(Lcom/android/tools/r8/internal/T2;Lcom/android/tools/r8/graph/E0;)V

    .line 142
    iput-object p3, p1, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/u1;)V
    .locals 4

    .line 100
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 102
    sget-boolean v2, Lcom/android/tools/r8/internal/T2;->e:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 103
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->P()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->M()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p2, 0x1

    :goto_2
    if-nez v2, :cond_5

    .line 104
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 105
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result v2

    if-ne v2, p2, :cond_4

    goto :goto_3

    .line 106
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 107
    :cond_5
    :goto_3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_6

    .line 108
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Lcom/android/tools/r8/graph/I2;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    goto :goto_4

    .line 109
    :cond_6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 110
    :goto_4
    iput-object v2, p1, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    .line 111
    new-instance v2, Lcom/android/tools/r8/internal/JW0;

    invoke-direct {v2, p2, p3, v0, v1}, Lcom/android/tools/r8/internal/JW0;-><init>(ZLcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E0;)V

    .line 112
    iput-object v2, p1, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/internal/i9;Lcom/android/tools/r8/graph/u1;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/i9;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    .line 128
    sget-boolean v0, Lcom/android/tools/r8/internal/T2;->e:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 129
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/T2;->d:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {p3, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p3

    .line 130
    iput-object p3, p1, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    .line 131
    new-instance p3, Lcom/android/tools/r8/internal/RW0;

    invoke-direct {p3, p0, p2}, Lcom/android/tools/r8/internal/RW0;-><init>(Lcom/android/tools/r8/internal/T2;Lcom/android/tools/r8/graph/E0;)V

    .line 132
    iput-object p3, p1, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/internal/t9;Lcom/android/tools/r8/graph/u1;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/t9;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    .line 144
    sget-boolean v0, Lcom/android/tools/r8/internal/T2;->e:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 145
    :cond_1
    :goto_0
    iget-object v0, p3, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/tools/r8/graph/M2;

    .line 146
    invoke-virtual {p3, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p3

    .line 147
    iput-object p3, p1, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    .line 148
    new-instance p3, Lcom/android/tools/r8/internal/PW0;

    invoke-direct {p3, p0, p2}, Lcom/android/tools/r8/internal/PW0;-><init>(Lcom/android/tools/r8/internal/T2;Lcom/android/tools/r8/graph/E0;)V

    .line 149
    iput-object p3, p1, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 1

    .line 19
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ca;->a(Ljava/util/function/IntConsumer;)V

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/IW0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/IW0;-><init>(Ljava/util/function/IntConsumer;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/Ca;->b(Ljava/util/function/IntConsumer;)V

    const/16 v0, 0xc0

    .line 21
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    const/16 v0, 0xc1

    .line 22
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/androidapi/f;
    .locals 5

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/KW0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/KW0;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    .line 9
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    return-object p1

    .line 10
    :cond_0
    invoke-static {p2}, Lcom/android/tools/r8/internal/T2;->a(Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_6

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-nez v1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    .line 14
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    return-object p1

    .line 15
    :cond_2
    instance-of v2, v0, Lcom/android/tools/r8/graph/M2;

    if-eqz v2, :cond_3

    .line 16
    iget-object v2, p0, Lcom/android/tools/r8/internal/T2;->c:Lcom/android/tools/r8/androidapi/a;

    .line 17
    sget v3, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v3, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 18
    invoke-virtual {v2, v0, v3}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v2

    .line 19
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/o50;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/o50;

    move-result-object v1

    goto :goto_0

    .line 20
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    .line 21
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J2;->m0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    .line 22
    invoke-static {v2, v3, v1, v4}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/o50;

    move-result-object v1

    .line 23
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/androidapi/f;

    .line 24
    iget-object v3, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    .line 25
    iget-object v3, v3, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 26
    invoke-interface {v3, v2}, Lcom/android/tools/r8/androidapi/f;->d(Lcom/android/tools/r8/androidapi/f;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 27
    invoke-interface {v2}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 28
    invoke-interface {v2}, Lcom/android/tools/r8/androidapi/f;->F()Lcom/android/tools/r8/androidapi/f$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/androidapi/f$a;->a()Lcom/android/tools/r8/internal/C2;

    move-result-object v3

    sget-object v4, Lcom/android/tools/r8/internal/C2;->k:Lcom/android/tools/r8/internal/C2;

    invoke-interface {v3, v4}, Lcom/android/tools/r8/internal/C40;->e(Lcom/android/tools/r8/internal/C40;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_5

    .line 29
    :cond_4
    invoke-interface {v2}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_5

    .line 30
    :cond_5
    sget-boolean v3, Lcom/android/tools/r8/internal/T2;->e:Z

    if-nez v3, :cond_7

    invoke-interface {v2}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 31
    :cond_7
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/E0;

    if-eqz v1, :cond_e

    .line 32
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_4

    .line 33
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/androidapi/f;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 34
    iget-object p1, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    .line 35
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    return-object p1

    .line 36
    :cond_9
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-nez p1, :cond_d

    .line 37
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->F()Z

    move-result p1

    if-nez p1, :cond_d

    .line 38
    instance-of p1, p2, Lcom/android/tools/r8/internal/V9;

    if-nez p1, :cond_d

    .line 39
    instance-of p1, p2, Lcom/android/tools/r8/internal/t9;

    if-eqz p1, :cond_a

    return-object v2

    .line 40
    :cond_a
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object p1

    .line 41
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 42
    new-instance p2, Lcom/android/tools/r8/internal/LW0;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/LW0;-><init>(Lcom/android/tools/r8/graph/J2;)V

    goto :goto_2

    .line 43
    :cond_b
    new-instance p2, Lcom/android/tools/r8/internal/MW0;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/MW0;-><init>(Lcom/android/tools/r8/graph/J2;)V

    .line 44
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/T2;->a(Lcom/android/tools/r8/graph/u2;Ljava/util/function/Function;)Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->H0()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_3

    .line 46
    :cond_c
    iget-object p1, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    .line 47
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    return-object p1

    :cond_d
    :goto_3
    return-object v2

    :cond_e
    :goto_4
    if-eqz v3, :cond_f

    .line 48
    iget-object p1, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    .line 49
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    return-object p1

    .line 50
    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "When computed a known api level we should always have a library class"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 51
    :cond_10
    :goto_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    .line 52
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    return-object p1

    .line 53
    :cond_11
    :goto_6
    iget-object p1, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    .line 54
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 60
    new-instance v1, Lcom/android/tools/r8/internal/kh;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/tools/r8/internal/kh;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    .line 61
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kh;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/function/IntConsumer;)V
    .locals 1

    const/16 v0, 0xc8

    .line 3
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/T2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/qE;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/tools/r8/internal/qE;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/qE;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method
