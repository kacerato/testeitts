.class public final Lcom/android/tools/r8/internal/mm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mm;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/mm;->b:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->q:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->q:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->q:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->q:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/mm;->a:Lcom/android/tools/r8/graph/y;

    .line 22
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/android/tools/r8/internal/ol1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ol1;-><init>()V

    iget-object v2, p0, Lcom/android/tools/r8/internal/mm;->a:Lcom/android/tools/r8/graph/y;

    .line 25
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/mm;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    filled-new-array {p2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 27
    invoke-virtual {v0, p3, p2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/mm;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->o0:Lcom/android/tools/r8/graph/L2;

    .line 28
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 29
    sget-boolean p3, Lcom/android/tools/r8/internal/mm;->c:Z

    if-nez p3, :cond_1

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Fm;)Lcom/android/tools/r8/graph/E0;
    .locals 9

    .line 46
    sget-boolean v0, Lcom/android/tools/r8/internal/mm;->c:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 47
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    iget-object p2, p0, Lcom/android/tools/r8/internal/mm;->a:Lcom/android/tools/r8/graph/y;

    .line 49
    iget-object p2, p2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 50
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p2

    .line 51
    new-instance v0, Lcom/android/tools/r8/internal/ml1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ml1;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/mm;->a:Lcom/android/tools/r8/graph/y;

    .line 52
    invoke-virtual {p2, v0, p1, v1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1

    .line 53
    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 54
    iget-object v1, p0, Lcom/android/tools/r8/internal/mm;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/android/tools/r8/internal/mm;->a:Lcom/android/tools/r8/graph/y;

    .line 56
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 57
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v3

    .line 58
    new-instance v2, Lcom/android/tools/r8/internal/ul1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ul1;-><init>()V

    .line 59
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object p1

    iget-object v8, p0, Lcom/android/tools/r8/internal/mm;->a:Lcom/android/tools/r8/graph/y;

    new-instance v5, Lcom/android/tools/r8/internal/vl1;

    invoke-direct {v5, p0, v0, v1}, Lcom/android/tools/r8/internal/vl1;-><init>(Lcom/android/tools/r8/internal/mm;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    .line 60
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/tools/r8/internal/wl1;

    invoke-direct {v6, p2}, Lcom/android/tools/r8/internal/wl1;-><init>(Lcom/android/tools/r8/internal/Fm;)V

    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-static {p1}, Lcom/android/tools/r8/synthesis/l;->a(Lcom/android/tools/r8/graph/f0;)Lcom/android/tools/r8/synthesis/l;

    move-result-object v7

    .line 63
    iget-object p1, v3, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 64
    invoke-interface {v2, p1}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v4

    .line 65
    invoke-virtual/range {v3 .. v8}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/S$b;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/I0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 7

    .line 14
    new-instance v6, Lcom/android/tools/r8/internal/s10;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mm;->a:Lcom/android/tools/r8/graph/y;

    .line 15
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/s10;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Ljava/lang/Iterable;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    .line 16
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/s10;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/o9;)V
    .locals 8

    .line 30
    sget-boolean v0, Lcom/android/tools/r8/internal/mm;->c:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 32
    :cond_3
    :goto_1
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 33
    iget-object v2, p0, Lcom/android/tools/r8/internal/mm;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-nez v0, :cond_5

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/mm;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 35
    iget-object v0, v0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 36
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v0, :cond_4

    goto :goto_2

    .line 37
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 38
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v0

    new-instance v3, Lcom/android/tools/r8/internal/pl1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/pl1;-><init>()V

    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object v0

    .line 40
    iget-object v3, p0, Lcom/android/tools/r8/internal/mm;->a:Lcom/android/tools/r8/graph/y;

    .line 41
    iget-object v3, v3, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 42
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v3

    .line 43
    new-instance v4, Lcom/android/tools/r8/internal/ql1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/ql1;-><init>()V

    iget-object v5, p0, Lcom/android/tools/r8/internal/mm;->a:Lcom/android/tools/r8/graph/y;

    new-instance v6, Lcom/android/tools/r8/internal/rl1;

    invoke-direct {v6, p0, v0, v1, v2}, Lcom/android/tools/r8/internal/rl1;-><init>(Lcom/android/tools/r8/internal/mm;Ljava/lang/Iterable;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    .line 44
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/tools/r8/internal/sl1;

    invoke-direct {v7, p2}, Lcom/android/tools/r8/internal/sl1;-><init>(Lcom/android/tools/r8/internal/o9;)V

    move-object v0, v3

    move-object v1, v4

    move-object v2, p1

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 1

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/nl1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/nl1;-><init>()V

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/tools/r8/internal/mm;->a(Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/M;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/p;)V
    .locals 1

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/yl1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/yl1;-><init>(Lcom/android/tools/r8/internal/mm;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    .line 18
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/synthesis/m;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/synthesis/p;

    new-instance v0, Lcom/android/tools/r8/internal/zl1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/internal/zl1;-><init>(Lcom/android/tools/r8/internal/mm;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    .line 19
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/synthesis/m;

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/Iterable;Lcom/android/tools/r8/synthesis/N;)V
    .locals 1

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/tl1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/tools/r8/internal/tl1;-><init>(Lcom/android/tools/r8/internal/mm;Ljava/lang/Iterable;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, p4, p1, p2, v0}, Lcom/android/tools/r8/internal/mm;->a(Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/M;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/M;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/mm;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->o0:Lcom/android/tools/r8/graph/L2;

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/synthesis/N;->a(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/synthesis/N;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/mm;->b:Lcom/android/tools/r8/graph/u1;

    filled-new-array {p2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 4
    invoke-virtual {v0, p3, p2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    .line 5
    iput-object p2, p1, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    const/16 p2, 0x1009

    const/4 p3, 0x0

    .line 6
    invoke-static {p2, p3}, Lcom/android/tools/r8/graph/L4;->a(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    .line 7
    iput-object p2, p1, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 8
    iput-boolean p3, p1, Lcom/android/tools/r8/synthesis/N;->q:Z

    .line 9
    iput-object p4, p1, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/W;)V
    .locals 1

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/Al1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/tools/r8/internal/Al1;-><init>(Lcom/android/tools/r8/internal/mm;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/Iterable;)V

    .line 11
    invoke-virtual {p4, v0}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/synthesis/m;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/synthesis/W;

    new-instance v0, Lcom/android/tools/r8/internal/Bl1;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/android/tools/r8/internal/Bl1;-><init>(Lcom/android/tools/r8/internal/mm;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/Iterable;)V

    .line 12
    invoke-virtual {p4, v0}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/synthesis/m;

    return-void
.end method

.method public final synthetic b(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 7

    .line 3
    new-instance v6, Lcom/android/tools/r8/internal/s10;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mm;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/s10;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Ljava/lang/Iterable;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    .line 5
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/s10;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 1

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/Cl1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Cl1;-><init>()V

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/tools/r8/internal/mm;->a(Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/M;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/p;)V
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/mm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/p;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/Iterable;Lcom/android/tools/r8/synthesis/N;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/xl1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/tools/r8/internal/xl1;-><init>(Lcom/android/tools/r8/internal/mm;Ljava/lang/Iterable;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, p4, p1, p2, v0}, Lcom/android/tools/r8/internal/mm;->a(Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/M;)V

    return-void
.end method

.method public final synthetic b(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/W;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/mm;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/W;)V

    return-void
.end method
