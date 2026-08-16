.class public final Lcom/android/tools/r8/internal/T00;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/U00;

.field public final d:Lcom/android/tools/r8/internal/qo0;

.field public final e:Lcom/android/tools/r8/internal/j80;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/tools/r8/internal/V00;->n:I

    new-instance v0, Lcom/android/tools/r8/internal/U00;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/U00;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/T00;->c:Lcom/android/tools/r8/internal/U00;

    iput-object p1, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/T00;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->q:Lcom/android/tools/r8/internal/qo0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/T00;->d:Lcom/android/tools/r8/internal/qo0;

    sget-object p1, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    new-instance p1, Lcom/android/tools/r8/internal/j80;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/j80;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/T00;->e:Lcom/android/tools/r8/internal/j80;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->X:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/cy;)V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/A2;

    .line 78
    iput-object p0, p1, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    const/4 p0, 0x1

    .line 79
    iput-boolean p0, p1, Lcom/android/tools/r8/internal/cy;->e:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;ZLcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/K70;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/K70;

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p3, p0, p1}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/x1;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/H5;)V

    .line 105
    new-instance v0, Lcom/android/tools/r8/internal/AW0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/AW0;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 29
    new-instance v0, Lcom/android/tools/r8/graph/Uc;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Uc;-><init>()V

    invoke-static {v0}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/cy;)V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/A2;

    .line 43
    iput-object p0, p1, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    const/4 p0, 0x0

    .line 44
    iput-boolean p0, p1, Lcom/android/tools/r8/internal/cy;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/H5;
    .locals 5

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 30
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 31
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/T00;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/internal/T00;->b:Lcom/android/tools/r8/graph/u1;

    .line 33
    new-instance v2, Lcom/android/tools/r8/internal/cy;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/cy;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    new-instance v3, Lcom/android/tools/r8/internal/yW0;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/internal/yW0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    new-instance v4, Lcom/android/tools/r8/internal/zW0;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/zW0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    .line 35
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/tools/r8/internal/cy;->a(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/cy;

    move-result-object v0

    .line 36
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/cy;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/cy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/cy;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/WS;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/H5;
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    .line 81
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 82
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/android/tools/r8/internal/BW0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/BW0;-><init>()V

    .line 84
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object p2

    iget-object v2, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    new-instance v3, Lcom/android/tools/r8/internal/CW0;

    invoke-direct {v3, p0, p3, p1}, Lcom/android/tools/r8/internal/CW0;-><init>(Lcom/android/tools/r8/internal/T00;Lcom/android/tools/r8/graph/L4;Lcom/android/tools/r8/graph/H5;)V

    .line 85
    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 6

    .line 87
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->C0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    iput-object v1, p2, Lcom/android/tools/r8/synthesis/N;->h:Lcom/android/tools/r8/graph/A2;

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    .line 93
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    .line 94
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 95
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/T00;->b:Lcom/android/tools/r8/graph/u1;

    const/4 v2, 0x1

    move-object v1, p3

    .line 96
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    .line 97
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p1

    if-nez p1, :cond_2

    .line 98
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    .line 99
    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/i0;ILcom/android/tools/r8/graph/y;)V

    :cond_2
    return-object v0
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 4

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    .line 26
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/xW0;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/xW0;-><init>(Lcom/android/tools/r8/internal/T00;Ljava/util/Map;)V

    iget-object v3, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    .line 27
    invoke-static {v3, v1, v2, p1}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public final a()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    .line 101
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/DW0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/DW0;-><init>(Lcom/android/tools/r8/internal/T00;)V

    .line 102
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/y1;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/shaking/x1;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/L4;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    .line 49
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 50
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 51
    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 52
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->n:Lcom/android/tools/r8/androidapi/f;

    .line 53
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 54
    iget-object p1, p1, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    .line 55
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->m:Lcom/android/tools/r8/androidapi/f;

    .line 56
    iget-object p1, p0, Lcom/android/tools/r8/internal/T00;->b:Lcom/android/tools/r8/graph/u1;

    .line 57
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/graph/I2;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    .line 61
    :goto_0
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    .line 62
    new-instance p1, Lcom/android/tools/r8/internal/rW0;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/rW0;-><init>(Lcom/android/tools/r8/internal/T00;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/synthesis/N;)V

    .line 63
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/graph/H2;Ljava/util/List;)V
    .locals 0

    .line 73
    invoke-virtual/range {p0 .. p5}, Lcom/android/tools/r8/internal/T00;->b(Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/graph/H2;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/shaking/x1;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/tools/r8/internal/T00;->e:Lcom/android/tools/r8/internal/j80;

    new-instance v1, Lcom/android/tools/r8/internal/vW0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/vW0;-><init>(Lcom/android/tools/r8/shaking/x1;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/android/tools/r8/internal/qW0;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/qW0;-><init>(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/T00;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/M70;)V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    .line 66
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/c4;

    move-result-object v2

    .line 67
    new-instance v3, Lcom/android/tools/r8/internal/b80;

    invoke-direct {v3, v1, v2}, Lcom/android/tools/r8/internal/b80;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    .line 68
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/i6;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 69
    invoke-static {v1, v2, v3, p2}, Lcom/android/tools/r8/internal/YX;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Ljava/util/ArrayList;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/j80;

    move-result-object v1

    .line 70
    new-instance v2, Lcom/android/tools/r8/internal/tW0;

    invoke-direct {v2, p0, v1, v0, p3}, Lcom/android/tools/r8/internal/tW0;-><init>(Lcom/android/tools/r8/internal/T00;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/M70;)V

    iget-object p3, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    .line 71
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p3

    .line 72
    invoke-static {p1, v2, p3, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/Tr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/T00;->a(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-static {v1}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/tools/r8/internal/T00;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/M70;)V

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/graph/y;)V

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/J;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/x0;)V

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/T00;->a()V

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/T00;->c:Lcom/android/tools/r8/internal/U00;

    .line 16
    iget-object v0, v0, Lcom/android/tools/r8/internal/U00;->a:Lcom/android/tools/r8/internal/r6;

    .line 17
    iget-object v0, v0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 18
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/T00;->c:Lcom/android/tools/r8/internal/U00;

    iget-object v1, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    new-instance v2, Lcom/android/tools/r8/internal/V00;

    iget-object v0, v0, Lcom/android/tools/r8/internal/U00;->a:Lcom/android/tools/r8/internal/r6;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/internal/V00;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/r6;)V

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v1

    invoke-virtual {v0, v2, v1, p1, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/g3;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/internal/T00;->d:Lcom/android/tools/r8/internal/qo0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/qo0;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v0, Lu/P0;

    invoke-direct {v0}, Lu/P0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/wW0;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/wW0;-><init>(Lcom/android/tools/r8/internal/T00;Ljava/util/function/Consumer;)V

    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/internal/T00;->d:Lcom/android/tools/r8/internal/qo0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/m1;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->i1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/android/tools/r8/internal/S00;

    iget-object v1, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    .line 44
    invoke-direct {v0, p0, v1, p2}, Lcom/android/tools/r8/internal/S00;-><init>(Lcom/android/tools/r8/internal/T00;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    .line 45
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    .line 46
    iget-object v0, v0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/graph/H2;Ljava/util/List;)V
    .locals 9

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 6
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Df;

    move-result-object v2

    .line 7
    sget-boolean v3, Lcom/android/tools/r8/internal/T00;->f:Z

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    goto :goto_4

    .line 9
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    if-nez v3, :cond_6

    .line 11
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    .line 13
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_6
    :goto_2
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 15
    iget-object v3, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_3
    move v3, v5

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_8

    .line 17
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v4

    .line 18
    new-instance v6, Lcom/android/tools/r8/graph/L4;

    .line 19
    iget v7, v4, Lcom/android/tools/r8/graph/g;->b:I

    .line 20
    iget v4, v4, Lcom/android/tools/r8/graph/g;->c:I

    invoke-direct {v6, v7, v4}, Lcom/android/tools/r8/graph/L4;-><init>(II)V

    .line 21
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/g;->r()Lcom/android/tools/r8/graph/g;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/L4;

    .line 22
    iget v6, v4, Lcom/android/tools/r8/graph/g;->c:I

    or-int/lit8 v6, v6, 0x8

    .line 23
    iput v6, v4, Lcom/android/tools/r8/graph/g;->c:I

    .line 24
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/L4;->s()Lcom/android/tools/r8/graph/g;

    move-result-object v4

    .line 25
    check-cast v4, Lcom/android/tools/r8/graph/L4;

    .line 26
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/tools/r8/internal/T00;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    .line 27
    iget-object v4, p0, Lcom/android/tools/r8/internal/T00;->c:Lcom/android/tools/r8/internal/U00;

    monitor-enter v4

    .line 28
    :try_start_0
    iget-object v6, v4, Lcom/android/tools/r8/internal/U00;->a:Lcom/android/tools/r8/internal/r6;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/A2;

    .line 29
    iget-object v6, v6, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 30
    invoke-virtual {v6, v7, v8, v5}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 31
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catchall_0
    move-exception p1

    .line 33
    monitor-exit v4

    throw p1

    .line 34
    :cond_8
    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/T00;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    .line 35
    :goto_6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    new-instance v5, Lcom/android/tools/r8/internal/uW0;

    invoke-direct {v5, v2, v3, v1}, Lcom/android/tools/r8/internal/uW0;-><init>(Lcom/android/tools/r8/graph/H5;ZLcom/android/tools/r8/graph/H5;)V

    .line 36
    invoke-virtual {p3, v4, v5}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    .line 37
    iget-object v1, p0, Lcom/android/tools/r8/internal/T00;->e:Lcom/android/tools/r8/internal/j80;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    goto/16 :goto_0

    .line 38
    :cond_9
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    return-void

    .line 40
    :cond_a
    iget-object p2, p1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/Set;)V

    .line 41
    sget-object p2, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object p2, p1, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    return-void
.end method

.method public final b(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/T00;->d:Lcom/android/tools/r8/internal/qo0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qo0;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/T00;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->E()Lcom/android/tools/r8/internal/po0;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/po0;->a:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/sW0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/sW0;-><init>(Lcom/android/tools/r8/internal/T00;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    const-string p1, "NonStartupInStartupOutliner"

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    :cond_0
    return-void
.end method
